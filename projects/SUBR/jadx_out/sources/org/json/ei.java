package org.json;

import java.util.List;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class ei extends i7<gi, AdapterAdInteractionListener> {
    ei(ye yeVar, xe xeVar, List<NetworkSettings> list, ji jiVar, String str, nj njVar, IronSourceSegment ironSourceSegment) {
        super(yeVar, xeVar, new fi(str, list, jiVar), njVar, ironSourceSegment);
    }

    public ei(List<NetworkSettings> list, ji jiVar, String str, nj njVar, IronSourceSegment ironSourceSegment) {
        super(new fi(str, list, jiVar), njVar, ironSourceSegment);
    }

    @Override // org.json.k7
    protected /* bridge */ /* synthetic */ n7 a(NetworkSettings networkSettings, BaseAdAdapter baseAdAdapter, int i, String str, j5 j5Var) {
        return b(networkSettings, (BaseAdAdapter<?, AdapterAdInteractionListener>) baseAdAdapter, i, str, j5Var);
    }

    protected gi b(NetworkSettings networkSettings, BaseAdAdapter<?, AdapterAdInteractionListener> baseAdAdapter, int i, String str, j5 j5Var) {
        return new gi(this, new j1(IronSource.AD_UNIT.INTERSTITIAL, this.o.getUserId(), i, this.g, str, this.e, this.f, networkSettings, this.o.getSmashLoadTimeout()), baseAdAdapter, j5Var, this);
    }

    @Override // org.json.k7
    protected JSONObject b(NetworkSettings networkSettings) {
        return networkSettings.getInterstitialSettings();
    }

    @Override // org.json.k7
    protected i2 g() {
        return new ni();
    }

    @Override // org.json.k7
    protected String l() {
        return IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
    }

    @Override // org.json.k7
    protected String o() {
        return IronSourceConstants.OPW_IS_MANAGER_NAME;
    }
}
