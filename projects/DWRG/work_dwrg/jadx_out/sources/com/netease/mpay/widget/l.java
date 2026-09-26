package com.netease.mpay.widget;

import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class l extends Toast {
    private final int a;
    private final int b;
    private final int c;

    public l(Context context, View view) {
        super(context);
        this.a = 0;
        this.b = 0;
        this.c = RpcException.ErrorCode.SERVER_SESSIONSTATUS;
        setView(view);
        setGravity(55, 0, 0);
        setDuration(RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.widget.Toast
    public void setView(View view) {
        super.setView(view);
    }
}
