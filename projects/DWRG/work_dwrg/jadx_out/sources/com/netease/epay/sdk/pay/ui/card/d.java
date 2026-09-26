package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.controller.ControllerResult;

/* compiled from: AddCard3SmsBasePresenter.java */
/* loaded from: classes.dex */
public abstract class d implements SendSmsButton.ISendSmsListener {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    SdkActivity k;
    c l;

    public abstract void a();

    public abstract void a(String str);

    public d(c cVar) {
        this.l = cVar;
        this.k = (SdkActivity) cVar.getActivity();
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            this.a = bundle.getString(BaseConstants.INTENT_ADDCARD_BANK_ID);
            this.b = bundle.getString(BaseConstants.INTENT_ADDCARD_CARD_NUMBER);
            this.c = bundle.getString(BaseConstants.INTENT_ADDCARD_PHONE);
            this.g = bundle.getString(BaseConstants.INTENT_ADDCARD_FORGET_CERT);
            this.h = bundle.getString(BaseConstants.INTENT_ADDCARD_ACCOUNTNAME);
            this.i = bundle.getString(BaseConstants.INTENT_ADDCARD_CREID_EXPIRE);
            this.j = bundle.getString(BaseConstants.INTENT_ADDCARD_CVV2);
            this.d = bundle.getString(BaseConstants.INTENT_ADDCARD_QUICKPAYID);
            this.e = bundle.getString(BaseConstants.INTENT_ADDCARD_CHARGE_ID);
            this.f = bundle.getString(BaseConstants.INTENT_ADDCARD_SMS_ATTACH);
        }
    }

    public void a(ControllerResult controllerResult) {
    }
}
