#!/usr/bin/env python3
"""O2 offline stub server — work_dwrg/offline_bypass/stub_server.py
serves stubs/*.json on 127.0.0.1:30801 for offline_bypass.js [N1-N3].
stdlib only. `--check` runs routing self-test without binding.
routes mirror F4 pcap fields (host/path) so logs diff cleanly.
"""
import json, sys
from pathlib import Path
from http.server import BaseHTTPRequestHandler, HTTPServer

HERE = Path(__file__).resolve().parent
STUBS = HERE / "stubs"
PORT = 30801

def load(name):
    return json.loads((STUBS / name).read_text(encoding="utf-8"))

ROUTES = [
    ("/api/template/v89/latest.json", "server_list.json"),
    ("/tpsl/android_class", "server_list.json"),
    ("/feature/query.json", "server_list.json"),
    ("/hdserver2", "server_list.json"),
    ("/server_list", "server_list.json"),
    ("/serverlist", "server_list.json"),
    ("/", "drpf.json"),  # h55.drpf / default
    ("/drpf", "drpf.json"),
    ("/Activation", "drpf.json"),
    ("/LoginUI", "drpf.json"),
    ("/upload", "drpf.json"),
    ("/ngdevice/", "unisdk_update.json"),
    ("/release/r1636", "unisdk_update.json"),
    ("/json.ul", "unisdk_update.json"),
    ("/initbox_android_h55.html", "unisdk_update.json"),
    ("/dm0.webview_whitelist.json", "webview_whitelist.json"),
    ("/webview_whitelist.json", "webview_whitelist.json"),
    ("/pay", "pay.json"),
    ("/mpay", "pay.json"),
    ("/epay", "pay.json"),
    ("/order", "pay.json"),
    ("/queryorder", "pay.json"),
    ("/consumeorder", "pay.json"),
    ("/createorder", "pay.json"),
]

def route(path):
    for prefix, stub in ROUTES:
        if path == prefix or path.startswith(prefix):
            # "/" is catch-all: keep it last in matching order by longest-prefix-first
            continue
    # longest-prefix match
    best = None
    for prefix, stub in ROUTES:
        if path == prefix or path.startswith(prefix):
            if best is None or len(prefix) > len(best[0]):
                best = (prefix, stub)
    return best[1] if best else "drpf.json"

class H(BaseHTTPRequestHandler):
    def _send(self, obj):
        body = json.dumps(obj).encode()
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)
    def do_GET(self):
        self._send(load(route(self.path.split("?")[0])))
    def do_POST(self):
        ln = int(self.headers.get("Content-Length", 0) or 0)
        if ln: self.rfile.read(ln)
        self._send(load(route(self.path.split("?")[0])))
    def log_message(self, *a):
        pass

def check():
    assert STUBS.is_dir(), "stubs dir missing"
    for _, stub in ROUTES:
        obj = load(stub)
        assert isinstance(obj, dict), stub
    # spot routes
    assert route("/api/template/v89/latest.json") == "server_list.json"
    assert route("/ngdevice/abc") == "unisdk_update.json"
    assert route("/release/r1636") == "unisdk_update.json"
    assert route("/dm0.webview_whitelist.json") == "webview_whitelist.json"
    assert route("/mpay") == "pay.json"
    assert route("/unknown/path/xyz") == "drpf.json"
    print("STUB-OK routes=%d stubs=5" % len(ROUTES))

if __name__ == "__main__":
    if "--check" in sys.argv:
        check()
    else:
        print("O2 stub on http://127.0.0.1:%d (ctrl-c to stop)" % PORT)
        HTTPServer(("127.0.0.1", PORT), H).serve_forever()
