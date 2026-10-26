"""Shared Java ME toolchain discovery; no packages beyond the Python standard library."""
import json
import os
from pathlib import Path

REPO = Path(__file__).resolve().parents[1]


def load_toolchain():
    config_file = REPO / 'toolchain.local.json'
    config = json.loads(config_file.read_text(encoding='utf-8')) if config_file.exists() else {}
    legacy_jdk = Path('/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home')
    defaults = {
        'J2ME_JDK_HOME': str(legacy_jdk) if legacy_jdk.is_dir() else os.environ.get('JAVA_HOME', str(legacy_jdk)),
        'J2ME_API_HOME': str(Path.home() / 'Downloads/kemnnx64/uei'),
        'PROGUARD_JAR': str(Path.home() / 'Library/Android/sdk/tools/proguard/lib/proguard.jar'),
    }
    result = {}
    for name, fallback in defaults.items():
        value = os.environ.get(name) or config.get(name) or fallback
        path = Path(os.path.expandvars(value)).expanduser()
        result[name] = path.resolve() if path.is_absolute() else (REPO / path).resolve()
    return result


def java_executable(jdk, name):
    return jdk / 'bin' / (name + ('.exe' if os.name == 'nt' else ''))


def validate_toolchain(config, full=True):
    paths = [java_executable(config['J2ME_JDK_HOME'], 'java'), java_executable(config['J2ME_JDK_HOME'], 'javac')]
    if full:
        paths += [config['J2ME_API_HOME'] / 'cldc11.jar', config['J2ME_API_HOME'] / 'midp21.jar', config['PROGUARD_JAR']]
    missing = [str(p) for p in paths if not p.is_file()]
    if missing:
        raise SystemExit('Missing toolchain files:\n  ' + '\n  '.join(missing) + '\nSet environment variables or toolchain.local.json (see toolchain.example.json).')
    return paths
