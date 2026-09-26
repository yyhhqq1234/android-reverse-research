package com.netease.codescanner.camera;

import android.annotation.TargetApi;
import android.hardware.Camera;
import android.os.Build;
import com.netease.codescanner.common.Logging;

/* loaded from: classes.dex */
public final class c {

    /* loaded from: classes.dex */
    public static final class a {
        public Camera a;
        public int b;
    }

    public static a a() {
        if (Build.VERSION.SDK_INT >= 9) {
            return b();
        }
        a aVar = new a();
        aVar.a = Camera.open();
        if (aVar.a == null) {
            return null;
        }
        aVar.b = 0;
        return aVar;
    }

    @TargetApi(9)
    private static a b() {
        Camera open;
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Logging.d("No cameras!");
            return null;
        }
        int i = 0;
        while (i < numberOfCameras) {
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            Camera.getCameraInfo(i, cameraInfo);
            if (cameraInfo.facing == 0) {
                break;
            }
            i++;
        }
        if (i < numberOfCameras) {
            Logging.d("Opening camera #" + i);
            open = Camera.open(i);
        } else {
            Logging.d("No camera facing back; returning camera #0");
            open = Camera.open(0);
            i = 0;
        }
        a aVar = new a();
        aVar.a = open;
        if (aVar.a == null) {
            return null;
        }
        aVar.b = i;
        return aVar;
    }
}
