// cloak17: Frida17 native anti-anti-debug (TracerPid=0, ptrace(TRACEME)=0 spoof).
function cx(a) { try { return Memory.readUtf8String(a); } catch (e) { return ''; } }
var statusFds = {};
try {
    var oa = DebugSymbol.fromName('openat').address;
    var op = null; try { op = DebugSymbol.fromName('open').address; } catch (e) {}
    var fo = null; try { fo = DebugSymbol.fromName('fopen').address; } catch (e) {}
    var rd = DebugSymbol.fromName('read').address;
    var pt = null; try { pt = DebugSymbol.fromName('ptrace').address; } catch (e) {}
    function watch(fd, p) {
        if (fd >= 0 && p && (p.indexOf('status') !== -1 || p.indexOf('wchan') !== -1 || p.indexOf('syscall') !== -1)
            && p.indexOf('/proc/') !== -1) statusFds[fd] = 1;
    }
    Interceptor.attach(oa, {
        onEnter: function (a) { this.p = cx(a[1]); },
        onLeave: function (r) { watch(r.toInt32(), this.p); }
    });
    if (op) Interceptor.attach(op, {
        onEnter: function (a) { this.p = cx(a[0]); },
        onLeave: function (r) { watch(r.toInt32(), this.p); }
    });
    if (fo) Interceptor.attach(fo, {
        onEnter: function (a) { this.p = cx(a[0]); },
        onLeave: function (r) {
            try {
                var fd = parseInt(cx(r + 0)); // noop
            } catch (e) {}
        }
    });
    Interceptor.attach(rd, {
        onEnter: function (a) { this.fd = a[0].toInt32(); this.buf = a[1]; this.n = a[2].toInt32(); },
        onLeave: function (r) {
            var got = r.toInt32();
            if (got > 0 && statusFds[this.fd]) {
                try {
                    var s = Memory.readUtf8String(this.buf, got);
                    var patched = s.replace(/TracerPid:\s*\d+/, 'TracerPid:\t0');
                    if (patched !== s) {
                        Memory.writeUtf8String(this.buf, patched);
                        r.replace(patched.length);
                        send('[cloak] TracerPid zeroed');
                    }
                } catch (e) {}
            }
        }
    });
    if (pt) Interceptor.attach(pt, {
        onEnter: function (a) { this.req = a[0].toInt32(); },
        onLeave: function (r) {
            if (this.req === 0) { r.replace(0); send('[cloak] TRACEME spoofed'); }
        }
    });
    send('[cloak] ARMED');
} catch (e) { send('[cloak] FAIL ' + e); }
