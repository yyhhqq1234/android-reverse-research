package com.ta.utdid2.aid;

import android.content.Context;
import android.util.Log;
import com.ta.utdid2.android.utils.NetworkUtils;
import com.ta.utdid2.android.utils.StringUtils;
import com.ta.utdid2.android.utils.TimeUtils;
import com.ut.device.AidCallback;
import com.ut.device.AidConstants;

/* loaded from: classes.dex */
public class AidManager {
    private static final int NUM_DAY_OUT_OF_DATE = 1;
    private Context mContext;
    private static AidManager sAidManager = null;
    private static final String TAG = AidManager.class.getName();

    public static synchronized AidManager getInstance(Context context) {
        AidManager aidManager;
        synchronized (AidManager.class) {
            if (sAidManager == null) {
                sAidManager = new AidManager(context);
            }
            aidManager = sAidManager;
        }
        return aidManager;
    }

    private AidManager(Context context) {
        this.mContext = context;
    }

    public void requestAid(String str, String str2, String str3, AidCallback aidCallback) {
        if (aidCallback == null) {
            Log.e(TAG, "callback is null!");
            return;
        }
        if (this.mContext == null || StringUtils.isEmpty(str) || StringUtils.isEmpty(str2)) {
            Log.e(TAG, "mContext:" + this.mContext + "; callback:" + aidCallback + "; has appName:" + (!StringUtils.isEmpty(str)) + "; has token:" + (StringUtils.isEmpty(str2) ? false : true));
            aidCallback.onAidEventChanged(1002, "");
            return;
        }
        String aidValueFromSP = AidStorageController.getAidValueFromSP(this.mContext, str, str2);
        if (!StringUtils.isEmpty(aidValueFromSP) && TimeUtils.isUpToDate(AidStorageController.getAidGenTimeFromSP(this.mContext, str, str2), 1)) {
            aidCallback.onAidEventChanged(1001, aidValueFromSP);
        } else if (NetworkUtils.isConnected(this.mContext)) {
            AidRequester.getInstance(this.mContext).postRestAsync(str, str2, str3, aidValueFromSP, aidCallback);
        } else {
            aidCallback.onAidEventChanged(AidConstants.EVENT_NETWORK_ERROR, aidValueFromSP);
        }
    }

    public String getValue(String str, String str2, String str3) {
        if (this.mContext == null || StringUtils.isEmpty(str) || StringUtils.isEmpty(str2)) {
            Log.e(TAG, "mContext:" + this.mContext + "; has appName:" + (!StringUtils.isEmpty(str)) + "; has token:" + (StringUtils.isEmpty(str2) ? false : true));
            return "";
        }
        String aidValueFromSP = AidStorageController.getAidValueFromSP(this.mContext, str, str2);
        if ((StringUtils.isEmpty(aidValueFromSP) || !TimeUtils.isUpToDate(AidStorageController.getAidGenTimeFromSP(this.mContext, str, str2), 1)) && NetworkUtils.isConnected(this.mContext)) {
            return genAidValue(str, str2, str3);
        }
        return aidValueFromSP;
    }

    private synchronized String genAidValue(String str, String str2, String str3) {
        String str4;
        if (this.mContext == null) {
            Log.e(TAG, "no context!");
            str4 = "";
        } else {
            str4 = "";
            if (NetworkUtils.isConnected(this.mContext)) {
                str4 = AidRequester.getInstance(this.mContext).postRest(str, str2, str3, AidStorageController.getAidValueFromSP(this.mContext, str, str2));
            }
            AidStorageController.setAidValueToSP(this.mContext, str, str4, str2);
        }
        return str4;
    }
}
