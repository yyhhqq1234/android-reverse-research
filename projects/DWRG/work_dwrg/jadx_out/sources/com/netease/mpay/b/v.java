package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.QrCodeScannerCallback;
import com.netease.mpay.b.a;
import com.netease.mpay.codescanner.QrScannerOptions;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
public class v extends k {
    public String a;
    public QrCodeScannerCallback b;
    public QrScannerOptions c;

    public v(Intent intent) {
        super(intent);
        this.a = b(intent, ak.QR_CODE_SCANNER_EXTRA_DATA);
        long d = d(intent, ak.QR_CODE_SCANNER_CALLBACK);
        this.b = d != -1 ? (QrCodeScannerCallback) hi.a().e.b(d) : null;
        long d2 = d(intent, ak.QR_CODE_SCANNER_EXT_CALLBACK);
        this.c = d2 != -1 ? (QrScannerOptions) hi.a().f.b(d2) : null;
    }

    public v(a.C0035a c0035a, String str, AuthenticationCallback authenticationCallback, QrCodeScannerCallback qrCodeScannerCallback, QrScannerOptions qrScannerOptions) {
        super(c0035a, authenticationCallback);
        this.a = str;
        this.b = qrCodeScannerCallback;
        this.c = qrScannerOptions;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.QR_CODE_SCANNER_EXTRA_DATA, this.a);
        if (this.b != null) {
            a(bundle, ak.QR_CODE_SCANNER_CALLBACK, hi.a().e.a(this.b));
        }
        if (this.c != null) {
            a(bundle, ak.QR_CODE_SCANNER_EXT_CALLBACK, hi.a().f.a(this.c));
        }
    }
}
