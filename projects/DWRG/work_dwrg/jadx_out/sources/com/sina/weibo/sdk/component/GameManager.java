package com.sina.weibo.sdk.component;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.exception.WeiboHttpException;
import com.sina.weibo.sdk.net.HttpManager;
import com.sina.weibo.sdk.net.NetStateManager;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;

/* loaded from: classes.dex */
public class GameManager {
    public static final String DEFAULT_CHARSET = "UTF-8";
    private static final String HTTP_METHOD_GET = "GET";
    private static final String HTTP_METHOD_POST = "POST";
    private static final String MULTIPART_FORM_DATA = "multipart/form-data";
    private static final String TAG = "GameManager";
    private static StringBuffer URL = new StringBuffer("https://api.weibo.com/2/proxy/darwin/graph/game/");
    private static final String BOUNDARY = HttpManager.getBoundry();
    private static String URL_ACHIEVEMENT_ADD_UPDATE = ((Object) URL) + "achievement/add.json";
    private static String URL_ACHIEVEMENT_RELATION_ADD_UPDATE = ((Object) URL) + "achievement/gain/add.json";
    private static String URL_ACHIEVEMENT_SCORE_ADD_UPDATE = ((Object) URL) + "score/add.json";
    private static String URL_ACHIEVEMENT_READ_PLAYER_SCORE = ((Object) URL) + "score/read_player.json";
    private static String URL_ACHIEVEMENT_READ_PLAYER_FRIENDS = ((Object) URL) + "score/read_player_friends.json";
    private static String URL_ACHIEVEMENT_USER_GAIN = ((Object) URL) + "achievement/user_gain.json";
    private static String INVITATION_URL = "http://widget.weibo.com/invitation/app.php?";
    private static String INVITATION_ONE_FRINED_URL = "http://widget.weibo.com/invitation/appinfo.php?";

    public static String AddOrUpdateGameAchievement(Context context, WeiboParameters params) {
        SimpleDateFormat myFmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        params.put("updated_time", myFmt.format(date));
        String time = (String) params.get(WBConstants.GAME_PARAMS_GAME_CREATE_TIME);
        if (TextUtils.isEmpty(time)) {
            params.put(WBConstants.GAME_PARAMS_GAME_CREATE_TIME, myFmt.format(date));
        }
        HttpResponse response = requestHttpExecute(context, URL_ACHIEVEMENT_ADD_UPDATE, "POST", params);
        String ans = HttpManager.readRsponse(response);
        LogUtil.d(TAG, "Response : " + ans);
        return ans;
    }

    public static String addOrUpdateGameAchievementRelation(Context context, WeiboParameters params) {
        SimpleDateFormat myFmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        params.put("updated_time", myFmt.format(date));
        String create_time = (String) params.get(WBConstants.GAME_PARAMS_GAME_CREATE_TIME);
        if (TextUtils.isEmpty(create_time)) {
            params.put(WBConstants.GAME_PARAMS_GAME_CREATE_TIME, myFmt.format(date));
        }
        HttpResponse response = requestHttpExecute(context, URL_ACHIEVEMENT_RELATION_ADD_UPDATE, "POST", params);
        String ans = HttpManager.readRsponse(response);
        LogUtil.d(TAG, "Response : " + ans);
        return ans;
    }

    public static String addOrUpdateAchievementScore(Context context, String access_token, String appKey, String game_id, String user_id, String score) {
        WeiboParameters params = new WeiboParameters("");
        if (!TextUtils.isEmpty(access_token)) {
            params.put("access_token", access_token);
        }
        if (!TextUtils.isEmpty(appKey)) {
            params.put("source", appKey);
        }
        if (!TextUtils.isEmpty(game_id)) {
            params.put(WBConstants.GAME_PARAMS_GAME_ID, game_id);
        }
        if (!TextUtils.isEmpty(user_id)) {
            params.put("uid", user_id);
        }
        if (!TextUtils.isEmpty(score)) {
            params.put(WBConstants.GAME_PARAMS_SCORE, score);
        }
        SimpleDateFormat myFmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        params.put("updated_time", myFmt.format(date));
        String create_time = (String) params.get(WBConstants.GAME_PARAMS_GAME_CREATE_TIME);
        if (TextUtils.isEmpty(create_time)) {
            params.put(WBConstants.GAME_PARAMS_GAME_CREATE_TIME, myFmt.format(date));
        }
        HttpResponse response = requestHttpExecute(context, URL_ACHIEVEMENT_SCORE_ADD_UPDATE, "POST", params);
        String ans = HttpManager.readRsponse(response);
        LogUtil.d(TAG, "Response : " + ans);
        return ans;
    }

