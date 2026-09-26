package com.netease.epay.sdk.psw.verifypwd;

import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.ErrorCode;

/* compiled from: VerifyPwdEvent.java */
/* loaded from: classes.dex */
public class f extends BaseEvent {
    public boolean a;

    public f(String str, String str2, VerifyPwdActivity verifyPwdActivity) {
        super(str, str2, verifyPwdActivity);
    }

    public f(ErrorCode.CUSTOM_CODE custom_code, VerifyPwdActivity verifyPwdActivity) {
        super(custom_code, verifyPwdActivity);
    }
}
