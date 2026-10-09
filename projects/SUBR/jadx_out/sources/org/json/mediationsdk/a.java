package org.json.mediationsdk;

import android.app.Activity;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.UUID;
import org.json.JSONObject;
import org.json.jj;
import org.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBindAdViewInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<Listener extends AdapterAdListener> extends BaseAdAdapter<u, Listener> implements AdapterAdFullScreenInterface<Listener>, AdapterBannerInterface<Listener>, AdapterNativeAdInterface<Listener>, AdapterBindAdViewInterface {
    protected AbstractAdapter a;
    protected WeakReference<Listener> b;

    public a(AbstractAdapter abstractAdapter, NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit, UUID uuid) {
        super(ad_unit, networkSettings, uuid);
        this.b = new WeakReference<>(null);
        this.a = abstractAdapter;
    }

    public static a<?> a(AbstractAdapter abstractAdapter, NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit, UUID uuid) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return new z(abstractAdapter, networkSettings);
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            return new o(abstractAdapter, networkSettings);
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            return new j(abstractAdapter, networkSettings);
        }
        if (ad_unit == IronSource.AD_UNIT.NATIVE_AD) {
            return new t(abstractAdapter, networkSettings, uuid);
        }
        IronLog.INTERNAL.error("ad unit not supported - " + ad_unit);
        return null;
    }

    private void a(AdData adData, Listener listener) {
        this.b = new WeakReference<>(listener);
        a(jj.a(adData.getConfiguration()), jj.a(adData.getAdUnitData()), adData);
    }

    private void b(String str) {
        IronLog.INTERNAL.error(a("Method '" + str + "' is not supported for " + getClass().getName()));
    }

    protected String a() {
        return a((String) null);
    }

    protected String a(String str) {
        String string = b().toString();
        if (TextUtils.isEmpty(str)) {
            return string;
        }
        return string + " - " + str;
    }

    protected void a(JSONObject jSONObject) {
        b("destroyAd");
    }

    protected abstract void a(JSONObject jSONObject, JSONObject jSONObject2, AdData adData);

    protected abstract IronSource.AD_UNIT b();

    protected boolean b(JSONObject jSONObject) {
        b("isAdAvailable");
        return false;
    }

    public void c(JSONObject jSONObject) {
        b("onAdViewWillBind");
    }

    public void d(JSONObject jSONObject) {
        b("onAdViewWillBind");
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface, org.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public void destroyAd(AdData adData) {
        a(jj.a(adData.getConfiguration()));
    }

    protected void e(JSONObject jSONObject) {
        b("showAd");
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        return b(jj.a(adData.getConfiguration()));
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize iSBannerSize, Listener listener) {
        a(adData, listener);
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface, org.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public void loadAd(AdData adData, Activity activity, Listener listener) {
        a(adData, listener);
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterBindAdViewInterface
    public void onAdViewBound(AdData adData) {
        c(jj.a(adData.getConfiguration()));
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterBindAdViewInterface
    public void onAdViewWillBind(AdData adData) {
        d(jj.a(adData.getConfiguration()));
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter
    public void releaseMemory() {
        IronLog.INTERNAL.verbose(a());
        AbstractAdapter abstractAdapter = this.a;
        if (abstractAdapter != null) {
            abstractAdapter.releaseMemory(b(), new JSONObject());
            this.a = null;
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Listener listener) {
        this.b = new WeakReference<>(listener);
        e(jj.a(adData.getConfiguration()));
    }
}
