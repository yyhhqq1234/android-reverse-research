package com.netease.epay.sdk.base.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.netease.epay.sdk.base.ui.ServeCompactActivity;

/* loaded from: classes.dex */
public class JumpUtil {
    public static void go2Activity(Context ctx, Class target, Bundle bundle) {
        if (ctx != null && target != null) {
            Intent intent = new Intent(ctx, (Class<?>) target);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            ctx.startActivity(intent);
        }
    }

    public static void go2Activity(Activity ctx, Class target, Bundle bundle, int requestCode) {
        if (ctx != null && target != null) {
            Intent intent = new Intent(ctx, (Class<?>) target);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (requestCode > 0) {
                ctx.startActivityForResult(intent, requestCode);
            } else {
                ctx.startActivity(intent);
            }
        }
    }

    public static void gotoServePact(Context ctx, String title, String url, boolean needSecondTitle) {
        if (ctx != null) {
            Intent intent = new Intent(ctx, (Class<?>) ServeCompactActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString(ServeCompactActivity.TITLE, title);
            bundle.putString(ServeCompactActivity.URL, url);
            bundle.putBoolean(ServeCompactActivity.NEED_SENCOND_TITLE, needSecondTitle);
            intent.putExtras(bundle);
            ctx.startActivity(intent);
        }
    }
}
