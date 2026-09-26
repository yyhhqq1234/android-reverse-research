package com.netease.codescanner;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.netease.codescanner.CodeScanner;
import com.netease.codescanner.camera.b;
import com.netease.codescanner.common.Graphics;
import com.netease.codescanner.common.Logging;
import java.util.Map;

/* loaded from: classes.dex */
final class c extends Handler {
    private Handler c;
    private final boolean d;
    private int e;
    private int f;
    private Context g;
    private boolean b = true;
    private final MultiFormatReader a = new MultiFormatReader();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, Handler handler, Map<DecodeHintType, Object> map, CodeScanConfig codeScanConfig) {
        this.g = context;
        this.a.setHints(map);
        this.c = handler;
        this.d = codeScanConfig.decode_generateErrorPreview;
        this.e = codeScanConfig.decode_frameWidth;
        this.f = codeScanConfig.decode_frameHeight;
    }

    private CodeScanner.DecodeResult a(b.a aVar) {
        LuminanceSource a;
        if (aVar.b != null && (a = e.a(aVar.b, aVar.c, aVar.d, aVar.a, aVar.e, this.e, this.f)) != null) {
            try {
                try {
                    Result decodeWithState = this.a.decodeWithState(new BinaryBitmap(new HybridBinarizer(a)));
                    if (decodeWithState == null) {
                        this.a.reset();
                        return null;
                    }
                    CodeScanner.DecodeResult decodeResult = new CodeScanner.DecodeResult();
                    decodeResult.rawResult = decodeWithState;
                    decodeResult.preview = Graphics.a(aVar.b, aVar.c, aVar.d, aVar.a, aVar.e, this.e, this.f);
                    if (decodeResult.preview == null) {
                        this.a.reset();
                        return null;
                    }
                    this.a.reset();
                    return decodeResult;
                } catch (ReaderException e) {
                    if (!this.d) {
                        this.a.reset();
                        return null;
                    }
                    Bitmap a2 = Graphics.a(aVar.b, aVar.c, aVar.d, aVar.a, aVar.e, this.e, this.f);
                    if (a2 == null) {
                        this.a.reset();
                        return null;
                    }
                    int width = a2.getWidth();
                    int height = a2.getHeight();
                    int[] iArr = new int[width * height];
                    a2.getPixels(iArr, 0, width, 0, 0, width, height);
                    BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(width, height, iArr)));
                    CodeScanner.DecodeResult decodeResult2 = new CodeScanner.DecodeResult();
                    try {
                        decodeResult2.rawResult = this.a.decodeWithState(binaryBitmap);
                        decodeResult2.preview = a2;
                    } catch (NotFoundException e2) {
                        e2.printStackTrace();
                        decodeResult2.preview = a2;
                    }
                    if (decodeResult2.preview == null) {
                        this.a.reset();
                        return null;
                    }
                    this.a.reset();
                    return decodeResult2;
                }
            } catch (Throwable th) {
                this.a.reset();
                throw th;
            }
        }
        return null;
    }

    private void a(CodeScanner.DecodeResult decodeResult) {
        if (this.c == null) {
            return;
        }
        if (decodeResult == null || decodeResult.rawResult == null) {
            Message.obtain(this.c, 10002, decodeResult).sendToTarget();
            return;
        }
        Message obtain = Message.obtain(this.c, 10003, decodeResult);
        obtain.setData(new Bundle());
        obtain.sendToTarget();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        CodeScanner.DecodeResult decodeResult;
        if (this.b) {
            if (message.what == 10001) {
                Logging.d("Trying to decode");
                try {
                    decodeResult = a((b.a) message.obj);
                } catch (OutOfMemoryError e) {
                    decodeResult = null;
                }
                a(decodeResult);
                return;
            }
            if (message.what == 10004) {
                this.b = false;
                Looper.myLooper().quit();
            }
        }
    }
}
