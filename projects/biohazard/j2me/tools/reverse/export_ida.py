# Executed inside IDA-CLI, not a standalone Python program.
import ida_auto, ida_bytes, ida_funcs, ida_hexrays, ida_ida, ida_loader, ida_name, idautils, idc
from pathlib import Path
import json, struct
# IDA-CLI may execute source text without __file__; its analysis input lives in docs/reverse/.
script_path=globals().get('__file__')
root=Path(script_path).resolve().parents[3] if script_path else Path(idc.get_input_file_path()).resolve().parents[2]
out=root/'docs/reverse/decompiled';out.mkdir(exist_ok=True)
raw=(root/'j2me/build/extracted/game-arm.bin').read_bytes()
# The image is ARM32; function addresses are image-relative, not runtime load addresses.
for ea in range(0,len(raw)-4,4):
    opcode=struct.unpack_from('<I',raw,ea)[0]
    if opcode & 0xffff4000 == 0xe92d4000 and ida_funcs.get_func(ea) is None:
        ida_funcs.add_func(ea)
ida_auto.auto_wait()
hexrays=ida_hexrays.init_hexrays_plugin()
index=[]
for ea in idautils.Functions():
    f=ida_funcs.get_func(ea)
    entry={'address':ea,'hex':hex(ea),'end':f.end_ea,'size':f.end_ea-ea,'name':ida_name.get_name(ea),
           'callers':sorted(set(ida_funcs.get_func(x.frm).start_ea for x in idautils.XrefsTo(ea) if ida_funcs.get_func(x.frm)))}
    asm='\n'.join('%08x  %s'%(a,idc.generate_disasm_line(a,0)) for a in idautils.FuncItems(ea))
    (out/('%08x.asm'%ea)).write_text(asm+'\n')
    try:
        c=ida_hexrays.decompile(ea) if hexrays else None
        (out/('%08x.c'%ea)).write_text(str(c)+'\n')
        entry['decompiled']=c is not None
    except Exception as ex:entry['error']=str(ex)
    index.append(entry)
(root/'docs/reverse/functions.json').write_text(json.dumps(index,indent=2)+'\n')
strings=[]
for s in idautils.Strings():strings.append({'address':s.ea,'text':str(s),'refs':[x.frm for x in idautils.XrefsTo(s.ea)]})
(root/'docs/reverse/strings.json').write_text(json.dumps(strings,indent=2)+'\n')
ida_loader.save_database(str(root/'docs/reverse/game-analysis.i64'),0)
__result__={'functions':len(index),'decompiled':sum(bool(x.get('decompiled')) for x in index),'hexrays':hexrays}
