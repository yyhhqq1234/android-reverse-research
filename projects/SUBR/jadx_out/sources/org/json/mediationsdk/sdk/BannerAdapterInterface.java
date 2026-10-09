package org.json.mediationsdk.sdk;

import java.util.Map;
import org.json.JSONObject;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.bidding.BiddingDataCallback;
import org.json.mediationsdk.demandOnly.ISDemandOnlyBannerLayout;

/* JADX INFO: loaded from: classes3.dex */
public interface BannerAdapterInterface extends AdUnitAdapterInterface {
    void collectBannerBiddingData(JSONObject jSONObject, JSONObject jSONObject2, BiddingDataCallback biddingDataCallback);

    void destroyBanner(JSONObject jSONObject);

    int getAdaptiveHeight(int i);

    Map<String, Object> getBannerBiddingData(JSONObject jSONObject, JSONObject jSONObject2);

    void initBannerForBidding(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener);

    void initBanners(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener);

    void loadBanner(JSONObject jSONObject, JSONObject jSONObject2, IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener);

    void loadBannerForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener);

    void loadBannerForDemandOnlyForBidding(JSONObject jSONObject, String str, ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, BannerSmashListener bannerSmashListener);

    void onBannerViewBound(JSONObject jSONObject);

    void onBannerViewWillBind(JSONObject jSONObject);
}
