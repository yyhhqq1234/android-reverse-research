package com.netease.epay.sdk.psw.setpwd;

import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.ui.SdkActivity;

/* compiled from: SetShortEvent.java */
/* loaded from: classes.dex */
public class a extends BaseEvent {
    public String a;

    public a(String str, SdkActivity sdkActivity) {
        super(null, null, sdkActivity);
        this.a = str;
    }
}