    public static String readPlayerScoreInfo(Context context, String access_token, String appKey, String game_id, String user_id) {
        WeiboParameters params = new WeiboParameters("");
        if (!TextUtils.isEmpty(access_token)) {
            params.put("access_token", access_token);
        }
        if (!TextUtils.isEmpty(appKey)) {
            params.put("source", appKey);
        }
        if (!TextUtils.isEmpty(game_id)) {
            params.put(WBConstants.GAME_PARAMS_GAME_ID, game_id);
        }
        if (!TextUtils.isEmpty(user_id)) {
            params.put("uid", user_id);
        }
        HttpResponse response = requestHttpExecute(context, URL_ACHIEVEMENT_READ_PLAYER_SCORE, "GET", params);
        String ans = HttpManager.readRsponse(response);
        LogUtil.d(TAG, "Response : " + ans);
        return ans;
    }

    public static String readPlayerFriendsScoreInfo(Context context, String access_token, String appKey, String game_id, String user_id) {
        WeiboParameters params = new WeiboParameters("");
        if (!TextUtils.isEmpty(access_token)) {
            params.put("access_token", access_token);
        }
        if (!TextUtils.isEmpty(appKey)) {
            params.put("source", appKey);
        }
        if (!TextUtils.isEmpty(game_id)) {
            params.put(WBConstants.GAME_PARAMS_GAME_ID, game_id);
        }
        if (!TextUtils.isEmpty(user_id)) {
            params.put("uid", user_id);
        }
        Date date = new Date();
        Timestamp nousedate = new Timestamp(date.getTime());
        params.put(WBConstants.GAME_PARAMS_GAME_CREATE_TIME, nousedate);
        HttpResponse response = requestHttpExecute(context, URL_ACHIEVEMENT_READ_PLAYER_FRIENDS, "GET", params);
        String ans = HttpManager.readRsponse(response);
        LogUtil.d(TAG, "Response : " + ans);
        return ans;
    }

    public static String readPlayerAchievementGain(Context context, String access_token, String appKey, String game_id, String user_id) {
        WeiboParameters params = new WeiboParameters("");
        if (!TextUtils.isEmpty(access_token)) {
            params.put("access_token", access_token);
        }
        if (!TextUtils.isEmpty(appKey)) {
            params.put("source", appKey);
        }
        if (!TextUtils.isEmpty(game_id)) {
            params.put(WBConstants.GAME_PARAMS_GAME_ID, game_id);
        }
        if (!TextUtils.isEmpty(user_id)) {
            params.put("uid", user_id);
        }
        Date date = new Date();
        Timestamp nousedate = new Timestamp(date.getTime());
        params.put(WBConstants.GAME_PARAMS_GAME_CREATE_TIME, nousedate);
        HttpResponse response = requestHttpExecute(context, URL_ACHIEVEMENT_USER_GAIN, "GET", params);
        String ans = HttpManager.readRsponse(response);
        LogUtil.d(TAG, "Response : " + ans);
        return ans;
    }

    public void invatationWeiboFriendsByList(Context context, String access_token, String appKey, String title, WeiboAuthListener listener) {
        WeiboParameters requestParams = new WeiboParameters(appKey);
        requestParams.put("access_token", access_token);
        requestParams.put("source", appKey);
        String UrlStr = String.valueOf(INVITATION_URL.toString()) + requestParams.encodeUrl();
        GameRequestParam reqParam = new GameRequestParam(context);
        reqParam.setAppKey(appKey);
        reqParam.setToken(access_token);
        reqParam.setLauncher(BrowserLauncher.GAME);
        reqParam.setUrl(UrlStr);
        reqParam.setAuthListener(listener);
        Intent intent = new Intent(context, (Class<?>) WeiboSdkBrowser.class);
        Bundle data = reqParam.createRequestParamBundle();
        data.putString("key_specify_title", title);
        intent.putExtras(data);
        context.startActivity(intent);
    }

