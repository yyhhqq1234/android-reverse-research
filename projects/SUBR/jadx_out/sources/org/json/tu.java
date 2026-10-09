package org.json;

import android.text.TextUtils;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import org.json.mediationsdk.logger.IronLog;
import org.json.n7;

/* JADX INFO: loaded from: classes3.dex */
public class tu<Smash extends n7<?>> {
    n7<?> d;
    private final List<String> e;
    private final int f;
    uu h;
    ConcurrentHashMap<String, CopyOnWriteArrayList<Smash>> a = new ConcurrentHashMap<>();
    private String b = "";
    private String c = "";
    private final Timer g = new Timer();
    private final int i = 5;

    class a extends TimerTask {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("removing waterfall with id " + this.a + " from memory");
                tu.this.a.remove(this.a);
                ironLog.verbose("waterfall size is currently " + tu.this.a.size());
            } finally {
                cancel();
            }
        }
    }

    public tu(List<String> list, int i, uu uuVar) {
        this.e = list;
        this.f = i;
        this.h = uuVar;
    }

    private void a() {
        for (Smash smash : b()) {
            if (!smash.equals(this.d)) {
                smash.M();
            }
        }
    }

    private synchronized boolean e() {
        n7<?> n7Var;
        n7Var = this.d;
        return n7Var != null && n7Var.C() && this.d.h().equals(this.c);
    }

    public void a(l2.a aVar, CopyOnWriteArrayList<Smash> copyOnWriteArrayList, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("updating new waterfall with id " + str);
        a();
        if (aVar == l2.a.AUTOMATIC_LOAD_WHILE_SHOW || aVar == l2.a.MANUAL_WITH_LOAD_ON_SHOW) {
            this.a.put(str, copyOnWriteArrayList);
            if (!TextUtils.isEmpty(this.c)) {
                if (e()) {
                    ironLog.verbose("ad from previous waterfall " + this.c + " is still showing - the current waterfall " + this.b + " will be deleted instead");
                    String str2 = this.b;
                    this.b = this.c;
                    this.c = str2;
                }
                this.g.schedule(new a(this.c), this.f);
            }
        } else {
            this.a.clear();
            this.a.put(str, copyOnWriteArrayList);
        }
        this.c = this.b;
        this.b = str;
        if (this.a.size() > 5) {
            this.h.a(this.a.size());
        }
    }

    public synchronized void a(n7<?> n7Var) {
        IronLog.INTERNAL.verbose();
        n7<?> n7Var2 = this.d;
        if (n7Var2 != null && !n7Var2.equals(n7Var)) {
            this.d.M();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0049 A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:29:0x0049, B:6:0x0008, B:8:0x000d, B:11:0x0012, B:13:0x0016, B:16:0x001d, B:18:0x0021, B:21:0x002e, B:23:0x0032, B:25:0x003a), top: B:35:0x0001 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x0049, please report this as an issue */
    public synchronized boolean a(l2.a aVar, String str, String str2, LoadWhileShowSupportState loadWhileShowSupportState, AdapterBaseInterface adapterBaseInterface, IronSource.AD_UNIT ad_unit) {
        boolean z;
        n7<?> n7Var;
        if (!a(adapterBaseInterface, ad_unit, str)) {
            z = true;
            if ((aVar == l2.a.AUTOMATIC_LOAD_WHILE_SHOW || aVar == l2.a.MANUAL_WITH_LOAD_ON_SHOW) && (n7Var = this.d) != null && n7Var.C() && ((loadWhileShowSupportState == LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_NETWORK && this.d.c().equals(str)) || ((loadWhileShowSupportState == LoadWhileShowSupportState.NONE || this.e.contains(str2)) && this.d.n().equals(str2)))) {
            }
            if (!z) {
                IronLog.INTERNAL.verbose(str + " will not be added to the auction request");
            }
        }
        z = false;
        if (!z) {
            IronLog.INTERNAL.verbose(str + " will not be added to the auction request");
        }
        return z;
    }

    public boolean a(AdapterBaseInterface adapterBaseInterface, IronSource.AD_UNIT ad_unit, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (ContextProvider.getInstance().getCurrentActiveActivity() != null || !(adapterBaseInterface instanceof AdapterSettingsInterface) || !((AdapterSettingsInterface) adapterBaseInterface).isUsingActivityBeforeImpression(ad_unit)) {
            return false;
        }
        ironLog.verbose(str + " - is using activity before impression and activity is null");
        return true;
    }

    public List<Smash> b() {
        CopyOnWriteArrayList<Smash> copyOnWriteArrayList = this.a.get(this.b);
        return copyOnWriteArrayList == null ? new CopyOnWriteArrayList() : copyOnWriteArrayList;
    }

    public synchronized void b(n7<?> n7Var) {
        IronLog.INTERNAL.verbose();
        this.d = n7Var;
    }

    public String c() {
        return this.b;
    }

    public n7<?> d() {
        return this.d;
    }
}
