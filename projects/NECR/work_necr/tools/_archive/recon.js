// Recon: log file opens of dex/jar/apk/zip + memfd + DefineClass-ish natives.
function log(m) { send(m); }
var hits = {};
function note(p) {
    if (/dex|jar|apk|zip|oat|vdex|jiagu|jgapp|havefun|plugin/i.test(p)) {
        if (!hits[p]) { hits[p] = 1; log('[file] ' + p); }
    }
}
function hook() {
    var openat = Module.getExportByName(null, 'openat');
    Interceptor.attach(openat, {
        onEnter: function (a) {
            try { this.p = Memory.readUtf8String(a[1]); } catch (e) { this.p = ''; }
        },
        onLeave: function (r) { if (this.p) note(this.p); }
    });
    try {
        var memfd = Module.getExportByName(null, 'memfd_create');
        Interceptor.attach(memfd, {
            onEnter: function (a) { try { log('[memfd] ' + Memory.readUtf8String(a[0])); } catch (e) {} }
        });
    } catch (e) {}
    // JNI DefineClass via libart ArtMethod: hook ClassLinker DefineClassNative
    try {
        var syms = Module.enumerateSymbols('libart.so');
        for (var i = 0; i < syms.length; i++) {
            var n = syms[i].name;
            if (n.indexOf('DefineClass') !== -1) log('[art-sym] ' + n);
        }
    } catch (e) { log('[art] enum fail'); }
    log('[recon] armed');
}
var tries = 0;
var t = setInterval(function () {
    try {
        if (typeof Java !== 'undefined' && Java.available) { clearInterval(t); Java.perform(hook); }
        else if (++tries > 120) { clearInterval(t); hook(); }
    } catch (e) { try { clearInterval(t); hook(); } catch (e2) {} }
}, 500);
