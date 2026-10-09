// Boot snapshot: who loads what in first seconds (Java loaders + file bytes).
var fd2path = {};
var fcount = 0;
function hook() {
    Java.perform(function () {
        try {
            var IM = Java.use('dalvik.system.InMemoryDexClassLoader');
            IM.$init.overloads.forEach(function (ov) {
                ov.implementation = function () {
                    try {
                        for (var i = 0; i < arguments.length; i++) {
                            try {
                                var bb = arguments[i].duplicate(); bb.position(0);
                                var rem = bb.remaining();
                                if (rem > 1024 && fcount < 25) {
                                    var arr = Java.array('byte', new Array(rem));
                                    bb.get(arr);
                                    var fos = Java.use('java.io.FileOutputStream').$new('/sdcard/dexcap/inmem_' + (fcount++) + '_' + rem + '.bin');
                                    fos.write(arr); fos.close();
                                    send('[cap] inmem ' + rem);
                                }
                            } catch (e) {}
                        }
                    } catch (e) {}
                    return ov.apply(this, arguments);
                };
            });
            send('[hook] IM ok');
        } catch (e) { send('[hook] IM fail'); }
        try {
            var BDL = Java.use('dalvik.system.BaseDexClassLoader');
            BDL.$init.overloads.forEach(function (ov) {
                ov.implementation = function (dexPath) {
                    try { send('[bdcl] dexPath=' + dexPath); } catch (e) {}
                    return ov.apply(this, arguments);
                };
            });
            send('[hook] BDCL ok');
        } catch (e) { send('[hook] BDCL fail'); }
        try {
            var DF = Java.use('dalvik.system.DexFile');
            DF.$init.overloads.forEach(function (ov) {
                ov.implementation = function () {
                    try {
                        var s = '';
                        for (var i = 0; i < arguments.length; i++) s += ' | ' + arguments[i];
                        send('[dexfile] new' + s);
                    } catch (e) {}
                    return ov.apply(this, arguments);
                };
            });
            send('[hook] DF ok');
        } catch (e) { send('[hook] DF fail'); }
        try {
            var SL = Java.use('java.lang.System');
            SL.loadLibrary.implementation = function (n) { send('[so] loadLibrary ' + n); return this.loadLibrary(n); };
            SL.load.implementation = function (p) { send('[so] load ' + p); return this.load(p); };
            send('[hook] SO ok');
        } catch (e) { send('[hook] SO fail'); }
    });
    try {
        Java.use('java.io.File').$new('/sdcard/dexcap').mkdirs();
    } catch (e) {}
    try {
        var oa = DebugSymbol.fromName('openat').address;
        var rd = DebugSymbol.fromName('read').address;
        varFD = {};
        Interceptor.attach(oa, {
            onEnter: function (a) { try { this.p = Memory.readUtf8String(a[1]); this.fd = -1; } catch (e) { this.p = ''; } },
            onLeave: function (r) {
                var fd = r.toInt32();
                if (fd >= 0 && this.p) {
                    fd2path[fd] = {p: this.p, n: 0};
                    if (/dex|jar|apk|zip|jiagu|jgapp|havefun|plugin|oat|vdex|split|resource|level|sharedassets|Data/i.test(this.p))
                        send('[open] ' + this.p);
                }
            }
        });
        Interceptor.attach(rd, {
            onEnter: function (a) { this.fd = a[0].toInt32(); this.n = a[2].toInt32(); },
            onLeave: function (r) {
                var got = r.toInt32();
                if (got > 0 && fd2path[this.fd]) {
                    var e = fd2path[this.fd]; e.n += got;
                    if (e.n > 500000 && !e.reported) { e.reported = true; send('[bigread] ' + e.n + ' bytes from ' + e.p); }
                }
            }
        });
        var mf = null;
        try { mf = DebugSymbol.fromName('memfd_create').address; } catch (e) {}
        if (mf) Interceptor.attach(mf, { onEnter: function (a) { try { send('[memfd] ' + Memory.readUtf8String(a[0])); } catch (e) {} } });
        send('[hook] native ok');
    } catch (e) { send('[hook] native fail ' + e); }
}
var tries = 0;
var t = setInterval(function () {
    try {
        if (typeof Java !== 'undefined' && Java.available) { clearInterval(t); hook(); }
        else if (++tries > 600) { clearInterval(t); send('[hook] no VM timeout'); }
    } catch (e) {}
}, 300);
