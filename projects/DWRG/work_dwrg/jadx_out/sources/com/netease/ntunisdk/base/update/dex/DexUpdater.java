package com.netease.ntunisdk.base.update.dex;

import android.text.TextUtils;
import com.netease.ntunisdk.base.UniSdkUtils;
import com.netease.ntunisdk.base.update.common.CommonUpdater;
import com.netease.ntunisdk.base.update.common.UniSp;
import java.io.IOException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class DexUpdater {
    private static final String DEFAULT_GET_VERSION_URL = "https://unisdk.update.netease.com/unipatch/";
    static final String SP_NAME = "unisdk_dynamic_info";
    private static final String TAG = "DexUpdater";

    DexUpdater() {
    }

    static JSONObject reqUniVersion(String channel, String version) throws IOException {
        String url = getUrl();
        StringBuilder sb = new StringBuilder(url);
        if (!url.endsWith("/")) {
            sb.append("/");
        }
        sb.append("ad/").append(channel).append("/").append(version).append("/patch.json");
        String url2 = sb.toString();
        UniSdkUtils.d(TAG, ": " + url2);
        return CommonUpdater.getVersion(url2);
    }

    static String getUrl() {
        String url = UniSp.getSpString(SP_NAME, "check_url", (String) null);
        if (TextUtils.isEmpty(url)) {
            return DEFAULT_GET_VERSION_URL;
        }
        return url;
    }
}
