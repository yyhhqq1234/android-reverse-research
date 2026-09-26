package com.netease.dwrg;

import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public class CameraPreviewCapture implements Camera.PreviewCallback {
    private static String TAG = "NeoX_CameraPreviewCapture";
    private Camera mCamera;
    private byte[] mFrameBuffer;
    private PreviewCallback mPreviewCallback;
    private int mPreviewHeight;
    private int mPreviewWidth;
    private SurfaceTexture mTexture;

    /* loaded from: classes.dex */
    interface PreviewCallback {
        void onPreviewFrame(byte[] bArr, int i, int i2);
    }

    public CameraPreviewCapture(PreviewCallback previewCallback) {
        this.mPreviewCallback = previewCallback;
    }

    public void start(int preferWidth, int preferHeight) {
        try {
            if (Build.VERSION.SDK_INT >= 9) {
                this.mCamera = Camera.open(0);
            } else {
                this.mCamera = Camera.open();
            }
            try {
                this.mTexture = new SurfaceTexture(0);
                try {
                    this.mCamera.setPreviewTexture(this.mTexture);
                    Camera.Parameters cameraParams = this.mCamera.getParameters();
                    double preferRatio = preferWidth / preferHeight;
                    double minDeltaRatio = -1.0d;
                    this.mPreviewWidth = 0;
                    this.mPreviewHeight = 0;
                    for (Camera.Size previewSize : cameraParams.getSupportedPreviewSizes()) {
                        int previewWidth = previewSize.width;
                        int previewHeight = previewSize.height;
                        double ratio = previewWidth / previewHeight;
                        Log.i(TAG, "[" + previewWidth + " x " + previewHeight + "] " + ratio);
                        if (previewWidth <= preferWidth && previewHeight <= preferHeight) {
                            double deltaRatio = Math.abs(ratio - preferRatio);
                            if (minDeltaRatio == -1.0d || (deltaRatio <= minDeltaRatio && (this.mPreviewWidth <= previewWidth || this.mPreviewHeight <= previewHeight))) {
                                minDeltaRatio = deltaRatio;
                                this.mPreviewWidth = previewWidth;
                                this.mPreviewHeight = previewHeight;
                            }
                        }
                    }
                    Log.i(TAG, "prefer [" + preferWidth + " x " + preferHeight + "] " + preferRatio);
                    Log.i(TAG, "got [" + this.mPreviewWidth + " x " + this.mPreviewHeight + "] " + (this.mPreviewWidth / this.mPreviewHeight));
                    cameraParams.setPreviewFrameRate(30);
                    cameraParams.setPreviewSize(this.mPreviewWidth, this.mPreviewHeight);
                    this.mCamera.setParameters(cameraParams);
                    int bufferSize = this.mPreviewWidth * this.mPreviewHeight;
                    int format = cameraParams.getPreviewFormat();
                    this.mFrameBuffer = new byte[(ImageFormat.getBitsPerPixel(format) * bufferSize) / 8];
                    this.mCamera.addCallbackBuffer(this.mFrameBuffer);
                    this.mCamera.setPreviewCallbackWithBuffer(this);
                    this.mCamera.startPreview();
                } catch (IOException e) {
                    Log.e(TAG, "Cant set preview texture!");
                    stop();
                }
            } catch (Exception e2) {
                Log.e(TAG, "Cant create surface texture!");
                stop();
            }
        } catch (Exception e3) {
            Log.e(TAG, "Cant open camera!");
            stop();
        }
    }

    public void stop() {
        if (this.mFrameBuffer != null) {
            this.mFrameBuffer = null;
        }
        if (this.mTexture != null) {
            this.mTexture.release();
            this.mTexture = null;
        }
        if (this.mCamera != null) {
            this.mCamera.stopPreview();
            this.mCamera.release();
            this.mCamera = null;
        }
    }

    public void onPause() {
        if (this.mCamera != null) {
            this.mCamera.stopPreview();
        }
    }

    public void onResume() {
        if (this.mCamera != null) {
            this.mCamera.addCallbackBuffer(this.mFrameBuffer);
            this.mCamera.setPreviewCallbackWithBuffer(this);
            this.mCamera.startPreview();
        }
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bytes, Camera camera) {
        this.mCamera.addCallbackBuffer(this.mFrameBuffer);
        this.mPreviewCallback.onPreviewFrame(bytes, this.mPreviewWidth, this.mPreviewHeight);
    }
}
