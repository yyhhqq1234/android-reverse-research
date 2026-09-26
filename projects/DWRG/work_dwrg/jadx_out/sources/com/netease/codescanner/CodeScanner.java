package com.netease.codescanner;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.google.zxing.Result;
import com.netease.codescanner.camera.CameraConfigurationManager;
import com.netease.codescanner.common.Logging;
import com.netease.codescanner.widget.ViewfinderView;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class CodeScanner {
    private com.netease.codescanner.camera.b mCameraManager;
    private com.netease.codescanner.a mCodeScanHandler;
    private final CodeScanConfig mConfig;
    private Context mContext;
    private Resources mRes;
    private SurfaceView mSurfaceView;
    private ViewfinderView mViewfinderView;
    private boolean mSurfaceCreated = false;
    private a mSurfaceCallback = new a();

    /* loaded from: classes.dex */
    public static final class DecodeResult {
        public Bitmap preview;
        public Result rawResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements SurfaceHolder.Callback {
        private a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (CodeScanner.this.mSurfaceCreated) {
                return;
            }
            CodeScanner.this.mSurfaceCreated = true;
            CodeScanner.this.initCamera(surfaceHolder);
            CodeScanner.this.onInitialized();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            CodeScanner.this.mSurfaceCreated = false;
        }
    }

    public CodeScanner(Context context, SurfaceView surfaceView, ViewfinderView viewfinderView, CodeScanConfig codeScanConfig) {
        this.mContext = context;
        this.mCameraManager = new com.netease.codescanner.camera.b(context, codeScanConfig);
        this.mSurfaceView = surfaceView;
        this.mRes = context.getResources();
        this.mConfig = codeScanConfig;
        this.mViewfinderView = viewfinderView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCamera(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            throw new IllegalStateException("No SurfaceHolder provided");
        }
        if (this.mCameraManager.b()) {
            Logging.e("Camera already opened");
            return;
        }
        try {
            this.mCameraManager.a(surfaceHolder);
            if (this.mCodeScanHandler == null) {
                this.mCodeScanHandler = new com.netease.codescanner.a(this.mContext, this, this.mCameraManager, this.mConfig);
            }
        } catch (IOException e) {
            Logging.logStackTrace(e);
            onFatalError();
        } catch (RuntimeException e2) {
            Logging.logStackTrace(e2);
            onFatalError();
        }
    }

    private void setSurfaceHolderPushBuffers(SurfaceHolder surfaceHolder) {
        surfaceHolder.setType(3);
    }

    public ViewfinderView getViewfinderView() {
        return this.mViewfinderView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void handleDecodeError(DecodeResult decodeResult);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void handleDecodeSuccess(DecodeResult decodeResult);

    public void onConfigurationChanged(SurfaceView surfaceView, ViewfinderView viewfinderView) {
        this.mSurfaceView = surfaceView;
        this.mViewfinderView = viewfinderView;
        if (this.mCameraManager == null || !this.mCameraManager.b()) {
            resume();
        } else {
            this.mCameraManager.j();
        }
    }

    public abstract void onFatalError();

    protected abstract void onInitialized();

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return f.a(motionEvent);
    }

    public void pause() {
        if (this.mCodeScanHandler != null) {
            this.mCodeScanHandler.a();
            this.mCodeScanHandler = null;
        }
        this.mCameraManager.e();
        this.mCameraManager.c();
        if (this.mSurfaceCreated) {
            return;
        }
        this.mSurfaceView.getHolder().removeCallback(this.mSurfaceCallback);
    }

    public void resume() {
        if (this.mCameraManager.b()) {
            return;
        }
        this.mCodeScanHandler = null;
        SurfaceHolder holder = this.mSurfaceView.getHolder();
        if (this.mSurfaceCreated) {
            initCamera(holder);
            onInitialized();
        } else {
            holder.addCallback(this.mSurfaceCallback);
            if (Build.VERSION.SDK_INT < 11) {
                setSurfaceHolderPushBuffers(holder);
            }
        }
    }

    public void resumeDecode() {
        if (this.mCodeScanHandler != null) {
            this.mCodeScanHandler.sendEmptyMessageDelayed(10005, 10L);
        }
        f.a();
    }

    public void setFindPreviewSizeCallback(CameraConfigurationManager.CalculatePreviewSizeCallback calculatePreviewSizeCallback) {
        this.mCameraManager.a().setFindPreviewSizeCallback(calculatePreviewSizeCallback);
    }

    public void setPreviewMask(int i, int i2, int i3, int i4) {
        setPreviewMask(i, i2, i3, i4, true);
    }

    public void setPreviewMask(int i, int i2, int i3, int i4, boolean z) {
        Integer h = this.mCameraManager.h();
        if (h == null) {
            if (z) {
                onFatalError();
            }
        } else {
            Point i5 = this.mCameraManager.i();
            int i6 = i5.x;
            int i7 = i5.y;
            Logging.e(": " + this.mCameraManager);
            this.mCameraManager.a(h.intValue() == 0 ? new Rect(i, i2, i6 - i3, i7 - i4) : h.intValue() == 180 ? new Rect(i3, i4, i6 - i, i7 - i2) : h.intValue() == 90 ? new Rect(i2, i3, i7 - i4, i6 - i) : new Rect(i4, i, i7 - i2, i6 - i3));
        }
    }

    public void setTorch(boolean z) {
        this.mCameraManager.a(z);
    }

    public void setViewfinderView(ViewfinderView viewfinderView) {
        this.mViewfinderView = viewfinderView;
    }
}
