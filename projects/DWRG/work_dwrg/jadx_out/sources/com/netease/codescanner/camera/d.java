package com.netease.codescanner.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import com.netease.codescanner.camera.b;
import com.netease.codescanner.common.Logging;

/* loaded from: classes.dex */
final class d implements Camera.PreviewCallback {
    private final b a;
    private final CameraConfigurationManager b;
    private Handler c;
    private int d;
    private Point e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar, CameraConfigurationManager cameraConfigurationManager, Handler handler, int i) {
        this.a = bVar;
        this.b = cameraConfigurationManager;
        this.c = handler;
        this.d = i;
        this.e = this.b.getCameraPreviewResolution();
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.e == null || this.c == null || !this.a.b()) {
            Logging.d("Got preview callback, but no camera/handler/resolution available");
            return;
        }
        b.a aVar = new b.a();
        aVar.b = bArr;
        aVar.c = this.e.x;
        aVar.d = this.e.y;
        aVar.e = this.a.g();
        aVar.a = (360 - this.b.getDisplayOrientation().intValue()) % 360;
        this.c.obtainMessage(this.d, aVar).sendToTarget();
    }
}
