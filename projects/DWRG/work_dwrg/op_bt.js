try {
  var th = Process.enumerateThreadsSync ? Process.enumerateThreadsSync() : [];
  send({nthreads: th.length});
  var out = [];
  for (var i = 0; i < th.length; i++) {
    try {
      var bt = Thread.backtrace(th[i].context, Backtracer.ACCURATE);
      var line = "T" + th[i].id + ":";
      var hit = false;
      for (var j = 0; j < Math.min(bt.length, 14); j++) {
        var s = DebugSymbol.fromAddress(bt[j]);
        var nm = s.name || "";
        if (/reconnect|disconnect|heartbeat|timeout|keepalive|soul|gate|kcp|netservice|relogin|offline/i.test(nm)) {
          line += " [" + j + "]" + (s.moduleName || "?") + "!" + nm;
          hit = true;
        }
      }
      if (hit) out.push(line);
    } catch (e) { /* skip */ }
  }
  if (typeof DebugSymbol === "undefined") {
    var raw = [];
    for (var i = 0; i < th.length; i++) {
      try {
        var bt2 = Thread.backtrace(th[i].context, Backtracer.ACCURATE);
        var r = "T" + th[i].id + ":";
        for (var j = 0; j < Math.min(bt2.length, 6); j++) r += " " + bt2[j].toString();
        raw.push(r);
      } catch (e2) {}
    }
    send({raw: raw});
  }
  send({hits: out, total: out.length});
} catch (e) { send({err: String(e)}); }
