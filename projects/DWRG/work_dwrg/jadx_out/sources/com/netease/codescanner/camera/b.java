package com.netease.codescanner.camera;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.view.SurfaceHolder;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.codescanner.CodeScanConfig;
import com.netease.codescanner.camera.c;
import com.netease.codescanner.common.Logging;
import com.netease.codescanner.f;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b {
    private final Context a;
    private final CameraConfigurationManager b;
    private c.a c;
    private com.netease.codescanner.camera.a d;
    private Rect e;
    private Rect f;
    private SurfaceHolder g;
    private Point h;
    private long i;
    private boolean j = false;
    private boolean k;

    /* loaded from: classes.dex */
    public static final class a {
        public int a;
        public byte[] b;
        public int c;
        public int d;
        public Rect e;
    }

    public b(Context context, CodeScanConfig codeScanConfig) {
        this.a = context;
        this.b = new CameraConfigurationManager(context);
        this.i = codeScanConfig.camera_updateIntervalMs;
    }

    private int a(int i, int i2) {
        return (((i + i2) - 1) / i2) * i2;
    }

    private int b(int i, int i2) {
        return (i / i2) * i2;
    }

    @TargetApi(14)
    private void b(Rect rect) {
        Point cameraPreviewResolution = this.b.getCameraPreviewResolution();
        Rect rect2 = new Rect();
        rect2.top = ((rect.top * RpcException.ErrorCode.SERVER_SESSIONSTATUS) / cameraPreviewResolution.y) - 1000;
        rect2.bottom = ((rect.bottom * RpcException.ErrorCode.SERVER_SESSIONSTATUS) / cameraPreviewResolution.y) - 1000;
        rect2.left = ((rect.left * RpcException.ErrorCode.SERVER_SESSIONSTATUS) / cameraPreviewResolution.x) - 1000;
        rect2.right = ((rect.right * RpcException.ErrorCode.SERVER_SESSIONSTATUS) / cameraPreviewResolution.x) - 1000;
        Camera.Area area = new Camera.Area(rect2, Code.UNKNOWN_REASON);
        ArrayList arrayList = new ArrayList();
        arrayList.add(area);
        this.b.setMeteringAreas(this.c.a, arrayList);
    }

    public CameraConfigurationManager a() {
        return this.b;
    }

    public synchronized void a(Rect rect) {
        if (this.j) {
            Logging.d("Manual framing rect: " + rect);
            this.e = new Rect(rect);
            Logging.d("Calculated manual framing rect: " + this.e);
            if (Build.VERSION.SDK_INT >= 14) {
                b(g());
            }
        } else {
            this.f = rect;
        }
    }

    public synchronized void a(Handler handler, int i) {
        if (this.c != null && this.k) {
            this.c.a.setOneShotPreviewCallback(new d(this, this.b, handler, i));
        }
    }

    public synchronized void a(SurfaceHolder surfaceHolder) throws IOException {
        synchronized (this) {
            if (this.c == null) {
                this.c = c.a();
            }
            if (this.c == null) {
                throw new IOException("Unable to open the camera");
            }
            Camera camera = this.c.a;
            camera.setPreviewDisplay(surfaceHolder);
            this.g = surfaceHolder;
            Rect surfaceFrame = this.g.getSurfaceFrame();
            this.h = new Point(surfaceFrame.right, surfaceFrame.bottom);
            if (!this.j) {
                this.j = true;
                Point point = new Point(this.h);
                if (point.x < point.y) {
                    int i = point.x;
                    point.x = point.y;
                    point.y = i;
                }
                this.b.a(this.c, point);
                if (this.f != null) {
                    a(this.f);
                    this.f = null;
                }
            }
            Camera.Parameters parameters = camera.getParameters();
            String flatten = parameters != null ? parameters.flatten() : null;
            try {
                this.b.a(this.c.a, this.c.b, false);
            } catch (RuntimeException e) {
                Logging.e("Camera prefernce rejected. Resetting to: " + flatten);
                if (flatten != null) {
                    Camera.Parameters parameters2 = camera.getParameters();
                    parameters2.unflatten(flatten);
                    try {
                        camera.setParameters(parameters2);
                        this.b.a(this.c.a, this.c.b, true);
                    } catch (RuntimeException e2) {
                        Logging.e("Camera rejected safe-mode! Leave it.");
                    }
                }
            }
            f.a(this.a, camera);
        }
    }

    public synchronized void a(boolean z) {
        if (z != this.b.getTorchOnState(this.c.a) && this.c != null) {
            if (this.d != null) {
                this.d.b();
            }
            this.b.setTorch(this.c.a, z);
            if (this.d != null) {
                this.d.a();
            }
        }
    }

    public synchronized boolean b() {
        return this.c != null;
    }

    public synchronized void c() {
        if (this.c != null) {
            this.c.a.release();
            this.c = null;
            this.e = null;
        }
        f.b();
    }

    public synchronized void d() {
        if (this.c != null && !this.k) {
            this.c.a.startPreview();
            this.k = true;
            this.d = new com.netease.codescanner.camera.a(this.a, this.c.a, this.i);
        }
    }

    public synchronized void e() {
        if (this.d != null) {
            this.d.b();
            this.d = null;
        }
        if (this.c != null && this.k) {
            this.c.a.stopPreview();
            this.k = false;
        }
    }

    public synchronized Rect f() {
        Rect rect;
        if (this.e == null) {
            if (this.c == null) {
                rect = null;
            } else {
                this.e = new Rect(0, 0, this.h.x, this.h.y);
            }
        }
        rect = this.e;
        return rect;
    }

    public synchronized Rect g() {
        Rect rect = null;
        synchronized (this) {
            Rect f = f();
            if (f != null) {
                Rect rect2 = new Rect(f);
                Point cameraPreviewResolution = this.b.getCameraPreviewResolution();
                if (this.h != null && cameraPreviewResolution != null) {
                    Logging.d("Preview size: " + this.h);
                    Logging.d("Camera Resolution: " + cameraPreviewResolution);
                    Logging.d("Framing Rect: " + rect2);
                    int i = this.h.x;
                    int i2 = this.h.y;
                    if (this.b.getDisplayOrientation().intValue() % 180 != 0) {
                        i = this.h.y;
                        i2 = this.h.x;
                    }
                    rect2.left = b((rect2.left * cameraPreviewResolution.x) / i, 16);
                    rect2.right = Math.min(cameraPreviewResolution.x, a((rect2.right * cameraPreviewResolution.x) / i, 16));
                    rect2.top = b((rect2.top * cameraPreviewResolution.y) / i2, 16);
                    rect2.bottom = Math.min(cameraPreviewResolution.y, a((cameraPreviewResolution.y * rect2.bottom) / i2, 16));
                    Logging.e("framing rect in preview: " + rect2);
                    rect = rect2;
                }
            }
        }
        return rect;
    }

    public Integer h() {
        Logging.e("mConfigManager: " + this.b);
        return this.b.getDisplayOrientation();
    }

    public Point i() {
        return new Point(this.h);
    }

    public void j() {
        if (this.c != null) {
            Camera camera = this.c.a;
            Camera.Parameters parameters = camera.getParameters();
            String flatten = parameters == null ? null : parameters.flatten();
            try {
                this.b.a(this.c.a, this.c.b, false);
            } catch (RuntimeException e) {
                Logging.e("Camera prefernce rejected. Resetting to: " + flatten);
                if (flatten != null) {
                    Camera.Parameters parameters2 = camera.getParameters();
                    parameters2.unflatten(flatten);
                    try {
                        camera.setParameters(parameters2);
                        this.b.a(this.c.a, this.c.b, true);
                    } catch (RuntimeException e2) {
                        Logging.e("Camera rejected safe-mode! Leave it.");
                    }
                }
            }
        }
    }
}
