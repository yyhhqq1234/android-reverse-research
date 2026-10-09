package org.json.adapters.admob.banner;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.nearby.messages.Strategy;
import org.json.mediationsdk.AdapterUtils;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobNativeBannerViewHandler {
    private final NativeAdView mAdView;
    private FrameLayout.LayoutParams mLayoutParams;
    private NativeTemplateType mTemplateType;

    public AdMobNativeBannerViewHandler(ISBannerSize iSBannerSize, NativeTemplateType nativeTemplateType, Context context) {
        this.mTemplateType = nativeTemplateType;
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
            case "RECTANGLE":
                this.mLayoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, Strategy.TTL_SECONDS_DEFAULT), AdapterUtils.dpToPixels(context, IronSourceConstants.INTERSTITIAL_DAILY_CAPPED));
                break;
            case "LARGE":
                this.mLayoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 320), AdapterUtils.dpToPixels(context, 90));
                break;
            case "SMART":
            case "BANNER":
                this.mLayoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 320), AdapterUtils.dpToPixels(context, 50));
                break;
        }
        this.mLayoutParams.gravity = 17;
        this.mAdView = (NativeAdView) ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(this.mTemplateType.getLayoutId(), (ViewGroup) null);
    }

    public FrameLayout.LayoutParams getLayoutParams() {
        return this.mLayoutParams;
    }

    public NativeAdView getNativeAdView() {
        return this.mAdView;
    }
}