    public void invatationWeiboFriendsInOnePage(Context context, String access_token, String appKey, String title, WeiboAuthListener listener, ArrayList<String> userIdList) {
        StringBuffer userIds = new StringBuffer();
        if (userIdList != null) {
            for (int i = 0; i < userIdList.size(); i++) {
                String user = userIdList.get(i);
                if (i == 0) {
                    userIds.append(user);
                } else {
                    userIds.append("," + user);
                }
            }
        }
        WeiboParameters requestParams = new WeiboParameters(appKey);
        requestParams.put("access_token", access_token);
        requestParams.put("source", appKey);
        String UrlStr = String.valueOf(INVITATION_ONE_FRINED_URL.toString()) + requestParams.encodeUrl() + "&uids=" + userIds.toString();
        GameRequestParam reqParam = new GameRequestParam(context);
        reqParam.setAppKey(appKey);
        reqParam.setToken(access_token);
        reqParam.setLauncher(BrowserLauncher.GAME);
        reqParam.setUrl(UrlStr);
        reqParam.setAuthListener(listener);
        Intent intent = new Intent(context, (Class<?>) WeiboSdkBrowser.class);
        Bundle data = reqParam.createRequestParamBundle();
        data.putString("key_specify_title", title);
        intent.putExtras(data);
        context.startActivity(intent);
    }

    private static HttpResponse requestHttpExecute(Context context, String url, String method, WeiboParameters params) {
        HttpClient client = null;
        ByteArrayOutputStream baos = null;
        try {
            try {
                client = HttpManager.getNewHttpClient();
                client.getParams().setParameter("http.route.default-proxy", NetStateManager.getAPN());
                HttpUriRequest request = null;
                if (method.equals("GET")) {
                    String url2 = String.valueOf(url) + "?" + params.encodeUrl();
                    request = new HttpGet(url2);
                    LogUtil.d(TAG, "requestHttpExecute GET Url : " + url2);
                } else if (method.equals("POST")) {
                    LogUtil.d(TAG, "requestHttpExecute POST Url : " + url);
                    HttpPost post = new HttpPost(url);
                    request = post;
                    ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
                    try {
                        if (params.hasBinaryData()) {
                            post.setHeader(HttpHeaders.Names.CONTENT_TYPE, "multipart/form-data; boundary=" + BOUNDARY);
                            HttpManager.buildParams(baos2, params);
                        } else {
                            Object value = params.get("content-type");
                            if (value != null && (value instanceof String)) {
                                params.remove("content-type");
                                post.setHeader(HttpHeaders.Names.CONTENT_TYPE, (String) value);
                            } else {
                                post.setHeader(HttpHeaders.Names.CONTENT_TYPE, "application/x-www-form-urlencoded");
                            }
                            String postParam = params.encodeUrl();
                            LogUtil.d(TAG, "requestHttpExecute POST postParam : " + postParam);
                            baos2.write(postParam.getBytes("UTF-8"));
                        }
                        post.setEntity(new ByteArrayEntity(baos2.toByteArray()));
                        baos = baos2;
                    } catch (IOException e) {
                        e = e;
                        throw new WeiboException(e);
                    } catch (Throwable th) {
                        th = th;
                        baos = baos2;
                        if (baos != null) {
                            try {
                                baos.close();
                            } catch (IOException e2) {
                            }
                        }
                        HttpManager.shutdownHttpClient(client);
                        throw th;
                    }
                } else if (method.equals("DELETE")) {
                    request = new HttpDelete(url);
                }
                HttpResponse response = client.execute(request);
                StatusLine status = response.getStatusLine();
                int statusCode = status.getStatusCode();
                if (statusCode != 200) {
                    String result = HttpManager.readRsponse(response);
                    throw new WeiboHttpException(result, statusCode);
                }
                if (baos != null) {
                    try {
                        baos.close();
                    } catch (IOException e3) {
                    }
                }
                HttpManager.shutdownHttpClient(client);
                return response;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }
}
