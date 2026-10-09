package org.json;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.ads.nativead.internal.InternalNativeAdListener;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\u00020\u0004B=\u0012\u0010\u0010+\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0005\u0018\u00010*\u0012\u0006\u0010-\u001a\u00020,\u0012\b\u0010.\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u00100\u001a\u00020/\u0012\b\u00102\u001a\u0004\u0018\u000101¢\u0006\u0004\b3\u00104J<\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\b\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0014J\b\u0010\u0011\u001a\u00020\u0010H\u0014J\u0010\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017J \u0010\u0015\u001a\u00020\u00142\f\u0010\u001a\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014J\u0012\u0010\u0015\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0014J\b\u0010\u001f\u001a\u00020\u0014H\u0014J\u001c\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010\u000f\u001a\u00020$2\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\b\u0010&\u001a\u00020%H\u0014J\b\u0010'\u001a\u00020\u000bH\u0014J\b\u0010(\u001a\u00020%H\u0014J\b\u0010)\u001a\u00020\u000bH\u0014¨\u00065"}, d2 = {"Lcom/ironsource/xl;", "Lcom/ironsource/k7;", "Lcom/ironsource/bm;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;", "Lcom/ironsource/o2;", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", oq.b, "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;", "adapter", "", "sessionDepth", "", "currentAuctionId", "Lcom/ironsource/j5;", "item", "b", "Lcom/ironsource/i2;", "g", "Lcom/ironsource/mediationsdk/model/Placement;", "placement", "", "a", "M", "Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;", "nativeAdListener", "Lcom/ironsource/n7;", "smash", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "Lcom/ironsource/y1;", NotificationCompat.CATEGORY_EVENT, "", "", "Lorg/json/JSONObject;", "", "v", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, "H", "l", "", "providersList", "Lcom/ironsource/ol;", vf.p, "userId", "Lcom/ironsource/nj;", "publisherDataHolder", "Lcom/ironsource/mediationsdk/IronSourceSegment;", y3.i, "<init>", "(Ljava/util/List;Lcom/ironsource/ol;Ljava/lang/String;Lcom/ironsource/nj;Lcom/ironsource/mediationsdk/IronSourceSegment;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class xl extends k7<bm, AdapterAdListener> implements o2 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xl(List<? extends NetworkSettings> list, ol configs, String str, nj publisherDataHolder, IronSourceSegment ironSourceSegment) {
        super(new yl(str, list, configs), publisherDataHolder, ironSourceSegment);
        Intrinsics.checkNotNullParameter(configs, "configs");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
    }

    @Override // org.json.k7
    protected void G() {
    }

    @Override // org.json.k7
    protected boolean H() {
        return false;
    }

    public final void M() {
        zt ztVar;
        int iIntValue;
        wk wkVar;
        IronLog.INTERNAL.verbose();
        try {
            bm bmVar = (bm) this.a.d();
            if (bmVar != null) {
                Integer numR = bmVar.r();
                if (numR == null) {
                    iIntValue = this.C.a(this.o.getAdUnit());
                } else {
                    Intrinsics.checkNotNullExpressionValue(numR, "it.sessionDepth ?: sessi…epth(mManagerData.adUnit)");
                    iIntValue = numR.intValue();
                }
                b2 b2Var = this.s;
                if (b2Var != null && (wkVar = b2Var.g) != null) {
                    wkVar.a(iIntValue);
                }
                bmVar.P();
                this.a.a(null);
                this.a.b(null);
            }
            this.i = null;
            a(k7.f.NONE);
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(b(str));
            b2 b2Var2 = this.s;
            if (b2Var2 == null || (ztVar = b2Var2.k) == null) {
                return;
            }
            ztVar.f(str);
        }
    }

    @Override // org.json.k7
    public /* bridge */ /* synthetic */ n7 a(NetworkSettings networkSettings, BaseAdAdapter baseAdAdapter, int i, String str, j5 j5Var) {
        return b(networkSettings, (BaseAdAdapter<?, AdapterAdListener>) baseAdAdapter, i, str, j5Var);
    }

    @Override // org.json.k7, org.json.a2
    public Map<String, Object> a(y1 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> data = super.a(event);
        Placement placement = this.i;
        if (placement != null) {
            Intrinsics.checkNotNullExpressionValue(data, "data");
            data.put("placement", placement.getCom.ironsource.oo.d java.lang.String());
        }
        UUID uuid = this.w;
        if (uuid != null) {
            Intrinsics.checkNotNullExpressionValue(data, "data");
            data.put("objectId", uuid);
        }
        Intrinsics.checkNotNullExpressionValue(data, "data");
        return data;
    }

    public final void a(InternalNativeAdListener nativeAdListener) {
        Intrinsics.checkNotNullParameter(nativeAdListener, "nativeAdListener");
        a(new wl(nativeAdListener));
    }

    @Override // org.json.k7
    protected void a(IronSourceError error) {
        this.t.a(error);
    }

    public final void a(Placement placement) {
        String str;
        int iB;
        IronLog.INTERNAL.verbose("placement = " + placement);
        if (placement == null || TextUtils.isEmpty(placement.getCom.ironsource.oo.d java.lang.String())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Object[] objArr = new Object[1];
            objArr[0] = placement == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load native ad - %s", Arrays.copyOf(objArr, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            iB = x1.b(this.o.getAdUnit());
        } else if (this.E.b(ContextProvider.getInstance().getApplicationContext(), placement, this.o.getAdUnit())) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            str = String.format("placement %s is capped", Arrays.copyOf(new Object[]{placement.getCom.ironsource.oo.d java.lang.String()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            iB = x1.f(this.o.getAdUnit());
        } else {
            str = null;
            iB = 510;
        }
        if (TextUtils.isEmpty(str)) {
            this.i = placement;
            A();
        } else {
            IronLog.API.error(b(str));
            a(iB, str, false);
        }
    }

    @Override // org.json.k7
    protected void a(n7<?> smash, AdInfo adInfo) {
        if (smash instanceof bm) {
            bm bmVar = (bm) smash;
            this.t.a(bmVar.getAdapterNativeAdData(), bmVar.getNativeAdViewBinder(), adInfo);
        }
    }

    protected bm b(NetworkSettings providerSettings, BaseAdAdapter<?, AdapterAdListener> adapter, int sessionDepth, String currentAuctionId, j5 item) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(currentAuctionId, "currentAuctionId");
        Intrinsics.checkNotNullParameter(item, "item");
        return new bm(this, new j1(IronSource.AD_UNIT.NATIVE_AD, this.o.getUserId(), sessionDepth, this.g, currentAuctionId, this.e, this.f, providerSettings, this.o.getSmashLoadTimeout()), adapter, this.i, item, this);
    }

    @Override // org.json.k7
    protected JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject nativeAdSettings = providerSettings.getNativeAdSettings();
        Intrinsics.checkNotNullExpressionValue(nativeAdSettings, "providerSettings.nativeAdSettings");
        return nativeAdSettings;
    }

    @Override // org.json.k7
    protected i2 g() {
        return new ya();
    }

    @Override // org.json.k7
    protected String l() {
        return "NA";
    }

    @Override // org.json.k7
    protected String o() {
        return IronSourceConstants.OPW_NT_MANAGER_NAME;
    }

    @Override // org.json.k7
    protected boolean v() {
        return false;
    }
}
