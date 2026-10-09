// Boot snapshot v2: PURE NATIVE, arms instantly (no Java needed).
var fd2path = {};
function hx(a) { try { return Memory.readUtf8String(a); } catch (e) { return ''; } }
function armNative() {
    try {
        var oa = DebugSymbol.fromName('openat').address;
        var op = DebugSymbol.fromName('open').address;
        var rd = DebugSymbol.fromName('read').address;
        var dl = DebugSymbol.fromName('dlopen').address;
        var ds = DebugSymbol.fromName('dlsym').address;
        var mf = null;
        try { mf = DebugSymbol.fromName('memfd_create').address; } catch (e) {}
        send('[addrs] openat=' + oa + ' dlopen=' + dl);
        function reg(fd, p) {
            if (fd >= 0 && p) {
                fd2path[fd] = {p: p, n: 0};
                if (/dex|jar|apk|zip|jiagu|jgapp|havefun|plugin|oat|vdex|split|sharedassets|Data|lib.*\.so/i.test(p))
                    send('[open] ' + p);
            }
        }
        Interceptor.attach(oa, {
            onEnter: function (a) { this.p = hx(a[1]); },
            onLeave: function (r) { reg(r.toInt32(), this.p); }
        });
        if (op) Interceptor.attach(op, {
            onEnter: function (a) { this.p = hx(a[0]); },
            onLeave: function (r) { reg(r.toInt32(), this.p); }
        });
        Interceptor.attach(rd, {
            onEnter: function (a) { this.fd = a[0].toInt32(); },
            onLeave: function (r) {
                var got = r.toInt32();
                if (got > 0 && fd2path[this.fd]) {
                    var e = fd2path[this.fd]; e.n += got;
                    if (e.n > 300000 && !e.reported) { e.reported = true; send('[bigread] ' + e.n + 'B from ' + e.p); }
                }
            }
        });
        if (dl) Interceptor.attach(dl, {
            onEnter: function (a) { this.p = hx(a[0]); },
            onLeave: function (r) { if (this.p) send('[dlopen] ' + this.p); }
        });
        if (ds) Interceptor.attach(ds, {
            onEnter: function (a) { this.s = hx(a[1]); },
            onLeave: function (r) {
                if (this.s && /dex|class|load|decrypt|jiagu|jg|Entry|havefun/i.test(this.s)) send('[dlsym] ' + this.s);
            }
        });
        if (mf) Interceptor.attach(mf, { onEnter: function (a) { send('[memfd] ' + hx(a[0])); } });
        send('[native] ARMED');
    } catch (e) { send('[native] FAIL ' + e); }
}
armNative();
// opportunistic Java (expected dead on houdini, harmless)
try {
    var tries = 0;
    var t = setInterval(function () {
        try {
            if (typeof Java !== 'undefined' && Java.available) {
                clearInterval(t);
                Java.perform(function () {
                    try {
                        var BDL = Java.use('dalvik.system.BaseDexClassLoader');
                        BDL.$init.overloads.forEach(function (ov) {
                            ov.implementation = function (dp) {
                                try { send('[bdcl] ' + dp); } catch (e) {}
                                return ov.apply(this, arguments);
                            };
                        });
                        send('[java] BDCL ok');
                    } catch (e) { send('[java] BDCL fail'); }
                });
            }
        } catch (e) {}
        if (++tries > 500) clearInterval(t);
    }, 300);
} catch (e) {}
