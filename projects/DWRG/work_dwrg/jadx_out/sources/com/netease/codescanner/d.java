package com.netease.codescanner;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.netease.codescanner.common.Logging;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d extends Thread {
    private final Handler a;
    private Handler c;
    private final CodeScanConfig e;
    private final Context f;
    private final CountDownLatch d = new CountDownLatch(1);
    private final Map<DecodeHintType, Object> b = new EnumMap(DecodeHintType.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, Handler handler, CodeScanConfig codeScanConfig, ResultPointCallback resultPointCallback) {
        this.f = context;
        this.a = handler;
        this.e = codeScanConfig;
        Collection collection = this.e.decode_formats;
        if (collection == null || collection.isEmpty()) {
            collection = EnumSet.noneOf(BarcodeFormat.class);
            collection.addAll(b.b);
            collection.addAll(b.c);
        }
        this.b.put(DecodeHintType.POSSIBLE_FORMATS, collection);
        Logging.d("Hints: " + this.b);
        if (resultPointCallback != null) {
            this.b.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultPointCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Handler a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (SystemClock.elapsedRealtime() < 2000 + elapsedRealtime) {
            try {
                this.d.await();
                break;
            } catch (InterruptedException e) {
            }
        }
        return this.c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.c = new c(this.f, this.a, this.b, this.e);
        this.d.countDown();
        Looper.loop();
    }
}
