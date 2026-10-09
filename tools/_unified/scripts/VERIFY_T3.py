import json, pathlib, sys
WD = pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg")
S = WD/"formal_core_script"
ok=True
def check(n,c,d=""):
    global ok; print(("PASS " if c else "FAIL ")+n+(" | "+str(d) if d else "")); 
    if not c: ok=False
# bundle script
B=WD/"formal_offline-bundle"
check("bundle_script1_apk",(B/"script"/"script1_apk.wpk").stat().st_size==201326608,"201326608")
check("bundle_script1_device",(B/"script"/"script1_device.wpk").stat().st_size==137363472,"137363472")
check("bundle_idx",(B/"script"/"script_device.idx").stat().st_size==252900,"252900")
# nxs
NXS=WD/"formal_core_nxs"
check("nxs_blobs_4",all((NXS/f"guide_n4_e{i}.nxs3").exists() for i in range(4)),"294/791/295/295")
check("nxs_key112_e0",(NXS/"guide_n4_e0.nxs3").stat().st_size==294,"key112 via len-20-zi")
# opcode v1
OPC=WD/"formal_core_opcode"
v1=json.loads((OPC/"opcode_newmap.json").read_text(encoding="utf-8"))
check("opcode_v1_anchors",v1["anchors"]=={"0":151,"3":83},"0->151 3->83")
# lib589
check("lib589_verify",(S/"lib589_verify.txt").exists(),"t3_lib589_verify")
check("lib589_index",json.loads((S/"lib589_index.json").read_text(encoding="utf-8"))["n"]==589,"589")
# fullmap v2
fm=json.loads((S/"opcode_fullmap.json").read_text(encoding="utf-8"))
check("fullmap_256",len(fm["slots"])==256,"256 slots")
check("fullmap_high2",sum(1 for v in fm["slots"].values() if v["conf"]=="HIGH")==2,"HIGH2")
check("fullmap_unknown254",sum(1 for v in fm["slots"].values() if v["conf"]=="UNKNOWN")==254,"UNKNOWN254")
check("fullmap_verify",(S/"fullmap_verify.txt").exists(),"1:1+hasjrel")
# dump gate
dg=json.loads((S/"dump_gate.json").read_text(encoding="utf-8"))
check("dump_static_ready",dg["static_ready"]==True,"static_ready")
check("dump_hook",(S/"dump_hook_spec.js").exists(),"frida模板")
check("report",(S/"T3_脚本自洽.md").exists(),"终报")
print("OVERALL","GREEN" if ok else "RED"); sys.exit(0 if ok else 1)
