package com.netease.epay.sdk.base.util;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.netease.epay.sdk.base.core.CoreData;

/* loaded from: classes.dex */
public class ToastUtil {
    public static void show(Context ctx, String str) {
        if (ctx == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (CoreData.bizType > 0 || CoreData.isOnWalletMode) {
            Toast makeText = Toast.makeText(ctx.getApplicationContext(), str, 0);
            makeText.setGravity(17, 0, 0);
            makeText.show();
        }
    }
}
