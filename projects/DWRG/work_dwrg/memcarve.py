import frida, pathlib, time, json

pats = ['kill_civil', 'release_logic', 'WorldManager', 'init_main_unit', 'hang_uid']
hexpats = [' '.join('%02x' % c for c in p.encode()) for p in pats]

js = r"""
var PATS = %s;
var NAMES = %s;
function hexOf(addr, len) {
  var u = new Uint8Array(Memory.readByteArray(addr, len));
  var s = '';
  for (var i = 0; i < u.length; i++) {
    var h = u[i].toString(16);
    if (h.length < 2) h = '0' + h;
    s += h;
  }
  return s;
}
async function main() {
  send('scan-start');
  var ranges;
  try { ranges = await Process.enumerateRanges({protection: 'rw-', coalesce: true}); }
  catch (e) { send('ranges-err ' + e.message); return; }
  send('rw-ranges=' + ranges.length);
  var total = 0;
  outer:
  for (var ri = 0; ri < ranges.length; ri++) {
    var r = ranges[ri];
    if (r.size > 150 * 1024 * 1024) continue;
    for (var pi = 0; pi < PATS.length; pi++) {
      var ms = [];
      try { ms = await Memory.scan(r.base, r.size, PATS[pi]); } catch (e) { continue; }
      for (var mi = 0; mi < ms.length; mi++) {
        if (total >= 20) break outer;
        var a = ms[mi].address;
        var blob = '';
        try { blob = hexOf(a.sub(256), 2048); } catch (e) { blob = 'read-err'; }
        send('hit', {name: NAMES[pi], addr: a.toString(), hex: blob});
        total++;
      }
    }
  }
  send('scan-done total=' + total);
}
main();
""" % (json.dumps(hexpats), json.dumps(pats))

dev = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
proc = dev.attach(4156)
print('attached 4156')
outdir = pathlib.Path(r'memcarve')
outdir.mkdir(exist_ok=True)
hits = []


def on_msg(m, d):
    if m.get('type') == 'send':
        print('[MC] ' + str(m.get('payload'))[:120])
    else:
        p = m.get('payload') or {}
        if isinstance(p, dict) and 'hex' in p:
            fn = outdir / ('%s_%s.bin' % (p['name'], p['addr'].replace('x', '')))
            try:
                fn.write_bytes(bytes.fromhex(p['hex']))
            except Exception as ex:
                print('write-err ' + str(ex))
                return
            print('[MC] saved %s' % fn.name)
            hits.append(fn.name)
        else:
            print('[MC] ' + json.dumps(m, ensure_ascii=False)[:300])


script = proc.create_script(js)
script.on('message', on_msg)
script.load()
print('loaded, waiting 300s')
time.sleep(300)
print('done hits=%d' % len(hits))
