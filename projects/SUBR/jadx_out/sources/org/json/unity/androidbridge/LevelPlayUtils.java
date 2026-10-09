package org.json.unity.androidbridge;

import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.LevelPlayAdSize;
import com.unity3d.mediation.LevelPlayConfiguration;
import com.unity3d.mediation.LevelPlayInitError;
import org.json.JSONObject;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.oo;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
class LevelPlayUtils {
    LevelPlayUtils() {
    }

    public static String adInfoToString(LevelPlayAdInfo adInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adUnitId", adInfo.getAdUnitId());
            jSONObject.put("adUnitName", adInfo.getAdUnitName());
            jSONObject.put(y8.h.O, adSizeToString(adInfo.getAdSize()));
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, adInfo.getAdFormat());
            jSONObject.put(oo.d, adInfo.getPlacementName());
            jSONObject.put("auctionId", adInfo.getAuctionId());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_COUNTRY, adInfo.getCountry());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_ABTEST, adInfo.getAb());
            jSONObject.put("segmentName", adInfo.getSegmentName());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_AD_NETWORK, adInfo.getAdNetwork());
            jSONObject.put("instanceName", adInfo.getInstanceName());
            jSONObject.put("instanceId", adInfo.getInstanceId());
            jSONObject.put("revenue", adInfo.getRevenue());
            jSONObject.put("precision", adInfo.getPrecision());
            jSONObject.put(ImpressionData.IMPRESSION_DATA_KEY_ENCRYPTED_CPM, adInfo.getEncryptedCPM());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String configurationToString(LevelPlayConfiguration config) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isAdQualityEnabled", config.getIsAdQualityEnabled());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String initErrorToString(LevelPlayInitError error) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, error.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_ERROR_CODE java.lang.String());
            jSONObject.put("errorMessage", error.getErrorMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String adErrorToString(LevelPlayAdError error) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, error.getErrorCode());
            jSONObject.put("errorMessage", error.getErrorMessage());
            jSONObject.put("adUnitId", error.getAdUnitId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    private static String adSizeToString(LevelPlayAdSize adSize) {
        if (adSize == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("description", adSize.getDescription());
            jSONObject.put("width", adSize.getWidth());
            jSONObject.put("height", adSize.getHeight());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
