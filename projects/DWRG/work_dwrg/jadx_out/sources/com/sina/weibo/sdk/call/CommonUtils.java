package com.sina.weibo.sdk.call;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.alipay.sdk.sys.a;
import com.sina.weibo.sdk.constant.WBPageConstants;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes.dex */
class CommonUtils {
    CommonUtils() {
    }

    public static String buildUriQuery(HashMap<String, String> paramsMap) {
        StringBuilder queryBuilder = new StringBuilder();
        Set<String> keySet = paramsMap.keySet();
        for (String key : keySet) {
            String value = paramsMap.get(key);
            if (value != null) {
                queryBuilder.append(a.b).append(key).append("=").append(value);
            }
        }
        String query = queryBuilder.toString();
        return query.replaceFirst(a.b, "?");
    }

    public static void openWeiboActivity(Context context, String action, String uri, String packageName) throws WeiboNotInstalledException {
        try {
            if (packageName != null) {
                Intent intent = new Intent();
                intent.setAction(action);
                intent.setData(Uri.parse(uri));
                intent.setPackage(packageName);
                context.startActivity(intent);
            } else {
                Intent intent2 = new Intent();
                intent2.setAction(action);
                intent2.setData(Uri.parse(uri));
                context.startActivity(intent2);
            }
        } catch (ActivityNotFoundException e) {
            if (packageName != null) {
                try {
                    Intent intent3 = new Intent();
                    intent3.setAction(action);
                    intent3.setData(Uri.parse(uri));
                    context.startActivity(intent3);
                    return;
                } catch (ActivityNotFoundException e2) {
                    throw new WeiboNotInstalledException(WBPageConstants.ExceptionMsg.WEIBO_NOT_INSTALLED);
                }
            }
            throw new WeiboNotInstalledException(WBPageConstants.ExceptionMsg.WEIBO_NOT_INSTALLED);
        }
    }

    public static void openWeiboActivity(Context context, String action, String uri) throws WeiboNotInstalledException {
        try {
            Intent intent = new Intent();
            intent.setAction(action);
            intent.setData(Uri.parse(uri));
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            throw new WeiboNotInstalledException(WBPageConstants.ExceptionMsg.WEIBO_NOT_INSTALLED);
        }
    }
}
