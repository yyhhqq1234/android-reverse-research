package com.netease.mpay.widget;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.netease.mpay.Cdo;
import com.netease.mpay.R;

/* loaded from: classes.dex */
public class au {
    public static boolean a(Context context, String str, String str2) {
        try {
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str2));
            intent.putExtra("sms_body", str);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            Cdo.a((Throwable) e);
            new s(context).a(context.getString(R.string.netease_mpay__send_sms_failed));
            return false;
        } catch (Exception e2) {
            Cdo.a((Throwable) e2);
            new s(context).a(context.getString(R.string.netease_mpay__send_sms_failed));
            return false;
        }
    }
}
