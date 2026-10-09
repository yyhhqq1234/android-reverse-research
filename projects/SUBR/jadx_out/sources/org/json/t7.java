package org.json;

import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.bidding.BiddingDataCallback;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public class t7 implements Callable<x7> {
    private final int a;
    private final String b;
    private final AdData c;
    private final v7 d;
    private final u7 e;
    private final NetworkSettings f;

    class a implements BiddingDataCallback {
        final /* synthetic */ xa a;
        final /* synthetic */ BlockingQueue b;

        a(xa xaVar, BlockingQueue blockingQueue) {
            this.a = xaVar;
            this.b = blockingQueue;
        }

        @Override // org.json.mediationsdk.bidding.BiddingDataCallback
        public void onFailure(String str) {
            this.b.add(new x7(t7.this.d(), t7.this.c(), null, xa.a(this.a), str));
        }

        @Override // org.json.mediationsdk.bidding.BiddingDataCallback
        public void onSuccess(Map<String, Object> map) {
            this.b.add(new x7(t7.this.d(), t7.this.c(), map, xa.a(this.a), null));
        }
    }

    public t7(int i, String str, AdData adData, v7 v7Var, u7 u7Var, NetworkSettings networkSettings) {
        this.a = i;
        this.b = str;
        this.c = adData;
        this.d = v7Var;
        this.e = u7Var;
        this.f = networkSettings;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x007b A[PHI: r0 r2
  0x007b: PHI (r0v4 java.lang.String) = (r0v3 java.lang.String), (r0v7 java.lang.String) binds: [B:7:0x0055, B:11:0x0079] A[DONT_GENERATE, DONT_INLINE]
  0x007b: PHI (r2v8 com.ironsource.u7) = (r2v7 com.ironsource.u7), (r2v12 com.ironsource.u7) binds: [B:7:0x0055, B:11:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public x7 call() throws Exception {
        String str;
        u7 u7Var;
        xa xaVar = new xa();
        IronLog.INTERNAL.verbose(c() + " fetching bidding data");
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        try {
            b().a(this.c, new a(xaVar, arrayBlockingQueue));
        } catch (Exception e) {
            l9.d().a(e);
            str = "Exception while calling collectBiddingData - " + e.getMessage();
            IronLog.INTERNAL.error(str);
            u7Var = this.e;
            if (u7Var != null) {
                u7Var.a(str);
            }
        } catch (NoClassDefFoundError e2) {
            l9.d().a(e2);
            str = "Error while calling collectBiddingData - " + e2.getMessage();
            IronLog.INTERNAL.error(str);
            u7Var = this.e;
            if (u7Var != null) {
                u7Var.a(str);
            }
        }
        u7 u7Var2 = this.e;
        if (u7Var2 != null) {
            u7Var2.a(this.f);
        }
        return (x7) arrayBlockingQueue.take();
    }

    public v7 b() {
        return this.d;
    }

    public String c() {
        return this.b;
    }

    public int d() {
        return this.a;
    }
}
