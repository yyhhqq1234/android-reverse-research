package com.netease.epay.sdk.base.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class ToastResult {
    private Toast mToast;

    private ToastResult(Context context, boolean isSucc, String text, int duration) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.epaysdk_frag_toastresult, (ViewGroup) null);
        inflate.setBackgroundResource(R.drawable.epaysdk_bg_black_dialog);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_toastresult_msg);
        textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, context.getResources().getDrawable(isSucc ? R.drawable.epaysdk_icon_msg_succ : R.drawable.epaysdk_icon_msg_fail), (Drawable) null, (Drawable) null);
        textView.setText(text);
        this.mToast = new Toast(context);
        this.mToast.setGravity(17, 0, 0);
        this.mToast.setDuration(duration);
        this.mToast.setView(inflate);
    }

    private ToastResult() {
    }

    public static ToastResult makeToast(Context context, boolean isSucc, String text) {
        return makeToast(context, isSucc, text, 0);
    }

    public static ToastResult makeToast(Context context, boolean isSucc, int textRes) {
        String str = null;
        if (context != null) {
            str = context.getResources().getString(textRes);
        }
        return makeToast(context, isSucc, str, 0);
    }

    public static ToastResult makeToast(Context context, boolean isSucc, String text, int duration) {
        if (context == null) {
            return new ToastResult();
        }
        return new ToastResult(context, isSucc, text, duration);
    }

    public void show() {
        if (this.mToast != null) {
            this.mToast.show();
        }
    }

    public void setGravity(int gravity, int xOffset, int yOffset) {
        if (this.mToast != null) {
            this.mToast.setGravity(gravity, xOffset, yOffset);
        }
    }
}
