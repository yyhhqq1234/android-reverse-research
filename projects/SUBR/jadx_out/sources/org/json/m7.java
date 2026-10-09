package org.json;

import java.util.HashMap;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.p;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.s2;

/* JADX INFO: loaded from: classes3.dex */
public class m7<Listener extends s2> extends j7<Listener> implements AdapterAdRewardListener {
    private xa r;

    class a extends cq {
        a() {
        }

        @Override // org.json.cq
        public void a() {
            m7.this.U();
        }
    }

    public m7(po poVar, j1 j1Var, BaseAdAdapter<?, AdapterAdRewardListener> baseAdAdapter, z2 z2Var, j5 j5Var, Listener listener) {
        super(poVar, j1Var, baseAdAdapter, z2Var, j5Var, listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        if (this.g == null) {
            IronLog.INTERNAL.verbose(a("placement is null "));
            b2 b2Var = this.d;
            if (b2Var != null) {
                b2Var.k.f("mCurrentPlacement is null state = " + this.e);
                return;
            }
            return;
        }
        IronLog.INTERNAL.verbose(a("placement name = " + j()));
        if (this.d != null) {
            HashMap map = new HashMap();
            if (p.m().s() != null) {
                for (String str : p.m().s().keySet()) {
                    map.put("custom_" + str, p.m().s().get(str));
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.d.j.a(j(), this.g.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String(), this.g.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_AMOUNT java.lang.String(), jCurrentTimeMillis, IronSourceUtils.getTransId(jCurrentTimeMillis, c()), xa.a(this.r), map, p.m().l());
        }
        ((s2) this.b).a((m7<?>) this, this.g);
    }

    @Override // org.json.j7, org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        this.r = new xa();
        super.onAdClosed();
    }

    @Override // org.json.n7, org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened() {
        this.r = null;
        super.onAdOpened();
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener
    public void onAdRewarded() {
        if (u().c()) {
            u().a(new a());
        } else {
            U();
        }
    }
}
