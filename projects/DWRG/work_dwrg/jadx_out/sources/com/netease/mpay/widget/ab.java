package com.netease.mpay.widget;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.aa;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ab extends aa.b {
    final /* synthetic */ View.OnClickListener a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab(View.OnClickListener onClickListener) {
        super(null);
        this.a = onClickListener;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        this.a.onClick(view);
    }
}
