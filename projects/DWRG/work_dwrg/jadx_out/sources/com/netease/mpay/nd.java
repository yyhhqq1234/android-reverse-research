package com.netease.mpay;

import android.text.Layout;
import android.view.View;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class nd implements View.OnClickListener {
    final /* synthetic */ nc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nd(nc ncVar) {
        this.a = ncVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.netease.mpay.widget.s sVar;
        TextView textView = (TextView) view;
        Layout layout = textView.getLayout();
        if (layout == null || layout.getEllipsisCount(0) <= 0) {
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        sVar = this.a.j;
        sVar.a(textView.getText().toString(), RpcException.ErrorCode.SERVER_SESSIONSTATUS, -1, (iArr[1] + ((view.getHeight() / 5) * 6)) - this.a.p().getHeight());
    }
}
