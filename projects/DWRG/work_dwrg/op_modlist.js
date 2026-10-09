var a = [];
Process.enumerateModules().forEach(function(m) { a.push(m.name); });
var f = a.filter(function(n) { return /client|castor|ngmodule|unisdk|il2cpp|unity|neox|dwrg/i.test(n); });
send({n: a.length, filt: f});
