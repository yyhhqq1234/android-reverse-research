package org.json.unity.androidbridge;

import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
public class AndroidBridgeUtilities {
    private static final ExecutorService callbackExecutor = Executors.newSingleThreadExecutor();

    public static HashMap<String, String> getHashMapFromJsonString(String jsonStr) {
        HashMap<String, String> map = new HashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(jsonStr);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return map;
    }

    public static String parseErrorToEvent(int code, String msg) {
        HashMap map = new HashMap();
        try {
            map.put(AndroidBridgeConstants.ERROR_CODE, String.valueOf(code));
            map.put(AndroidBridgeConstants.ERROR_DESCRIPTION, msg);
            return new JSONObject(map).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String parseIronSourceError(IronSourceError ironSourceError) {
        return ironSourceError != null ? parseErrorToEvent(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage()) : "";
    }

    public static String getPlacememtJson(Placement placement) {
        HashMap map = new HashMap();
        try {
            map.put(AndroidBridgeConstants.PLACEMENT_ID, String.valueOf(placement.getCom.ironsource.y8.j java.lang.String()));
            map.put(AndroidBridgeConstants.PLACEMENT_NAME, placement.getCom.ironsource.oo.d java.lang.String());
            map.put(AndroidBridgeConstants.PLACEMENT_REWARDED_AMOUNT, String.valueOf(placement.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_AMOUNT java.lang.String()));
            map.put(AndroidBridgeConstants.PLACEMENT_REWARDED_NAME, placement.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String());
            return new JSONObject(map).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getAdInfoString(AdInfo adInfo) {
        return adInfo == null ? "" : adInfo.toString();
    }

    public static String getImpressionDataString(ImpressionData impressionData) {
        return impressionData == null ? "" : impressionData.getAllData().toString();
    }

    public static void postBackgroundTask(Runnable runnable) {
        ExecutorService executorService = callbackExecutor;
        if (executorService.isShutdown()) {
            return;
        }
        executorService.submit(runnable);
    }
}
