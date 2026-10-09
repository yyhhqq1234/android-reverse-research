package org.json.sdk.controller;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.fg;
import org.json.kg;
import org.json.l9;
import org.json.mg;
import org.json.rb;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.SDKUtils;
import org.json.va;
import org.json.y8;
import org.json.zp;

/* JADX INFO: loaded from: classes3.dex */
class d {
    static final String h = "controllerSourceData";
    private static final String i = "next_";
    private static final String j = "fallback_";
    private static final String k = "controllerSourceCode";
    private long a;
    private int b;
    private c c;
    private EnumC0102d d = EnumC0102d.NONE;
    private String e;
    private String f;
    private va g;

    class a extends JSONObject {
        a() throws JSONException {
            putOpt(y8.a.i, Integer.valueOf(d.this.b));
            putOpt(d.k, Integer.valueOf(d.this.d.a()));
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.values().length];
            a = iArr;
            try {
                iArr[c.FETCH_FROM_SERVER_NO_FALLBACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[c.FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum c {
        FETCH_FROM_SERVER_NO_FALLBACK,
        FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK,
        FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.d$d, reason: collision with other inner class name */
    public enum EnumC0102d {
        NONE(0),
        PREPARED_CONTROLLER_LOADED(1),
        CONTROLLER_FROM_SERVER(2),
        MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(3),
        FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(4),
        FALLBACK_CONTROLLER_RECOVERY(5);

        private int a;

        EnumC0102d(int i) {
            this.a = i;
        }

        public int a() {
            return this.a;
        }
    }

    d(JSONObject jSONObject, String str, String str2, va vaVar) {
        int iOptInt = jSONObject.optInt(y8.a.i, -1);
        this.b = iOptInt;
        this.c = a(iOptInt);
        this.e = str;
        this.f = str2;
        this.g = vaVar;
    }

    private c a(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? c.FETCH_FROM_SERVER_NO_FALLBACK : c.FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL;
        }
        return c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK;
    }

    private void a(mg mgVar) {
        if (this.g.c()) {
            return;
        }
        this.g.a(mgVar, this.f);
    }

    private void a(EnumC0102d enumC0102d) {
        fg fgVarA = new fg().a(rb.y, Integer.valueOf(this.b)).a(rb.z, Integer.valueOf(enumC0102d.a()));
        if (this.a > 0) {
            fgVarA.a(rb.B, Long.valueOf(System.currentTimeMillis() - this.a));
        }
        kg.a(zp.w, fgVarA.a());
    }

    private boolean a() {
        try {
            if (j()) {
                return IronSourceStorageUtils.renameFile(h().getPath(), g().getPath());
            }
            return false;
        } catch (Exception e) {
            l9.d().a(e);
            return false;
        }
    }

    private boolean b() throws Exception {
        return IronSourceStorageUtils.renameFile(i().getPath(), g().getPath());
    }

    private void c() {
        try {
            mg mgVarG = g();
            if (mgVarG.exists()) {
                mg mgVarH = h();
                if (mgVarH.exists()) {
                    mgVarH.delete();
                }
                IronSourceStorageUtils.renameFile(mgVarG.getPath(), mgVarH.getPath());
            }
        } catch (Exception e) {
            l9.d().a(e);
        }
    }

    private void d() {
        IronSourceStorageUtils.deleteFile(h());
    }

    private void e() {
        IronSourceStorageUtils.deleteFile(g());
    }

    private mg h() {
        return new mg(this.e, "fallback_mobileController.html");
    }

    private mg i() {
        return new mg(this.e, "next_mobileController.html");
    }

    private boolean j() {
        return h().exists();
    }

    private void l() {
        fg fgVarA = new fg().a(rb.y, Integer.valueOf(this.b));
        if (this.a > 0) {
            fgVarA.a(rb.B, Long.valueOf(System.currentTimeMillis() - this.a));
        }
        kg.a(zp.x, fgVarA.a());
    }

    void a(fg fgVar) {
        fgVar.a(rb.y, Integer.valueOf(this.b));
        kg.a(zp.v, fgVar.a());
        this.a = System.currentTimeMillis();
    }

    void a(Runnable runnable) {
        if (m()) {
            return;
        }
        if (this.c == c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK) {
            d();
        }
        EnumC0102d enumC0102d = EnumC0102d.CONTROLLER_FROM_SERVER;
        this.d = enumC0102d;
        a(enumC0102d);
        runnable.run();
    }

    void a(Runnable runnable, Runnable runnable2) {
        if (m()) {
            return;
        }
        if (this.c != c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK || !a()) {
            l();
            runnable2.run();
        } else {
            EnumC0102d enumC0102d = EnumC0102d.FALLBACK_CONTROLLER_RECOVERY;
            this.d = enumC0102d;
            a(enumC0102d);
            runnable.run();
        }
    }

    JSONObject f() throws JSONException {
        return new a();
    }

    mg g() {
        return new mg(this.e, y8.f);
    }

    boolean k() {
        mg mgVar;
        int i2 = b.a[this.c.ordinal()];
        if (i2 == 1) {
            e();
            mgVar = new mg(this.e, SDKUtils.getFileName(this.f));
        } else {
            if (i2 != 2) {
                if (i2 == 3) {
                    try {
                        mg mgVarG = g();
                        mg mgVarI = i();
                        if (!mgVarI.exists() && !mgVarG.exists()) {
                            a(new mg(this.e, SDKUtils.getFileName(this.f)));
                            return false;
                        }
                        if (!mgVarI.exists() && mgVarG.exists()) {
                            EnumC0102d enumC0102d = EnumC0102d.MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                            this.d = enumC0102d;
                            a(enumC0102d);
                            a(new mg(this.e, mgVarI.getName()));
                            return true;
                        }
                        c();
                        if (b()) {
                            EnumC0102d enumC0102d2 = EnumC0102d.PREPARED_CONTROLLER_LOADED;
                            this.d = enumC0102d2;
                            a(enumC0102d2);
                            d();
                            a(new mg(this.e, mgVarI.getName()));
                            return true;
                        }
                        if (!a()) {
                            a(new mg(this.e, SDKUtils.getFileName(this.f)));
                            return false;
                        }
                        EnumC0102d enumC0102d3 = EnumC0102d.FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                        this.d = enumC0102d3;
                        a(enumC0102d3);
                        a(new mg(this.e, mgVarI.getName()));
                        return true;
                    } catch (Exception e) {
                        l9.d().a(e);
                    }
                }
                return false;
            }
            c();
            mgVar = new mg(this.e, SDKUtils.getFileName(this.f));
        }
        a(mgVar);
        return false;
    }

    boolean m() {
        return this.d != EnumC0102d.NONE;
    }
}
