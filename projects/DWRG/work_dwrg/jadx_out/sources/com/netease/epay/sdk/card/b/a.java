package com.netease.epay.sdk.card.b;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.ErrorCode;

/* compiled from: CardActivityEvent.java */
/* loaded from: classes.dex */
public class a extends BaseEvent {
    public String a;
    public boolean b;
    public boolean c;

    public a(String str, String str2, FragmentActivity fragmentActivity) {
        super(str, str2, fragmentActivity);
        this.c = false;
    }

    public a(ErrorCode.CUSTOM_CODE custom_code, FragmentActivity fragmentActivity) {
        super(custom_code, fragmentActivity);
        this.c = false;
    }

    public a(FragmentActivity fragmentActivity, String str, String str2, String str3) {
        super(str, str2, fragmentActivity);
        this.c = false;
        this.a = str3;
    }
}
