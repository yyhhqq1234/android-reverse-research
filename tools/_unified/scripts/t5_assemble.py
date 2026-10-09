#!/usr/bin/env python3
# t5_assemble.py — G5 核心组装收口: .py链 World/游戏逻辑+PluginUniSDK锚点 (只读组装, 不解密游戏码)
# 输入: formal_core_动态/ formal_core_wpk/ formal_core_nxs/ formal_core_opcode (T1-T4沿用)
# 输出: chain.txt + world_logic.txt + plugin_unisdk.txt + assembly.json
import json, pathlib
W=pathlib.Path(r"D:\APK-Reverse\projects\DWRG\work_dwrg")
OUT=W/"formal_core_final"
def sz(p): return p.stat().st_size if p.exists() else -1
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    C={}
    # T1 动态
    D=W/"formal_core_动态"
    C["T1"]={"pcap":sz(D/"formal_T1_20260926.pcap"),"hook_js":sz(D/"t1_cloud_thd_order_hook.js"),"urls":sz(D/"t1_hook_urls.txt"),"logcat":sz(D/"t1_logcat.txt")}
    # T2 wpk
    K=W/"formal_core_wpk"
    C["T2"]={"apk_wpk":sz(K/"script1_apk.wpk"),"dev_wpk":sz(K/"script1_device.wpk"),"idx":sz(K/"script_device.idx"),"thd_n":len(list((K/'thd').iterdir())) if (K/'thd').exists() else -1}
    # T3 nxs
    N=W/"formal_core_nxs"
    C["T3"]={"guide":[sz(N/f"guide_n4_e{i}.nxs3") for i in range(4)],"lib_pyc":[sz(N/"dump"/f"lib_e{i}.pyc") for i in (0,1,588)]}
    # T4 opcode
    O=W/"formal_core_opcode"
    C["T4"]={"ceval":sz(O/"ceval_refs.txt"),"newmap":sz(O/"opcode_newmap.json")}
    # World/游戏逻辑链 (preload/pkgmapping/cloud/script映射, 不解密FKPW体)
    import json as J
    pre=J.loads(open(K/"apk_preload.json",encoding="utf-8").read())
    pm=J.loads(open(K/"apk_pkgmapping.json",encoding="utf-8").read())
    cl=J.loads(open(K/"apk_cloud.json",encoding="utf-8").read())
    WL=[f"preload包数={len(pre)} script链={pre.get('script')} (全[0,15] T2沿用)"]
    WL.append(f"pkgmapping default={pm.get('default_pkgname')}/{pm.get('default_depth')} mapping14 script*3: {[m for m in pm['mapping'] if m[1]=='script']}")
    WL.append(f"cloud base={cl['base_url']} ver={cl['version_url']} running={cl['downloader_running_num']}")
    WL.append(f"World链: preload[script]+pkgmapping(script/engine*→script)+cloud(pkgname=script)+script.idx(SKPW)+script1.wpk(FKPW双版) → 游戏逻辑在远端, Lib仅stdlib (F3/F4沿用)")
    WL.append(f"thd={C['T2']['thd_n']}文件 device侧 + res92项*2.wpk增量 (T2 t2_res_list沿用)")
    (OUT/"world_logic.txt").write_text("\n".join(WL)+"\n",encoding="utf-8")
    # PluginUniSDK锚点 (hook js实测)
    t=open(D/"t1_cloud_thd_order_hook.js",encoding="utf-8",errors="ignore").read()
    PL=[f"PluginUniSDK={t.count('PluginUniSDK')} loginDone={t.count('loginDone')} orderCheck={t.count('orderCheck')} Consume={t.count('Consume')} Verify={t.count('Verify')} Share={t.count('Share')} WebView={t.count('WebView')} NativeOn={t.count('NativeOn')}"]
    PL.append("类=com.netease.neox.PluginUniSDK (12dex正式com.netease.dwrg, F2 hook实挂)")
    PL.append("面=loginDone/logoutDone/finishInit/orderCheckDone/orderConsumeDone/ntVerifyOrder/ntShare/onShareFinished/startupDone/continueGame/querySkuDetailsFinished + NativeOn声明")
    PL.append("链=Java Channel/GM(薄胶水, ClientGM=0) → PluginUniSDK → JNI NativeOnLogin/Token → native订单三层(Java/JNI/native+epay/mpay互证, F4沿用)")
    (OUT/"plugin_unisdk.txt").write_text("\n".join(PL)+"\n",encoding="utf-8")
    # .py链总装
    CH=[f"T1动态 formal_core_动态 pcap{C['T1']['pcap']} hook{C['T1']['hook_js']} urls{C['T1']['urls']} logcat{C['T1']['logcat']}"]
    CH.append(f"T2远端 formal_core_wpk apk{C['T2']['apk_wpk']} dev{C['T2']['dev_wpk']} idx{C['T2']['idx']} thd{C['T2']['thd_n']}")
    CH.append(f"T3变体 formal_core_nxs guide{C['T3']['guide']} lib{C['T3']['lib_pyc']}")
    CH.append(f"T4对照 formal_core_opcode ceval{C['T4']['ceval']} newmap{C['T4']['newmap']}")
    CH.append(".py链=t1_cloud_thd_order_hook.js → t2_extract_script1.py/t2_pcap_sll.py → t3_guide_n4.py/t3_script1_fkpw.py/t3_opcode_newtab.py → t4_ceval_extract.py/t4_opcode_map.py/fix_jumps.py → t5_assemble.py (本文件)")
    (OUT/"chain.txt").write_text("\n".join(CH)+"\n",encoding="utf-8")
    C["world"]=WL; C["plugin"]=PL; C["chain"]=CH
    (OUT/"assembly.json").write_text(json.dumps(C,ensure_ascii=False,indent=2),encoding="utf-8")
    print("\n".join(CH)); print("wrote assembly.json + world/plugin/chain")
if __name__=="__main__": main()
