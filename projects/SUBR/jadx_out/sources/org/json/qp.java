package org.json;

import java.util.List;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class qp extends l7<rp> {
    public qp(List<NetworkSettings> list, tp tpVar, String str, boolean z, nj njVar, IronSourceSegment ironSourceSegment) {
        super(new op(str, list, tpVar, z), njVar, ironSourceSegment);
    }

    @Override // org.json.k7
    protected LoadWhileShowSupportState a(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        return ((AdapterSettingsInterface) adapterBaseInterface).getLoadWhileShowSupportedState(networkSettings);
    }

    @Override // org.json.k7
    protected /* bridge */ /* synthetic */ n7 a(NetworkSettings networkSettings, BaseAdAdapter baseAdAdapter, int i, String str, j5 j5Var) {
        return b(networkSettings, (BaseAdAdapter<?, AdapterAdRewardListener>) baseAdAdapter, i, str, j5Var);
    }

    @Override // org.json.k7
    protected void a(IronSourceError ironSourceError) {
        l2.a aVarA = this.o.getLoadingData().a();
        if (aVarA == l2.a.AUTOMATIC_LOAD_AFTER_CLOSE || aVarA == l2.a.AUTOMATIC_LOAD_WHILE_SHOW) {
            this.t.a(false, (AdInfo) null);
        } else {
            super.a(ironSourceError);
        }
    }

    protected rp b(NetworkSettings networkSettings, BaseAdAdapter<?, AdapterAdRewardListener> baseAdAdapter, int i, String str, j5 j5Var) {
        return new rp(this, new j1(IronSource.AD_UNIT.REWARDED_VIDEO, this.o.getUserId(), i, this.g, str, this.e, this.f, networkSettings, this.o.getSmashLoadTimeout()), baseAdAdapter, j5Var, this);
    }

    @Override // org.json.k7
    protected JSONObject b(NetworkSettings networkSettings) {
        return networkSettings.getRewardedVideoSettings();
    }

    @Override // org.json.k7
    protected i2 g() {
        return new wp();
    }

    @Override // org.json.k7
    protected String l() {
        return IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
    }

    @Override // org.json.k7
    protected String o() {
        return IronSourceConstants.OPW_RV_MANAGER_NAME;
    }

    @Override // org.json.k7
    protected boolean q() {
        return this.o.getLoadingData().a() == l2.a.MANUAL;
    }

    @Override // org.json.k7
    protected boolean t() {
        return this.o.getLoadingData().a() == l2.a.AUTOMATIC_LOAD_WHILE_SHOW;
    }
}
