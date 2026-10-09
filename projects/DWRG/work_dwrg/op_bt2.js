var out = {n: 0, hits: []};
try {
  var ths = Process.enumerateThreads();
  out.n = ths.length;
  var re = /reconnect|disconnect|heartbeat|timeout|keepalive|soul|gate|kcp|netservice|relogin|offline|reconnect_fail|active_disconnect/i;
  for (var i = 0; i < ths.length; i++) {
    try {
      var bt = Thread.backtrace(ths[i].context, Backtracer.FUZZY);
      var txt = [];
      for (var j = 0; j < Math.min(bt.length, 12); j++) {
        var s = '?';
        try { var d = DebugSymbol.fromAddress(bt[j]); s = d.name || d.moduleName || String(bt[j]); } catch (e) { s = String(bt[j]); }
        txt.push(s);
      }
      var line = ths[i].id + ':' + (ths[i].name || '') + ' <- ' + txt.join(' | ');
      if (re.test(line)) out.hits.push(line);
    } catch (e) {}
  }
} catch (e) { out.err = String(e).slice(0, 200); }
send(out);
