package com.soundcloud.android.crop;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.opengl.GLES10;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import com.soundcloud.android.crop.Crop;
import com.soundcloud.android.crop.ImageViewTouchBase;
import com.soundcloud.android.crop.MonitoredActivity;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class CropImageActivity extends MonitoredActivity {
    private static final boolean IN_MEMORY_CROP;
    private static final int SIZE_DEFAULT = 2048;
    private static final int SIZE_LIMIT = 4096;
    private int aspectX;
    private int aspectY;
    private HighlightView cropView;
    private int exifRotation;
    private final Handler handler = new Handler();
    private CropImageView imageView;
    private boolean isSaving;
    private int maxX;
    private int maxY;
    private RotateBitmap rotateBitmap;
    private int sampleSize;
    private Uri saveUri;
    private Uri sourceUri;

    @Override // com.soundcloud.android.crop.MonitoredActivity
    public /* bridge */ /* synthetic */ void addLifeCycleListener(MonitoredActivity.LifeCycleListener x0) {
        super.addLifeCycleListener(x0);
    }

    @Override // com.soundcloud.android.crop.MonitoredActivity
    public /* bridge */ /* synthetic */ void removeLifeCycleListener(MonitoredActivity.LifeCycleListener x0) {
        super.removeLifeCycleListener(x0);
    }

    static {
        IN_MEMORY_CROP = Build.VERSION.SDK_INT < 10;
    }

    @Override // com.soundcloud.android.crop.MonitoredActivity, android.app.Activity
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        requestWindowFeature(1);
        setContentView(getResources().getIdentifier("crop__activity_crop", ResIdReader.RES_TYPE_LAYOUT, getPackageName()));
        initViews();
        setupFromIntent();
        if (this.rotateBitmap == null) {
            finish();
        } else {
            startCrop();
        }
    }

    private void initViews() {
        this.imageView = (CropImageView) findViewById(getResources().getIdentifier("crop_image", ResIdReader.RES_TYPE_ID, getPackageName()));
        this.imageView.context = this;
        this.imageView.setRecycler(new ImageViewTouchBase.Recycler() { // from class: com.soundcloud.android.crop.CropImageActivity.1
            @Override // com.soundcloud.android.crop.ImageViewTouchBase.Recycler
            public void recycle(Bitmap b) {
                b.recycle();
                System.gc();
            }
        });
        findViewById(getResources().getIdentifier("btn_cancel", ResIdReader.RES_TYPE_ID, getPackageName())).setOnClickListener(new View.OnClickListener() { // from class: com.soundcloud.android.crop.CropImageActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                CropImageActivity.this.setResult(0);
                CropImageActivity.this.finish();
            }
        });
        findViewById(getResources().getIdentifier("btn_done", ResIdReader.RES_TYPE_ID, getPackageName())).setOnClickListener(new View.OnClickListener() { // from class: com.soundcloud.android.crop.CropImageActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                CropImageActivity.this.onSaveClicked();
            }
        });
    }

    private void setupFromIntent() {
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.aspectX = extras.getInt(Crop.Extra.ASPECT_X);
            this.aspectY = extras.getInt(Crop.Extra.ASPECT_Y);
            this.maxX = extras.getInt(Crop.Extra.MAX_X);
            this.maxY = extras.getInt(Crop.Extra.MAX_Y);
            this.saveUri = (Uri) extras.getParcelable("output");
        }
        this.sourceUri = intent.getData();
        if (this.sourceUri != null) {
            this.exifRotation = CropUtil.getExifRotation(CropUtil.getFromMediaUri(getContentResolver(), this.sourceUri));
            InputStream is = null;
            try {
                this.sampleSize = calculateBitmapSampleSize(this.sourceUri);
                is = getContentResolver().openInputStream(this.sourceUri);
                BitmapFactory.Options option = new BitmapFactory.Options();
                option.inSampleSize = this.sampleSize;
                this.rotateBitmap = new RotateBitmap(BitmapFactory.decodeStream(is, null, option), this.exifRotation);
            } catch (OutOfMemoryError e) {
                Log.e("OOM reading image: " + e.getMessage(), e);
                setResultException(e);
            } catch (IOException e2) {
                Log.e("Error reading image: " + e2.getMessage(), e2);
                setResultException(e2);
            } finally {
                CropUtil.closeSilently(is);
            }
        }
    }

    private int calculateBitmapSampleSize(Uri bitmapUri) throws IOException {
        InputStream is = null;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            is = getContentResolver().openInputStream(bitmapUri);
            BitmapFactory.decodeStream(is, null, options);
            CropUtil.closeSilently(is);
            int maxSize = getMaxImageSize();
            int sampleSize = 1;
            while (true) {
                if (options.outHeight / sampleSize > maxSize || options.outWidth / sampleSize > maxSize) {
                    sampleSize <<= 1;
                } else {
                    return sampleSize;
                }
            }
        } catch (Throwable th) {
            CropUtil.closeSilently(is);
            throw th;
        }
    }

    private int getMaxImageSize() {
        int textureLimit = getMaxTextureSize();
        if (textureLimit == 0) {
            return 2048;
        }
        return Math.min(textureLimit, 4096);
    }

    private int getMaxTextureSize() {
        int[] maxSize = new int[1];
        GLES10.glGetIntegerv(3379, maxSize, 0);
        return maxSize[0];
    }

    private void startCrop() {
        if (!isFinishing()) {
            this.imageView.setImageRotateBitmapResetBase(this.rotateBitmap, true);
            CropUtil.startBackgroundJob(this, null, getResources().getString(getResources().getIdentifier("crop__wait", ResIdReader.RES_TYPE_STRING, getPackageName())), new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    final CountDownLatch latch = new CountDownLatch(1);
                    CropImageActivity.this.handler.post(new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CropImageActivity.this.imageView.getScale() == 1.0f) {
                                CropImageActivity.this.imageView.center(true, true);
                            }
                            latch.countDown();
                        }
                    });
                    try {
                        latch.await();
                        new Cropper().crop();
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
            }, this.handler);
        }
    }

    /* loaded from: classes.dex */
    private class Cropper {
        private Cropper() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void makeDefault() {
            boolean z = false;
            if (CropImageActivity.this.rotateBitmap != null) {
                HighlightView hv = new HighlightView(CropImageActivity.this.imageView);
                int width = CropImageActivity.this.rotateBitmap.getWidth();
                int height = CropImageActivity.this.rotateBitmap.getHeight();
                Rect imageRect = new Rect(0, 0, width, height);
                int cropWidth = (Math.min(width, height) * 4) / 5;
                int cropHeight = cropWidth;
                if (CropImageActivity.this.aspectX != 0 && CropImageActivity.this.aspectY != 0) {
                    if (CropImageActivity.this.aspectX > CropImageActivity.this.aspectY) {
                        cropHeight = (CropImageActivity.this.aspectY * cropWidth) / CropImageActivity.this.aspectX;
                    } else {
                        cropWidth = (CropImageActivity.this.aspectX * cropHeight) / CropImageActivity.this.aspectY;
                    }
                }
                int x = (width - cropWidth) / 2;
                int y = (height - cropHeight) / 2;
                RectF cropRect = new RectF(x, y, x + cropWidth, y + cropHeight);
                Matrix unrotatedMatrix = CropImageActivity.this.imageView.getUnrotatedMatrix();
                if (CropImageActivity.this.aspectX != 0 && CropImageActivity.this.aspectY != 0) {
                    z = true;
                }
                hv.setup(unrotatedMatrix, imageRect, cropRect, z);
                CropImageActivity.this.imageView.add(hv);
            }
        }

        public void crop() {
            CropImageActivity.this.handler.post(new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.Cropper.1
                @Override // java.lang.Runnable
                public void run() {
                    Cropper.this.makeDefault();
                    CropImageActivity.this.imageView.invalidate();
                    if (CropImageActivity.this.imageView.highlightViews.size() == 1) {
                        CropImageActivity.this.cropView = CropImageActivity.this.imageView.highlightViews.get(0);
                        CropImageActivity.this.cropView.setFocus(true);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSaveClicked() {
        Bitmap croppedImage;
        if (this.cropView != null && !this.isSaving) {
            this.isSaving = true;
            Rect r = this.cropView.getScaledCropRect(this.sampleSize);
            int width = r.width();
            int height = r.height();
            int outWidth = width;
            int outHeight = height;
            if (this.maxX > 0 && this.maxY > 0 && (width > this.maxX || height > this.maxY)) {
                float ratio = width / height;
                if (this.maxX / this.maxY > ratio) {
                    outHeight = this.maxY;
                    outWidth = (int) ((this.maxY * ratio) + 0.5f);
                } else {
                    outWidth = this.maxX;
                    outHeight = (int) ((this.maxX / ratio) + 0.5f);
                }
            }
            if (IN_MEMORY_CROP && this.rotateBitmap != null) {
                croppedImage = inMemoryCrop(this.rotateBitmap, null, r, width, height, outWidth, outHeight);
                if (croppedImage != null) {
                    this.imageView.setImageBitmapResetBase(croppedImage, true);
                    this.imageView.center(true, true);
                    this.imageView.highlightViews.clear();
                }
            } else {
                try {
                    croppedImage = decodeRegionCrop(null, r);
                    if (croppedImage != null) {
                        this.imageView.setImageRotateBitmapResetBase(new RotateBitmap(croppedImage, this.exifRotation), true);
                        this.imageView.center(true, true);
                        this.imageView.highlightViews.clear();
                    }
                } catch (IllegalArgumentException e) {
                    setResultException(e);
                    finish();
                    return;
                }
            }
            saveImage(croppedImage);
        }
    }

    private void saveImage(final Bitmap croppedImage) {
        if (croppedImage != null) {
            CropUtil.startBackgroundJob(this, null, getResources().getString(getResources().getIdentifier("crop__saving", ResIdReader.RES_TYPE_STRING, getPackageName())), new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    CropImageActivity.this.saveOutput(croppedImage);
                }
            }, this.handler);
        } else {
            finish();
        }
    }

    @TargetApi(10)
    private Bitmap decodeRegionCrop(Bitmap croppedImage, Rect rect) {
        BitmapRegionDecoder decoder;
        int width;
        int height;
        clearImageView();
        InputStream is = null;
        try {
            is = getContentResolver().openInputStream(this.sourceUri);
            decoder = BitmapRegionDecoder.newInstance(is, false);
            width = decoder.getWidth();
            height = decoder.getHeight();
            if (this.exifRotation != 0) {
                Matrix matrix = new Matrix();
                matrix.setRotate(-this.exifRotation);
                RectF adjusted = new RectF();
                matrix.mapRect(adjusted, new RectF(rect));
                adjusted.offset(adjusted.left < 0.0f ? width : 0.0f, adjusted.top < 0.0f ? height : 0.0f);
                rect = new Rect((int) adjusted.left, (int) adjusted.top, (int) adjusted.right, (int) adjusted.bottom);
            }
        } catch (OutOfMemoryError e) {
            Log.e("OOM cropping image: " + e.getMessage(), e);
            setResultException(e);
        } catch (IOException e2) {
            Log.e("Error cropping image: " + e2.getMessage(), e2);
            finish();
        } finally {
            CropUtil.closeSilently(is);
        }
        try {
            croppedImage = decoder.decodeRegion(rect, new BitmapFactory.Options());
            return croppedImage;
        } catch (IllegalArgumentException e3) {
            throw new IllegalArgumentException("Rectangle " + rect + " is outside of the image (" + width + "," + height + "," + this.exifRotation + ")", e3);
        }
    }

    private Bitmap inMemoryCrop(RotateBitmap rotateBitmap, Bitmap croppedImage, Rect r, int width, int height, int outWidth, int outHeight) {
        System.gc();
        try {
            croppedImage = Bitmap.createBitmap(outWidth, outHeight, Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(croppedImage);
            RectF dstRect = new RectF(0.0f, 0.0f, width, height);
            Matrix m = new Matrix();
            m.setRectToRect(new RectF(r), dstRect, Matrix.ScaleToFit.FILL);
            m.preConcat(rotateBitmap.getRotateMatrix());
            canvas.drawBitmap(rotateBitmap.getBitmap(), m, null);
        } catch (OutOfMemoryError e) {
            Log.e("OOM cropping image: " + e.getMessage(), e);
            setResultException(e);
            System.gc();
        }
        clearImageView();
        return croppedImage;
    }

    private void clearImageView() {
        this.imageView.clear();
        if (this.rotateBitmap != null) {
            this.rotateBitmap.recycle();
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveOutput(final Bitmap croppedImage) {
        if (this.saveUri != null) {
            OutputStream outputStream = null;
            try {
                outputStream = getContentResolver().openOutputStream(this.saveUri);
                if (outputStream != null) {
                    croppedImage.compress(Bitmap.CompressFormat.JPEG, 90, outputStream);
                }
            } catch (IOException e) {
                setResultException(e);
                Log.e("Cannot open file: " + this.saveUri, e);
            } finally {
                CropUtil.closeSilently(outputStream);
            }
            if (!IN_MEMORY_CROP) {
                CropUtil.copyExifRotation(CropUtil.getFromMediaUri(getContentResolver(), this.sourceUri), CropUtil.getFromMediaUri(getContentResolver(), this.saveUri));
            }
            setResultUri(this.saveUri);
        }
        this.handler.post(new Runnable() { // from class: com.soundcloud.android.crop.CropImageActivity.6
            @Override // java.lang.Runnable
            public void run() {
                CropImageActivity.this.imageView.clear();
                croppedImage.recycle();
            }
        });
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.soundcloud.android.crop.MonitoredActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.rotateBitmap != null) {
            this.rotateBitmap.recycle();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }

    public boolean isSaving() {
        return this.isSaving;
    }

    private void setResultUri(Uri uri) {
        setResult(-1, new Intent().putExtra("output", uri));
    }

    private void setResultException(Throwable throwable) {
        setResult(404, new Intent().putExtra("error", throwable));
    }
}
