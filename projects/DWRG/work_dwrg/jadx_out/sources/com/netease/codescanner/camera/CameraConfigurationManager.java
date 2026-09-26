package com.netease.codescanner.camera;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.view.WindowManager;
import com.netease.codescanner.camera.c;
import com.netease.codescanner.common.Logging;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public final class CameraConfigurationManager {
    CalculatePreviewSizeCallback a;
    private final Context b;
    private Point c;
    private Integer d;

    /* loaded from: classes.dex */
    public interface CalculatePreviewSizeCallback {
        Point calculatePreviewSize(List<Camera.Size> list, Point point);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CameraConfigurationManager(Context context) {
        this.b = context;
    }

    @TargetApi(8)
    private int a() {
        if (Build.VERSION.SDK_INT >= 8) {
        }
        return 17;
    }

    @TargetApi(9)
    private int a(int i, int i2) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        return cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i2) % 360)) % 360 : ((cameraInfo.orientation - i2) + 360) % 360;
    }

    @TargetApi(14)
    private int a(Camera camera) {
        Camera.Parameters parameters;
        if (camera == null || (parameters = camera.getParameters()) == null) {
            return 0;
        }
        return parameters.getMaxNumMeteringAreas();
    }

    private Point a(Camera.Parameters parameters, Point point) {
        Camera.Size size;
        int i;
        int i2;
        Point calculatePreviewSize;
        ArrayList<Camera.Size> arrayList = new ArrayList(parameters.getSupportedPreviewSizes());
        Collections.sort(arrayList, new Comparator<Camera.Size>() { // from class: com.netease.codescanner.camera.CameraConfigurationManager.1
            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Camera.Size size2, Camera.Size size3) {
                int i3 = size2.height * size2.width;
                int i4 = size3.height * size3.width;
                if (i4 < i3) {
                    return -1;
                }
                return i4 > i3 ? 1 : 0;
            }
        });
        Logging.i("Preview screen size: " + point.x + "x" + point.y);
        if (Logging.isLevelLogging(0)) {
            StringBuilder sb = new StringBuilder();
            for (Camera.Size size2 : arrayList) {
                sb.append(size2.width).append('x').append(size2.height).append(' ');
            }
            Logging.d("Supported preview sizes: " + ((Object) sb));
        }
        if (this.a != null && (calculatePreviewSize = this.a.calculatePreviewSize(arrayList, point)) != null) {
            return calculatePreviewSize;
        }
        double d = point.y / point.x;
        Camera.Size size3 = null;
        for (Camera.Size size4 : arrayList) {
            int i3 = size4.width;
            int i4 = size4.height;
            if (i3 < i4) {
                i = i3;
                i2 = i4;
            } else {
                i = i4;
                i2 = i3;
            }
            double d2 = (i / i2) / d;
            if (d2 > 1.0d) {
                d2 = 1.0d / d2;
            }
            double abs = Math.abs(1.0d - d2);
            if (abs > 0.2d) {
                Logging.i("distortion: " + abs);
            } else {
                if ((i < point.y * 2 || i2 < point.x * 2) && size3 != null && (i != point.y || i2 != point.x)) {
                    size4 = size3;
                }
                size3 = size4;
            }
        }
        if (size3 != null) {
            size = size3;
        } else if (arrayList.size() > 0) {
            Logging.i("No fitting aspect ratio found. Using the largest resolution");
            size = (Camera.Size) arrayList.get(0);
        } else {
            size = parameters.getPreviewSize();
            Logging.e("Using default size");
        }
        Logging.i("Picked preview frame size: " + size.width + "x" + size.height);
        return new Point(size.width, size.height);
    }

    @TargetApi(8)
    private Integer a(int i) {
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT < 9) {
            Logging.e("There's nothing we can do about pre-froyo camera rotation");
            return null;
        }
        switch (((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case 0:
                i2 = 0;
                break;
            case 1:
                i2 = 90;
                break;
            case 2:
                i2 = 180;
                break;
            case 3:
                i2 = 270;
                break;
            default:
                i2 = 0;
                break;
        }
        if (Build.VERSION.SDK_INT >= 9) {
            i3 = a(i, i2);
        } else {
            Logging.e("rotateAngle: " + i2);
            i3 = ((360 - i2) + 90) % 360;
        }
        this.d = Integer.valueOf(i3);
        return Integer.valueOf(i3);
    }

    private static String a(Collection<String> collection, String... strArr) {
        String str;
        Logging.i("Supported values: " + collection);
        if (collection != null) {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                str = strArr[i];
                if (collection.contains(str)) {
                    break;
                }
            }
        }
        str = null;
        Logging.i("Settable value: " + str);
        return str;
    }

    private void a(Camera.Parameters parameters, boolean z) {
        a(parameters, false, z);
    }

    private void a(Camera.Parameters parameters, boolean z, boolean z2) {
        String a = z ? a(parameters.getSupportedFlashModes(), "torch", "on") : a(parameters.getSupportedFlashModes(), "off");
        if (a != null) {
            parameters.setFlashMode(a);
        }
    }

    @TargetApi(14)
    private void a(Camera camera, List<Camera.Area> list) {
        Camera.Parameters parameters;
        if (camera == null || (parameters = camera.getParameters()) == null) {
            return;
        }
        int maxNumMeteringAreas = parameters.getMaxNumMeteringAreas();
        Logging.d("maxNumMeterers = " + maxNumMeteringAreas);
        if (list.size() < maxNumMeteringAreas) {
            parameters.setMeteringAreas(list);
            camera.setParameters(parameters);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Camera camera, int i, boolean z) {
        Camera.Parameters parameters = camera.getParameters();
        if (parameters == null) {
            Logging.e("Camera Device Error: parameterless. Skipped tuning.");
            return;
        }
        Logging.i("Initial camera parameters: " + parameters.flatten());
        if (z) {
            Logging.i("In safe mode");
        }
        a(parameters, z);
        String a = a(parameters.getSupportedFocusModes(), "auto");
        if (!z && a == null) {
            a = a(parameters.getSupportedFocusModes(), "macro");
        }
        if (a != null) {
            parameters.setFocusMode(a);
        }
        setCameraDisplayOrientation(camera, i);
        parameters.setPreviewSize(this.c.x, this.c.y);
        parameters.setPreviewFormat(a());
        camera.setParameters(parameters);
        Camera.Size previewSize = camera.getParameters().getPreviewSize();
        if (previewSize != null) {
            if (this.c.x == previewSize.width && this.c.y == previewSize.height) {
                return;
            }
            Logging.e("Camera said it supported preview size " + this.c.x + 'x' + this.c.y + ", but after setting it, preview size is " + previewSize.width + 'x' + previewSize.height);
            Logging.i("displayorientation: " + this.d);
            this.c.x = previewSize.width;
            this.c.y = previewSize.height;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c.a aVar, Point point) {
        this.c = a(aVar.a.getParameters(), point);
        Logging.i("Camera resolution: " + this.c);
        this.d = a(aVar.b);
        Logging.i("Display Orientation: " + this.d);
    }

    public Point getCameraPreviewResolution() {
        return this.c;
    }

    public Integer getDisplayOrientation() {
        return this.d;
    }

    public int getMaxNumMeteringArea(Camera camera) {
        if (Build.VERSION.SDK_INT < 14) {
            return 0;
        }
        return a(camera);
    }

    public boolean getTorchOnState(Camera camera) {
        String flashMode;
        if (camera == null || camera.getParameters() == null || (flashMode = camera.getParameters().getFlashMode()) == null) {
            return false;
        }
        return "on".equals(flashMode) || "torch".equals(flashMode);
    }

    @TargetApi(8)
    public void setCameraDisplayOrientation(Camera camera, int i) {
        if (Build.VERSION.SDK_INT < 8) {
            Logging.e("There's nothing we can do about pre-froyo camera rotation");
            this.d = 0;
            return;
        }
        Integer a = a(i);
        if (a == null) {
            Logging.e("It's not supported in froyo either");
            this.d = 0;
        } else {
            this.d = a;
            camera.setDisplayOrientation(a.intValue());
        }
    }

    public void setFindPreviewSizeCallback(CalculatePreviewSizeCallback calculatePreviewSizeCallback) {
        this.a = calculatePreviewSizeCallback;
    }

    public void setMeteringAreas(Camera camera, List<Camera.Area> list) {
        if (Build.VERSION.SDK_INT < 14) {
            return;
        }
        a(camera, list);
    }

    public void setTorch(Camera camera, boolean z) {
        Camera.Parameters parameters = camera.getParameters();
        a(parameters, z, false);
        camera.setParameters(parameters);
    }
}
