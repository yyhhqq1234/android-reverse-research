package com.netease.epay.sdk.base.core;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import com.netease.epay.sdk.base.BuildConfig;

/* loaded from: classes.dex */
public class SdkConfig {
    public static ColorStateList btnColor;
    public static ColorStateList btnTextColor;
    public static boolean isDebug = false;
    public static boolean isLogEnable = false;
    private static String url = BuildConfig.urlPrefix;
    public static final int[] BTN_COLOR = {-1819349, -503489, -1996992193};
    public static final int[] BTN_TEXT_COLOR = {-1, -1, -1};
    public static final int SDK_TITLE_VIEW_BACKGROUND_COLOR = -526345;
    public static int TitleBarBackgroundColor = SDK_TITLE_VIEW_BACKGROUND_COLOR;
    public static int TitleBarTextColor = -12303292;
    public static int StateBarColor = TitleBarBackgroundColor;

    public static void setEpaySdkUrl(Context context, String sdkUrl) {
        if (context != null && context.getPackageName() != null && context.getPackageName().startsWith(BaseConstants.EPAY_APP_PKG_NAME)) {
            url = sdkUrl;
        }
    }

    public static String getUrl() {
        return url;
    }

    public static int getMainColor() {
        return btnColor == null ? BTN_COLOR[1] : btnColor.getColorForState(new int[]{R.attr.state_enabled}, BTN_COLOR[1]);
    }
}
