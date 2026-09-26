package com.netease.codescanner;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.netease.codescanner.CodeScanner;
import com.netease.codescanner.common.Logging;
import com.tencent.tauth.Tencent;

/* loaded from: classes.dex */
public final class a extends Handler {
    private final CodeScanner a;
    private final d b;
    private EnumC0004a c;
    private final com.netease.codescanner.camera.b d;
    private Context e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.codescanner.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0004a {
        PREVIEW,
        SUCCESS,
        DONE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, CodeScanner codeScanner, com.netease.codescanner.camera.b bVar, CodeScanConfig codeScanConfig) {
        this.e = context;
        this.a = codeScanner;
        this.b = new d(this.e, this, codeScanConfig, new com.netease.codescanner.widget.a(codeScanner.getViewfinderView()));
        this.b.start();
        this.d = bVar;
        bVar.d();
        b();
    }

    private void b() {
        this.c = EnumC0004a.PREVIEW;
        this.d.a(this.b.a(), Tencent.REQUEST_LOGIN);
    }

    public void a() {
        this.c = EnumC0004a.DONE;
        this.d.e();
        Message.obtain(this.b.a(), 10004).sendToTarget();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (SystemClock.elapsedRealtime() < 3000 + elapsedRealtime) {
            try {
                this.b.join(500L);
                break;
            } catch (InterruptedException e) {
            }
        }
        removeMessages(10003);
        removeMessages(10002);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 10005) {
            Logging.d("State: RestartPreview");
            if (this.c == EnumC0004a.SUCCESS) {
                b();
                return;
            }
            return;
        }
        if (message.what == 10003) {
            Logging.d("State: Decode Succeeded");
            this.c = EnumC0004a.SUCCESS;
            this.a.handleDecodeSuccess((CodeScanner.DecodeResult) message.obj);
        } else if (message.what == 10002) {
            Logging.d("State: Decode Failed");
            this.c = EnumC0004a.PREVIEW;
            this.d.a(this.b.a(), Tencent.REQUEST_LOGIN);
            this.a.handleDecodeError((CodeScanner.DecodeResult) message.obj);
        }
    }
}
