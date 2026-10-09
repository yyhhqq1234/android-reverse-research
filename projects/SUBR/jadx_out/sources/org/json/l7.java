package org.json;

import org.json.m7;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l7<Smash extends m7<?>> extends i7<Smash, AdapterAdRewardListener> implements s2 {
    public l7(r0 r0Var, nj njVar, IronSourceSegment ironSourceSegment) {
        super(r0Var, njVar, ironSourceSegment);
    }

    @Override // org.json.s2
    public void a(m7<?> m7Var, Placement placement) {
        IronLog.INTERNAL.verbose(b(m7Var.k()));
        this.t.b(placement, m7Var.f());
    }
}
