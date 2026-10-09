package org.json.mediationsdk;

import java.util.HashMap;
import java.util.Map;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.q5;
import org.json.tf;
import org.json.yo;

/* JADX INFO: loaded from: classes3.dex */
public class n {
    private static final n f = new n();
    private final Map<String, Long> a = new HashMap();
    private final Map<String, Boolean> b = new HashMap();
    private int c;
    private int d;
    private int e;

    class a implements Runnable {
        final /* synthetic */ IronSource.AD_UNIT a;
        final /* synthetic */ IronSourceError b;
        final /* synthetic */ String c;

        a(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError, String str) {
            this.a = ad_unit;
            this.b = ironSourceError;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("onAdLoadFailed - invokeCallback after delaying");
            n.this.a(this.a, this.b);
            n.this.b.put(this.c, Boolean.FALSE);
        }
    }

    private n() {
    }

    private int a(IronSource.AD_UNIT ad_unit) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return this.d;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            return this.c;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            return this.e;
        }
        IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
        return 0;
    }

    public static synchronized n a() {
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError) {
        this.a.put(ad_unit.toString(), Long.valueOf(System.currentTimeMillis()));
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            yo.a().a(ironSourceError);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            tf.a().a(ironSourceError);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            q5.a().a(ironSourceError);
            return;
        }
        IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
    }

    public void a(IronSource.AD_UNIT ad_unit, int i) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.d = i;
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.c = i;
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            this.e = i;
            return;
        }
        IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
    }

    public synchronized void b(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError) {
        if (b(ad_unit)) {
            return;
        }
        String string = ad_unit.toString();
        if (!this.a.containsKey(string)) {
            a(ad_unit, ironSourceError);
            return;
        }
        long jA = ((long) a(ad_unit)) * 1000;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.a.get(string).longValue();
        if (jCurrentTimeMillis > jA) {
            a(ad_unit, ironSourceError);
            return;
        }
        this.b.put(string, Boolean.TRUE);
        long j = jA - jCurrentTimeMillis;
        IronLog.INTERNAL.verbose("delaying callback by " + j);
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(ad_unit, ironSourceError, string), j);
    }

    public synchronized boolean b(IronSource.AD_UNIT ad_unit) {
        if (!this.b.containsKey(ad_unit.toString())) {
            return false;
        }
        return this.b.get(ad_unit.toString()).booleanValue();
    }
}
