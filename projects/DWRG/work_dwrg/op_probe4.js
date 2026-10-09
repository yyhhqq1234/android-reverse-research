try {
  send({f: typeof Module.enumerateExportsSync});
  var e = Module.enumerateExportsSync("libc.so");
  send({n: e.length, s0: e.length ? e[0].name : "none"});
} catch (e) { send({err: String(e)}); }
