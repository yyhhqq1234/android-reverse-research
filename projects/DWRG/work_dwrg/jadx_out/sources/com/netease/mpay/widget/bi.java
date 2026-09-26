package com.netease.mpay.widget;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class bi {
    private final int a = RpcException.ErrorCode.SERVER_SESSIONSTATUS;
    private final int b = 0;
    private final int c = 35;
    private Activity d;
    private PopupWindow e;

    public bi(Activity activity, Drawable drawable, String str) {
        this.d = activity;
        LayoutInflater from = LayoutInflater.from(this.d);
        com.netease.mpay.skin.e.a(from, new com.netease.mpay.skin.e());
        View inflate = from.inflate(RIdentifier.g.W, (ViewGroup) null, false);
        ((ImageView) inflate.findViewById(RIdentifier.f.aB)).setImageDrawable(drawable);
        ((TextView) inflate.findViewById(RIdentifier.f.bi)).setText(str);
        this.e = new PopupWindow(inflate, -2, -2, true);
        this.e.setTouchable(false);
        this.e.setAnimationStyle(RIdentifier.i.d);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void a() {
        this.e.showAtLocation(this.d.getWindow().getDecorView().getRootView(), 49, 0, 35);
        new Handler(Looper.getMainLooper()).postDelayed(new bj(this), 2000L);
    }
}
