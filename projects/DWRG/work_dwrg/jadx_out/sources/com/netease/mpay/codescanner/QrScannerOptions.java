package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.User;

/* loaded from: classes.dex */
public class QrScannerOptions {
    private QrCodeScannerLoginCallback a;
    private QrCodeScannerExtCallback b;
    private InnerQrScannerOptionsCallback c;

    /* loaded from: classes.dex */
    public static final class Builder {
        private QrCodeScannerLoginCallback a;
        private QrCodeScannerExtCallback b;

        public Builder() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public Builder addLoginCallback(QrCodeScannerLoginCallback qrCodeScannerLoginCallback) {
            this.a = qrCodeScannerLoginCallback;
            return this;
        }

        public Builder addQrExtCallback(QrCodeScannerExtCallback qrCodeScannerExtCallback) {
            this.b = qrCodeScannerExtCallback;
            return this;
        }

        public QrScannerOptions build() {
            return new QrScannerOptions(this.a, this.b);
        }
    }

    /* loaded from: classes.dex */
    class InnerQrScannerOptionsCallback implements QrCodeScannerExtCallback, QrCodeScannerLoginCallback {
        InnerQrScannerOptionsCallback() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.codescanner.QrScannerOptions.QrCodeScannerExtCallback
        public void onFetchQrCode(String str) {
            if (QrScannerOptions.this.b != null) {
                QrScannerOptions.this.b.onFetchQrCode(str);
            }
            Cdo.a("onFetchQrCode:" + str);
        }

        @Override // com.netease.mpay.codescanner.QrScannerOptions.QrCodeScannerLoginCallback
        public void onLoginSuccess(User user) {
            if (QrScannerOptions.this.a != null) {
                QrScannerOptions.this.a.onLoginSuccess(user);
            }
            Cdo.a("onLoginSuccess:" + user);
        }
    }

    /* loaded from: classes.dex */
    public interface QrCodeScannerExtCallback {
        void onFetchQrCode(String str);
    }

    /* loaded from: classes.dex */
    public interface QrCodeScannerLoginCallback {
        void onLoginSuccess(User user);
    }

    private QrScannerOptions(QrCodeScannerLoginCallback qrCodeScannerLoginCallback, QrCodeScannerExtCallback qrCodeScannerExtCallback) {
        this.a = qrCodeScannerLoginCallback;
        this.b = qrCodeScannerExtCallback;
        this.c = new InnerQrScannerOptionsCallback();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.a != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.b != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InnerQrScannerOptionsCallback c() {
        return this.c;
    }
}
