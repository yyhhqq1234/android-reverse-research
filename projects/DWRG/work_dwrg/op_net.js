var names = ["connect", "sendto", "send", "recvfrom", "recv", "getaddrinfo"];
var found = {};
try {
  var mods = Process.enumerateModulesSync
    ? Process.enumerateModulesSync()
    : Process.enumerateModules();
  send({mods: mods.length});
} catch (e) { send({err1: String(e)}); }
try {
  var exps = Module.enumerateExportsSync
    ? Module.enumerateExportsSync("libc.so")
    : [];
  var keep = [];
  for (var i = 0; i < exps.length; i++) {
    for (var j = 0; j < names.length; j++) {
      if (exps[i].name === names[j]) keep.push(exps[i].name + "@" + exps[i].address);
    }
  }
  send({keep: keep});
} catch (e) { send({err2: String(e)}); }
