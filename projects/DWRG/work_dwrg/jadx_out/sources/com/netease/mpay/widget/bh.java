package com.netease.mpay.widget;

import android.os.CountDownTimer;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bh extends CountDownTimer {
    final /* synthetic */ TextView a;
    final /* synthetic */ bf.a.InterfaceC0060a b;
    final /* synthetic */ bf.a c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bh(bf.a aVar, long j, long j2, TextView textView, bf.a.InterfaceC0060a interfaceC0060a) {
        super(j, j2);
        this.c = aVar;
        this.a = textView;
        this.b = interfaceC0060a;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        this.a.setText("");
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        this.a.setText("" + ((15 + j) / 1000));
    }
}
