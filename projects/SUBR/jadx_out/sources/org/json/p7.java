package org.json;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.events.ISErrorListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.p;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
public abstract class p7 implements se {
    private int[] A;
    private int[] B;
    private int[] C;
    int G;
    String H;
    String I;
    Set<Integer> J;
    private qb K;
    private IronSourceSegment L;
    private hr M;
    private ISErrorListener N;
    private boolean l;
    private t9 p;
    private org.json.e q;
    private ArrayList<ob> r;
    private int t;
    private wg u;
    private Context v;
    private int[] z;
    final int a = 1;
    final int b = 100;
    final int c = 5000;
    final int d = 90000;
    final int e = 1024;
    final int f = 5;
    final String g = "supersonic_sdk.db";
    final String h = IronSourceConstants.EVENTS_PROVIDER;
    final String i = "placement";
    private final String j = md.x0;
    private final String k = md.I0;
    private boolean m = false;
    private boolean n = false;
    private int o = -1;
    private boolean s = true;
    private int w = 100;
    private int x = 5000;
    private int y = 1;
    private Map<String, String> D = new HashMap();
    private Map<String, String> E = new HashMap();
    private String F = "";
    private final Object O = new Object();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p7.this.a();
        }
    }

    class b implements Runnable {
        final /* synthetic */ ob a;
        final /* synthetic */ IronSource.AD_UNIT b;

        b(ob obVar, IronSource.AD_UNIT ad_unit) {
            this.a = obVar;
            this.b = ad_unit;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a("eventSessionId", p7.this.u.b());
            this.a.a("essn", Integer.valueOf(p7.this.u.c()));
            String connectionType = IronSourceUtils.getConnectionType(p7.this.v);
            if (p7.this.g(this.a)) {
                this.a.a(y8.i.t, connectionType);
            }
            if (p7.this.a(connectionType, this.a)) {
                ob obVar = this.a;
                obVar.a(p7.this.b(obVar));
            }
            String strD = v8.d(p7.this.v);
            if (strD != null) {
                this.a.a(y8.i.u, strD);
            }
            int iA = p7.this.a(this.a.c(), this.b);
            if (iA != e.NOT_SUPPORTED.a()) {
                this.a.a("adUnit", Integer.valueOf(iA));
            }
            p7.this.a(this.a, "reason");
            p7.this.a(this.a, IronSourceConstants.EVENTS_EXT1);
            if (!p7.this.E.isEmpty()) {
                for (Map.Entry entry : p7.this.E.entrySet()) {
                    if (!this.a.b().has((String) entry.getKey()) && entry.getKey() != "eventId" && entry.getKey() != "timestamp") {
                        this.a.a((String) entry.getKey(), entry.getValue());
                    }
                }
            }
            if (p7.this.i(this.a)) {
                if (p7.this.h(this.a) && !p7.this.e(this.a)) {
                    this.a.a("sessionDepth", Integer.valueOf(p7.this.c(this.a)));
                }
                if (p7.this.j(this.a)) {
                    p7.this.f(this.a);
                }
                long jA = p7.this.u.a();
                if (jA > 0) {
                    this.a.a("firstSessionTimestamp", Long.valueOf(jA));
                }
                IronLog.EVENT.verbose(this.a.toString());
                p7.this.r.add(this.a);
                p7.d(p7.this);
            }
            p7 p7Var = p7.this;
            boolean zA = p7Var.a(p7Var.B) ? p7.this.a(this.a.c(), p7.this.B) : p7.this.d(this.a);
            if (!p7.this.m && zA) {
                p7.this.m = true;
            }
            if (p7.this.p != null) {
                if (p7.this.g()) {
                    p7.this.f();
                    return;
                }
                p7 p7Var2 = p7.this;
                if (p7Var2.b((ArrayList<ob>) p7Var2.r) || zA) {
                    p7.this.a();
                }
            }
        }
    }

    class c implements te {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(te.a aVar) {
            try {
                if (aVar.c()) {
                    ArrayList<ob> arrayListA = p7.this.p.a(p7.this.I);
                    p7.this.t = arrayListA.size() + p7.this.r.size();
                } else {
                    IronLog.INTERNAL.error("Failed to send events. Saving them back to storage.");
                    p7.this.a(p7.this.a(aVar.b(), aVar.a()));
                }
            } catch (Exception e) {
                l9.d().a(e);
                if (p7.this.N != null) {
                    p7.this.N.onError(new IllegalStateException("Error on sending data ", e));
                }
            }
            a(aVar.b());
        }

        @Override // org.json.te
        public synchronized void a(final te.a aVar) {
            p7.this.K.a(new Runnable() { // from class: com.ironsource.p7$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(aVar);
                }
            });
        }

        public void a(ArrayList<ob> arrayList) {
            if (arrayList != null) {
                try {
                    arrayList.clear();
                } catch (Exception e) {
                    l9.d().a(e);
                    IronLog.INTERNAL.error("clearData exception: " + e.getMessage());
                }
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p7.this.f();
        }
    }

    public enum e {
        NOT_SUPPORTED(-1),
        INTERSTITIAL(2),
        REWARDED_VIDEO(3),
        NATIVE_AD(4),
        BANNER(8);

        private int a;

        e(int i) {
            this.a = i;
        }

        public int a() {
            return this.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i, IronSource.AD_UNIT ad_unit) {
        e eVar;
        int iA = e.NOT_SUPPORTED.a();
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO || ((i >= 1000 && i < 2000) || (i >= 91000 && i < 92000))) {
            eVar = e.REWARDED_VIDEO;
        } else if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL || ((i >= 2000 && i < 3000) || (i >= 92000 && i < 93000))) {
            eVar = e.INTERSTITIAL;
        } else if (ad_unit == IronSource.AD_UNIT.BANNER || ((i >= 3000 && i < 4000) || (i >= 93000 && i < 94000))) {
            eVar = e.BANNER;
        } else {
            if (ad_unit != IronSource.AD_UNIT.NATIVE_AD && ((i < 4000 || i >= 5000) && (i < 94000 || i >= 95000))) {
                return iA;
            }
            eVar = e.NATIVE_AD;
        }
        return eVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<ob> a(ArrayList<ob> arrayList, String str) {
        String strA = a(str, 1024);
        Iterator<ob> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a(strA);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        synchronized (this.O) {
            this.p.a(this.r, this.I);
            this.r.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ob obVar, String str) {
        a(obVar, str, 1024);
    }

    private void a(ob obVar, String str, int i) {
        JSONObject jSONObjectB = obVar.b();
        if (jSONObjectB == null || !jSONObjectB.has(str)) {
            return;
        }
        try {
            obVar.a(str, a(jSONObjectB.optString(str, null), i));
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    private void a(JSONObject jSONObject) {
        try {
            IronSourceSegment ironSourceSegment = this.L;
            if (ironSourceSegment != null) {
                if (ironSourceSegment.getAge() > 0) {
                    jSONObject.put("age", this.L.getAge());
                }
                if (!TextUtils.isEmpty(this.L.getGender())) {
                    jSONObject.put(IronSourceSegment.GENDER, this.L.getGender());
                }
                if (this.L.getLevel() > 0) {
                    jSONObject.put(IronSourceSegment.LEVEL, this.L.getLevel());
                }
                if (this.L.getIsPaying() != null) {
                    jSONObject.put(IronSourceSegment.PAYING, this.L.getIsPaying().get());
                }
                if (this.L.getIapt() > 0.0d) {
                    jSONObject.put("iapt", this.L.getIapt());
                }
                if (this.L.getUcd() > 0) {
                    jSONObject.put(IronSourceSegment.USER_CREATION_DATE, this.L.getUcd());
                }
            }
            hr hrVar = this.M;
            if (hrVar != null) {
                String strB = hrVar.b();
                if (!TextUtils.isEmpty(strB)) {
                    jSONObject.put("segmentId", strB);
                }
                JSONObject jSONObjectA = this.M.a();
                Iterator<String> itKeys = jSONObjectA.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject.put(next, jSONObjectA.get(next));
                }
            }
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, int[] iArr) {
        if (!a(iArr)) {
            return false;
        }
        for (int i2 : iArr) {
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(String str, ob obVar) {
        if (str.equalsIgnoreCase("none")) {
            return a(this.C) ? a(obVar.c(), this.C) : this.J.contains(Integer.valueOf(obVar.c()));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int[] iArr) {
        return iArr != null && iArr.length > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int b(ob obVar) {
        return obVar.c() + 90000;
    }

    private void b(String str) {
        org.json.e eVar = this.q;
        if (eVar == null || !eVar.c().equals(str)) {
            this.q = vb.a(str, this.G);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(ArrayList<ob> arrayList) {
        return arrayList != null && arrayList.size() >= this.y;
    }

    static /* synthetic */ int d(p7 p7Var) {
        int i = p7Var.t;
        p7Var.t = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(ob obVar) {
        JSONObject jSONObjectB = obVar.b();
        if (jSONObjectB == null) {
            return false;
        }
        return jSONObjectB.has("sessionDepth");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void f() {
        ArrayList<ob> arrayListA;
        try {
            this.m = false;
            ArrayList<ob> arrayList = new ArrayList<>();
            try {
                synchronized (this.O) {
                    arrayListA = this.p.a(this.I);
                    this.p.b(this.I);
                }
                sb.c cVar = new sb.c(new sb.a(arrayListA, this.r), this.x);
                this.p.a(cVar.a(), this.I);
                arrayList.addAll(cVar.b());
            } catch (Throwable th) {
                l9.d().a(th);
                IronLog.INTERNAL.error("CombinedEventList exception: " + th.getMessage());
                ISErrorListener iSErrorListener = this.N;
                if (iSErrorListener != null) {
                    iSErrorListener.onError(new IllegalStateException("Combined event exception: ", th));
                }
                arrayList.clear();
                arrayList.addAll(this.r);
            }
            if (arrayList.size() > 0) {
                this.r.clear();
                this.t = 0;
                JSONObject jSONObjectB = jd.a().b();
                try {
                    a(jSONObjectB);
                    String strB = b();
                    if (!TextUtils.isEmpty(strB)) {
                        jSONObjectB.put(md.x0, strB);
                    }
                    String strQ = p.m().q();
                    if (!TextUtils.isEmpty(strQ)) {
                        jSONObjectB.put(md.I0, strQ);
                    }
                    Map<String, String> mapC = c();
                    if (!mapC.isEmpty()) {
                        for (Map.Entry<String, String> entry : mapC.entrySet()) {
                            if (!jSONObjectB.has(entry.getKey())) {
                                jSONObjectB.put(entry.getKey(), entry.getValue());
                            }
                        }
                    }
                    JSONObject jSONObjectA = new xb().a();
                    Iterator<String> itKeys = jSONObjectA.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObjectB.put(next, jSONObjectA.get(next));
                    }
                } catch (Throwable th2) {
                    l9.d().a(th2);
                    IronLog.INTERNAL.error("Exception while building the event general properties: " + th2.getMessage());
                }
                String strA = this.q.a(arrayList, jSONObjectB);
                if (TextUtils.isEmpty(strA)) {
                    IronLog.INTERNAL.error("Failed to parse events.");
                    ISErrorListener iSErrorListener2 = this.N;
                    if (iSErrorListener2 != null) {
                        iSErrorListener2.onError(new IllegalStateException("Event parse failed"));
                        return;
                    }
                    return;
                }
                if (this.n) {
                    try {
                        strA = Base64.encodeToString(ui.a(strA, this.o), 0);
                    } catch (Exception e2) {
                        l9.d().a(e2);
                        ISErrorListener iSErrorListener3 = this.N;
                        if (iSErrorListener3 != null) {
                            iSErrorListener3.onError(new IllegalStateException("Error on compression: ", e2));
                        }
                    }
                }
                ps.a.a(new yb(new c(), strA, this.q.b(), arrayList));
            }
        } catch (Throwable th3) {
            l9.d().a(th3);
            IronLog.INTERNAL.error("Send event exception: " + th3.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        return (this.t >= this.w || this.m) && this.l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i(ob obVar) {
        if (obVar == null) {
            return false;
        }
        if (a(this.z)) {
            return true ^ a(obVar.c(), this.z);
        }
        if (a(this.A)) {
            return a(obVar.c(), this.A);
        }
        return true;
    }

    String a(String str, int i) {
        return (TextUtils.isEmpty(str) || str.length() <= i) ? str : str.substring(0, i);
    }

    @Override // org.json.se
    public void a(int i) {
        if (i > 0) {
            this.x = i;
        }
    }

    public synchronized void a(Context context, IronSourceSegment ironSourceSegment) {
        String defaultEventsFormatterType = IronSourceUtils.getDefaultEventsFormatterType(context, this.I, this.H);
        this.H = defaultEventsFormatterType;
        b(defaultEventsFormatterType);
        this.q.a(IronSourceUtils.getDefaultEventsURL(context, this.I, null));
        this.p = t9.a(context, "supersonic_sdk.db", 5);
        this.K.a(new a());
        this.z = IronSourceUtils.getDefaultOptOutEvents(context, this.I);
        this.A = IronSourceUtils.getDefaultOptInEvents(context, this.I);
        this.B = IronSourceUtils.getDefaultTriggerEvents(context, this.I);
        this.C = IronSourceUtils.getDefaultNonConnectivityEvents(context, this.I);
        this.L = ironSourceSegment;
        this.v = context;
    }

    public synchronized void a(hr hrVar) {
        this.M = hrVar;
    }

    public void a(IronSourceSegment ironSourceSegment) {
        this.L = ironSourceSegment;
    }

    public void a(ISErrorListener iSErrorListener) {
        this.N = iSErrorListener;
    }

    @Override // org.json.se
    public synchronized void a(ob obVar) {
        a(obVar, (IronSource.AD_UNIT) null);
    }

    public synchronized void a(ob obVar, IronSource.AD_UNIT ad_unit) {
        if (obVar != null) {
            if (this.s) {
                this.K.a(new b(obVar, ad_unit));
            }
        }
    }

    void a(Runnable runnable) {
        this.K.a(runnable);
    }

    public void a(String str) {
        this.F = str;
    }

    @Override // org.json.se
    public void a(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.H = str;
        IronSourceUtils.saveDefaultEventsFormatterType(context, this.I, str);
        b(str);
    }

    protected void a(ArrayList<ob> arrayList) {
        if (arrayList != null) {
            synchronized (this.O) {
                this.p.a(arrayList, this.I);
                this.t = this.p.a(this.I).size() + this.r.size();
            }
        }
    }

    public void a(Map<String, String> map) {
        this.D.putAll(map);
    }

    public void a(Map<String, Object> map, int i, String str) {
        map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(i));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        map.put(IronSourceConstants.AUCTION_FALLBACK, str);
    }

    @Override // org.json.se
    public void a(boolean z) {
        this.n = z;
    }

    @Override // org.json.se
    public void a(int[] iArr, Context context) {
        this.A = iArr;
        IronSourceUtils.saveDefaultOptInEvents(context, this.I, iArr);
    }

    public String b() {
        return this.F;
    }

    @Override // org.json.se
    public void b(int i) {
        if (i > 0) {
            this.w = i;
        }
    }

    @Override // org.json.se
    public void b(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        org.json.e eVar = this.q;
        if (eVar != null) {
            eVar.a(str);
        }
        IronSourceUtils.saveDefaultEventsURL(context, this.I, str);
    }

    public void b(Map<String, String> map) {
        this.E.putAll(map);
    }

    @Override // org.json.se
    public void b(boolean z) {
        this.s = z;
    }

    @Override // org.json.se
    public void b(int[] iArr, Context context) {
        this.B = iArr;
        IronSourceUtils.saveDefaultTriggerEvents(context, this.I, iArr);
    }

    protected abstract int c(ob obVar);

    public Map<String, String> c() {
        return this.D;
    }

    @Override // org.json.se
    public void c(int i) {
        if (i > 0) {
            this.y = i;
        }
    }

    public void c(boolean z) {
        this.l = z;
    }

    @Override // org.json.se
    public void c(int[] iArr, Context context) {
        this.z = iArr;
        IronSourceUtils.saveDefaultOptOutEvents(context, this.I, iArr);
    }

    abstract void d();

    @Override // org.json.se
    public void d(int i) {
        this.o = i;
    }

    @Override // org.json.se
    public void d(int[] iArr, Context context) {
        this.C = iArr;
        IronSourceUtils.saveDefaultNonConnectivityEvents(context, this.I, iArr);
    }

    protected abstract boolean d(ob obVar);

    protected abstract String e(int i);

    void e() {
        this.r = new ArrayList<>();
        this.t = 0;
        this.q = vb.a(this.H, this.G);
        qb qbVar = new qb(this.I + "EventThread");
        this.K = qbVar;
        qbVar.start();
        this.K.a();
        this.u = jl.P().h();
        this.J = new HashSet();
        d();
    }

    protected int f(int i) {
        return a(i, (IronSource.AD_UNIT) null);
    }

    protected abstract void f(ob obVar);

    protected boolean g(ob obVar) {
        return (obVar.c() == 40 || obVar.c() == 41 || obVar.c() == 50 || obVar.c() == 51 || obVar.c() == 52) ? false : true;
    }

    public void h() {
        this.K.a(new d());
    }

    protected boolean h(ob obVar) {
        return (obVar.c() == 14 || obVar.c() == 114 || obVar.c() == 514 || obVar.c() == 515 || obVar.c() == 516 || obVar.c() == 140 || obVar.c() == 40 || obVar.c() == 41 || obVar.c() == 50 || obVar.c() == 51 || obVar.c() == 52) ? false : true;
    }

    protected abstract boolean j(ob obVar);
}
