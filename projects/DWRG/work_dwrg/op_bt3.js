var out = {n: 0, lines: []};
try {
  var ths = Process.enumerateThreads();
  out.n = ths.length;
  for (var i = 0; i < ths.length; i++) {
    try {
      var bt = Thread.backtrace(ths[i].context, Backtracer.FUZZY);
      var txt = [];
      for (var j = 0; j < Math.min(bt.length, 16); j++) {
        var s = '?';
        try { var d = DebugSymbol.fromAddress(bt[j]); s = (d.moduleName || '?') + '!' + (d.name || String(bt[j])); } catch (e) { s = String(bt[j]); }
        txt.push(s);
      }
      out.lines.push('T' + ths[i].id + ':' + (ths[i].name || '?') + ' <- ' + txt.join(' | '));
    } catch (e) { out.lines.push('T' + ths[i].id + ':ERR ' + String(e).slice(0, 80)); }
  }
} catch (e) { out.err = String(e).slice(0, 200); }
send(out);
