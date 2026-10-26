#!/usr/bin/env python3
"""Repository entry point. Each project owns its build/test implementation."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
from toolchain import REPO, load_toolchain, validate_toolchain, java_executable


def projects():
    found = {}
    for path in sorted((REPO / 'projects').glob('*/project.json')):
        data = json.loads(path.read_text(encoding='utf-8'))
        if data['id'] != path.parent.name or data['id'] in found:
            raise SystemExit('Project ID must uniquely match its directory: ' + str(path))
        found[data['id']] = (path.parent, data)
    return found


def inside(base, relative):
    path = (base / relative).resolve()
    if base.resolve() not in path.parents:
        raise SystemExit('Project path escapes its directory: ' + relative)
    return path


def verify_inputs(base, data):
    manifest_path = inside(base, data['originals_manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8'))
    if manifest['algorithm'] != 'sha256':
        raise SystemExit('Unsupported manifest hash algorithm')
    for entry in manifest['files']:
        path = inside(manifest_path.parent, entry['path'])
        raw = path.read_bytes()
        if len(raw) != entry['size'] or hashlib.sha256(raw).hexdigest() != entry['sha256']:
            raise SystemExit('Original input mismatch: ' + str(path))
    print('PASS original inputs: %d files, size + SHA256' % len(manifest['files']), flush=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('action', choices=['list', 'doctor', 'verify-inputs', 'build', 'test'])
    parser.add_argument('project', nargs='?')
    parser.add_argument('--target', default='j2me')
    args = parser.parse_args()
    if args.action == 'doctor':
        config = load_toolchain()
        for name, value in config.items():
            print('%s=%s' % (name, value), flush=True)
        validate_toolchain(config)
        subprocess.run([str(java_executable(config['J2ME_JDK_HOME'], 'java')), '-version'], check=True)
        print('Toolchain files present; the project build verifies CLDC compatibility.')
        return
    available = projects()
    if args.action == 'list':
        for name, (_, data) in available.items():
            print('%s\t%s\t%s\t%s' % (name, data['title'], data['status'], ','.join(data['targets']) or 'no target yet'))
        return
    if args.project not in available:
        parser.error('Choose a project from: ' + ', '.join(available))
    base, data = available[args.project]
    if args.action == 'verify-inputs':
        verify_inputs(base, data)
        return
    target = data['targets'].get(args.target)
    if not target or not target.get('build') or not target.get('test'):
        parser.error('Target build/test not implemented: ' + args.target)
    verify_inputs(base, data)
    # test always builds first, so a fresh checkout needs no generated resources/JARs.
    for action in (['build', 'test'] if args.action == 'test' else ['build']):
        script = inside(base, target[action])
        subprocess.run([sys.executable, str(script)], cwd=script.parent, check=True)
    if args.action == 'build':
        for artifact in target.get('artifacts', []):
            print(inside(base, artifact))


if __name__ == '__main__':
    main()
