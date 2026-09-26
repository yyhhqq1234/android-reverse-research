package com.netease.mpay.codescanner;

import android.graphics.Point;
import android.hardware.Camera;
import android.util.DisplayMetrics;
import com.dodola.rocoo.Hack;
import com.netease.codescanner.camera.CameraConfigurationManager;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class i implements CameraConfigurationManager.CalculatePreviewSizeCallback {
    final /* synthetic */ DisplayMetrics a;
    final /* synthetic */ e b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(e eVar, DisplayMetrics displayMetrics) {
        this.b = eVar;
        this.a = displayMetrics;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.codescanner.camera.CameraConfigurationManager.CalculatePreviewSizeCallback
    public Point calculatePreviewSize(List list, Point point) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Camera.Size size = (Camera.Size) it.next();
            if (size.width >= size.height) {
                if (size.width == this.a.widthPixels && size.height == this.a.heightPixels) {
                    return new Point(size.width, size.height);
                }
            } else if (size.height == this.a.widthPixels && size.width == this.a.heightPixels) {
                return new Point(size.width, size.height);
            }
        }
        return null;
    }
}
