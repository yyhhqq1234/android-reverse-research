#!/usr/bin/env python3
"""O2 self-check — work_dwrg/offline_bypass/verify_o2.py
gates: bypass table L1-L7+N1-N3+S1, js markers, 5 json valid,
so anchors (continuing-anyway x3 / PluginUniSDK / DRPF_SUCCESS), pcap urls.
exit 0 + `O2-OK ...` on pass, else exit 1 with missing list.
"""
import json, re, sys
from pathlib import Path

WD = Path(__file__).resolve().parents[1]  # work_dwrg
OB = WD / "offline_bypass"
fails = []

def need(cond, msg):
    if not cond: fails.append(msg)

tbl = (OB / "O2_bypass_table.md").read_text(encoding="utf-8", errors="ignore")
for k in ["L1", "L2", "L3", "L4", "L5", "L6", "L7", "N1", "N2", "N3", "S1",
          "continuing", "server_list", "drpf", "unisdk", "PluginUniSDK",
          "loginDone", "Verify", "OrderConsume", "Share", "WebView"]:
    need(k.lower() in tbl.lower(), "table missing " + k)

js = (OB / "offline_bypass.js").read_text(encoding="utf-8", errors="ignore")
for k in ["[L1]", "[L2]", "[L3]", "[L4]", "[L5]", "[L6]", "[L7]",
          "OFFLINE-BYPASS", "127.0.0.1:30801", "loginDone", "onSuccess",
          "onFailure", "ntCheckOrder", "ntConsume", "ntVerifyOrder",
          "onShareFinished", "ntShare", "OnWebViewNativeCall", "ntOpenWebView",
          "protocol.unisdk.netease.com", "h55.drpf", "unisdk.update"]:
    need(k in js, "js missing " + k)

for name in ["server_list.json", "drpf.json", "unisdk_update.json",
             "webview_whitelist.json", "pay.json"]:
    p = OB / "stubs" / name
    need(p.exists(), "stub missing " + name)
    try:
        obj = json.loads(p.read_text(encoding="utf-8"))
        need(isinstance(obj, dict), "stub not dict " + name)
    except Exception as e:
        need(False, "stub json bad %s %s" % (name, e))

need((OB / "stub_server.py").exists(), "stub_server.py missing")
srv = (OB / "stub_server.py").read_text(encoding="utf-8", errors="ignore")
for k in ["30801", "server_list.json", "drpf.json", "unisdk_update.json", "--check"]:
    need(k in srv, "server missing " + k)

# so anchors (formal strings, read-only)
lib = WD / "formal_libclient_strings.txt"
if lib.exists():
    t = lib.read_text(encoding="utf-8", errors="ignore")
    need(t.count("continuing anyway") >= 3, "so continuing-anyway<3")
    need("PluginUniSDK" in t, "so no PluginUniSDK")
    need("DRPF_SUCCESS" in t, "so no DRPF_SUCCESS")
    need("ntCheckOrder" in t and "ntConsume" in t, "so no ntCheck/ntConsume")
else:
    need(False, "formal_libclient_strings.txt missing")

urls = WD / "formal_remote_urls.txt"
if urls.exists():
    u = urls.read_text(encoding="utf-8", errors="ignore")
    for k in ["protocol.unisdk.netease.com", "unisdk.update", "drpf", "gsf"]:
        need(k in u, "urls missing " + k)
else:
    need(False, "formal_remote_urls.txt missing")

if fails:
    print("O2-FAIL")
    for f in fails: print(" - " + f)
    sys.exit(1)
print("O2-OK L1-L7+N1-N3+S1 stubs=5 anchors=so3+urls4")
