package com.netease.mpay;

import android.os.SystemClock;
import android.widget.AutoCompleteTextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.aw;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class as extends aw.a {
    final /* synthetic */ long a;
    final /* synthetic */ long b;
    final /* synthetic */ al c;
    private boolean d = false;
    private boolean e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(al alVar, long j, long j2) {
        this.c = alVar;
        this.a = j;
        this.b = j2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.widget.aw.a
    public long a() {
        if (SystemClock.elapsedRealtime() - this.a < 25) {
            return 1L;
        }
        return SystemClock.elapsedRealtime() - this.a < 100 ? 3L : 6L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.widget.aw.a
    public boolean b() {
        return SystemClock.elapsedRealtime() - this.a > this.b || this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.widget.aw.a
    public void c() {
        AutoCompleteTextView autoCompleteTextView;
        AutoCompleteTextView autoCompleteTextView2;
        autoCompleteTextView = this.c.h;
        if (autoCompleteTextView.isPopupShowing()) {
            this.e = true;
        } else if (this.e) {
            this.d = true;
        }
        autoCompleteTextView2 = this.c.h;
        autoCompleteTextView2.dismissDropDown();
    }
}
