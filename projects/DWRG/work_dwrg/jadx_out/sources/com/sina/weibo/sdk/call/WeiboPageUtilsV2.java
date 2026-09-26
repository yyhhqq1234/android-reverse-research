package com.sina.weibo.sdk.call;

import android.content.Context;
import android.text.TextUtils;
import com.sina.weibo.sdk.constant.WBPageConstants;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class WeiboPageUtilsV2 {
    private WeiboPageUtilsV2() {
    }

    public static void postNewWeibo(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.SENDWEIBO);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.SENDWEIBO);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewNearbyPeople(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.NEARBYPEOPLE);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.NEARBYPEOPLE);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewNearbyWeibo(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.NEARBYWEIBO);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.NEARBYWEIBO);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewUserInfo(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null || (TextUtils.isEmpty(params.get("uid")) && TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.NICK)))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.UID_NICK_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.USERINFO);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.USERINFO);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewUsertrends(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null || TextUtils.isEmpty(params.get("uid"))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.UID_NICK_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.USERTRENDS);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.USERTRENDS);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewPageInfo(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null || TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.PAGEID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEINFO);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.PAGEINFO);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewPageProductList(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        int count;
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.PAGEID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.CARDID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        try {
            count = Integer.parseInt(params.get(WBPageConstants.ParamKey.COUNT));
        } catch (NumberFormatException e) {
            count = -1;
        }
        if (count < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEPRODUCTLIST);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.PAGEPRODUCTLIST);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewPageUserList(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        int count;
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.PAGEID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.CARDID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        try {
            count = Integer.parseInt(params.get(WBPageConstants.ParamKey.COUNT));
        } catch (NumberFormatException e) {
            count = -1;
        }
        if (count < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEUSERLIST);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.PAGEUSERLIST);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewPageWeiboList(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        int count;
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.PAGEID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.CARDID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        try {
            count = Integer.parseInt(params.get(WBPageConstants.ParamKey.COUNT));
        } catch (NumberFormatException e) {
            count = -1;
        }
        if (count < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEWEIBOLIST);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.PAGEWEIBOLIST);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewPagePhotoList(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        int count;
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.PAGEID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.CARDID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        try {
            count = Integer.parseInt(params.get(WBPageConstants.ParamKey.COUNT));
        } catch (NumberFormatException e) {
            count = -1;
        }
        if (count < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEPHOTOLIST);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.PAGEPHOTOLIST);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void viewPageDetailInfo(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.PAGEID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.CARDID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEDETAILINFO);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.PAGEDETAILINFO);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void openInWeiboBrowser(Context context, String url, String sinainternalbrowser, String extParam, String packageName) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(url)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.URL_ERROR);
        }
        if (!TextUtils.isEmpty(sinainternalbrowser) && !"topnav".equals(sinainternalbrowser) && !"default".equals(sinainternalbrowser) && !"fullscreen".equals(sinainternalbrowser)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.SINAINTERNALBROWSER);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.BROWSER);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put("url", url);
        paramMap.put(WBPageConstants.ParamKey.SINAINTERNALBROWSER, sinainternalbrowser);
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        if (!TextUtils.isEmpty(packageName)) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.BROWSER);
            if (paramMap != null) {
                packageuri.append(CommonUtils.buildUriQuery(paramMap));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), packageName);
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void displayInWeiboMap(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        String lon = "";
        String lat = "";
        String offset = "";
        if (params != null) {
            String lon2 = params.get(WBPageConstants.ParamKey.LONGITUDE);
            lon = lon2;
            String lat2 = params.get(WBPageConstants.ParamKey.LATITUDE);
            lat = lat2;
            String offset2 = params.get(WBPageConstants.ParamKey.OFFSET);
            offset = offset2;
        }
        String packageName = null;
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            packageName = params.get("packagename");
        }
        if (params != null) {
            openInWeiboBrowser(context, String.format("http://weibo.cn/dpool/ttt/maps.php?xy=%s,%s&amp;size=320x320&amp;offset=%s", lon, lat, offset), "default", params.get(WBPageConstants.ParamKey.EXTPARAM), packageName);
        }
    }

    public static void openQrcodeScanner(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.QRCODE);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.QRCODE);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }

    public static void weiboDetail(Context context, HashMap<String, String> params) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (params == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.MBLOGID_ERROR);
        }
        if (TextUtils.isEmpty(params.get(WBPageConstants.ParamKey.MBLOGID))) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.MBLOGID_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.MBLOGDETAIL);
        if (params != null) {
            uri.append(CommonUtils.buildUriQuery(params));
        }
        if (params != null && !TextUtils.isEmpty(params.get("packagename"))) {
            StringBuilder packageuri = new StringBuilder(WBPageConstants.Scheme.MBLOGDETAIL);
            if (params != null) {
                packageuri.append(CommonUtils.buildUriQuery(params));
            }
            CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), params.get("packagename"));
            return;
        }
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString(), null);
    }
}
