package com.sina.weibo.sdk.call;

import android.content.Context;
import android.text.TextUtils;
import com.sina.weibo.sdk.constant.WBPageConstants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class WeiboPageUtils {
    private WeiboPageUtils() {
    }

    public static void postNewWeibo(Context context, String content, String poiId, String poiName, Position position, String pageId, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.SENDWEIBO);
        HashMap<String, String> paramMap = new HashMap<>();
        try {
            paramMap.put("content", URLEncoder.encode(content, "UTF-8").replaceAll("\\+", "%20"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        paramMap.put(WBPageConstants.ParamKey.POIID, poiId);
        paramMap.put(WBPageConstants.ParamKey.POINAME, poiName);
        if (position != null) {
            paramMap.put(WBPageConstants.ParamKey.LONGITUDE, position.getStrLongitude());
            paramMap.put(WBPageConstants.ParamKey.LATITUDE, position.getStrLatitude());
        }
        paramMap.put(WBPageConstants.ParamKey.PAGEID, pageId);
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewNearbyPeople(Context context, Position position, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.NEARBYPEOPLE);
        HashMap<String, String> paramMap = new HashMap<>();
        if (position != null) {
            paramMap.put(WBPageConstants.ParamKey.LONGITUDE, position.getStrLongitude());
            paramMap.put(WBPageConstants.ParamKey.LATITUDE, position.getStrLatitude());
            paramMap.put(WBPageConstants.ParamKey.OFFSET, position.getStrOffset());
        }
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewNearbyWeibo(Context context, Position position, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.NEARBYWEIBO);
        HashMap<String, String> paramMap = new HashMap<>();
        if (position != null) {
            paramMap.put(WBPageConstants.ParamKey.LONGITUDE, position.getStrLongitude());
            paramMap.put(WBPageConstants.ParamKey.LATITUDE, position.getStrLatitude());
            paramMap.put(WBPageConstants.ParamKey.OFFSET, position.getStrOffset());
        }
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewUserInfo(Context context, String uid, String nick, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(uid) && TextUtils.isEmpty(nick)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.UID_NICK_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.USERINFO);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put("uid", uid);
        paramMap.put(WBPageConstants.ParamKey.NICK, nick);
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewUsertrends(Context context, String uid, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(uid)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.UID_NICK_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.USERTRENDS);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put("uid", uid);
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewPageInfo(Context context, String pageId, String title, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(pageId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEINFO);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.PAGEID, pageId);
        paramMap.put("title", title);
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewPageProductList(Context context, String pageId, String cardId, String title, Integer count, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(pageId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(cardId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        if (count != null && count.intValue() < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEPRODUCTLIST);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.PAGEID, pageId);
        paramMap.put(WBPageConstants.ParamKey.CARDID, cardId);
        paramMap.put("title", title);
        paramMap.put(WBPageConstants.ParamKey.PAGE, "1");
        paramMap.put(WBPageConstants.ParamKey.COUNT, String.valueOf(count));
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewPageUserList(Context context, String pageId, String cardId, String title, Integer count, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(pageId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(cardId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        if (count != null && count.intValue() < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEUSERLIST);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.PAGEID, pageId);
        paramMap.put(WBPageConstants.ParamKey.CARDID, cardId);
        paramMap.put("title", title);
        paramMap.put(WBPageConstants.ParamKey.PAGE, "1");
        paramMap.put(WBPageConstants.ParamKey.COUNT, String.valueOf(count));
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewPageWeiboList(Context context, String pageId, String cardId, String title, Integer count, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(pageId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(cardId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        if (count != null && count.intValue() < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEWEIBOLIST);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.PAGEID, pageId);
        paramMap.put(WBPageConstants.ParamKey.CARDID, cardId);
        paramMap.put("title", title);
        paramMap.put(WBPageConstants.ParamKey.PAGE, "1");
        paramMap.put(WBPageConstants.ParamKey.COUNT, String.valueOf(count));
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewPagePhotoList(Context context, String pageId, String cardId, String title, Integer count, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(pageId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(cardId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        if (count != null && count.intValue() < 0) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.COUNT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEPHOTOLIST);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.PAGEID, pageId);
        paramMap.put(WBPageConstants.ParamKey.CARDID, cardId);
        paramMap.put("title", title);
        paramMap.put(WBPageConstants.ParamKey.PAGE, "1");
        paramMap.put(WBPageConstants.ParamKey.COUNT, String.valueOf(count));
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewPageDetailInfo(Context context, String pageId, String cardId, String title, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(pageId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        if (TextUtils.isEmpty(cardId)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CARDID_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.PAGEDETAILINFO);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.PAGEID, pageId);
        paramMap.put(WBPageConstants.ParamKey.CARDID, cardId);
        paramMap.put("title", title);
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void openInWeiboBrowser(Context context, String url, String sinainternalbrowser, String extParam) throws WeiboNotInstalledException {
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
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void displayInWeiboMap(Context context, Position position, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        String lon = "";
        String lat = "";
        String offset = "";
        if (position != null) {
            lon = position.getStrLongitude();
            lat = position.getStrLatitude();
            offset = position.getStrOffset();
        }
        openInWeiboBrowser(context, String.format("http://weibo.cn/dpool/ttt/maps.php?xy=%s,%s&amp;size=320x320&amp;offset=%s", lon, lat, offset), "default", extParam);
    }

    public static void openQrcodeScanner(Context context, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.QRCODE);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }

    public static void viewNearPhotoList(Context context, String longitude_X, String latitude_Y, Integer count, String extParam) throws WeiboNotInstalledException {
        viewPagePhotoList(context, "100101" + longitude_X + "_" + latitude_Y, "nearphoto", "周边热图", count, extParam);
    }

    public static void viewPoiPhotoList(Context context, String poiid, Integer count, String extParam) throws WeiboNotInstalledException {
        viewPagePhotoList(context, "100101" + poiid, "nearphoto", "周边热图", count, extParam);
    }

    public static void viewPoiPage(Context context, String longitude_X, String latitude_Y, String title, String extParam) throws WeiboNotInstalledException {
        viewPageInfo(context, "100101" + longitude_X + "_" + latitude_Y, title, extParam);
    }

    public static void weiboDetail(Context context, String mblogid, String extParam) throws WeiboNotInstalledException {
        if (context == null) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.CONTEXT_ERROR);
        }
        if (TextUtils.isEmpty(mblogid)) {
            throw new WeiboIllegalParameterException(WBPageConstants.ExceptionMsg.PAGEID_ERROR);
        }
        StringBuilder uri = new StringBuilder(WBPageConstants.Scheme.MBLOGDETAIL);
        HashMap<String, String> paramMap = new HashMap<>();
        paramMap.put(WBPageConstants.ParamKey.MBLOGID, mblogid);
        paramMap.put(WBPageConstants.ParamKey.EXTPARAM, extParam);
        uri.append(CommonUtils.buildUriQuery(paramMap));
        CommonUtils.openWeiboActivity(context, "android.intent.action.VIEW", uri.toString());
    }
}
