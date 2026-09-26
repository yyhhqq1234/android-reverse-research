package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayApi;
import com.netease.mpay.codescanner.QrScannerOptions;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class he implements MpayApi.a {
    final /* synthetic */ HashMap a;
    final /* synthetic */ QrCodeScannerCallback b;
    final /* synthetic */ QrScannerOptions c;
    final /* synthetic */ MpayApi d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public he(MpayApi mpayApi, HashMap hashMap, QrCodeScannerCallback qrCodeScannerCallback, QrScannerOptions qrScannerOptions) {
        this.d = mpayApi;
        this.a = hashMap;
        this.b = qrCodeScannerCallback;
        this.c = qrScannerOptions;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.MpayApi.a
    public void a() {
        String str;
        AuthenticationCallback authenticationCallback;
        try {
            str = new JSONObject(this.a).toString();
        } catch (Exception e) {
            str = "";
            Cdo.b(e);
            Cdo.a((Throwable) e);
        }
        MpayApi mpayApi = this.d;
        authenticationCallback = this.d.i;
        mpayApi.a(authenticationCallback, this.b, this.c, str);
    }
}
