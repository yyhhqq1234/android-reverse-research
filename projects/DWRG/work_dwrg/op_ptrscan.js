var out = [];
var ranges = [
  ['0x7f0d26521000', 0x701000],
  ['0x7f0d1c491000', 0x9b29000],
  ['0x7f0d25fbd000', 0x563000]
];
var pat = '6e 75 77 1d 0d 7f 00 00';
for (var i = 0; i < ranges.length; i++) {
  try {
    var res = Memory.scanSync(ptr(ranges[i][0]), ranges[i][1], pat);
    for (var k = 0; k < res.length; k++) out.push(ranges[i][0] + '+' + res[k].address.sub(ptr(ranges[i][0])));
  } catch (e) { out.push('ERR' + i + ':' + String(e).slice(0, 60)); }
}
send({hits: out});
