package com.soundcloud.android.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView;

/* loaded from: classes.dex */
abstract class ImageViewTouchBase extends ImageView {
    private static final float SCALE_RATE = 1.25f;
    protected Matrix baseMatrix;
    protected final RotateBitmap bitmapDisplayed;
    private final Matrix displayMatrix;
    protected Handler handler;
    private final float[] matrixValues;
    float maxZoom;
    private Runnable onLayoutRunnable;
    private Recycler recycler;
    protected Matrix suppMatrix;
    int thisHeight;
    int thisWidth;

    /* loaded from: classes.dex */
    public interface Recycler {
        void recycle(Bitmap bitmap);
    }

    public ImageViewTouchBase(Context context) {
        super(context);
        this.baseMatrix = new Matrix();
        this.suppMatrix = new Matrix();
        this.displayMatrix = new Matrix();
        this.matrixValues = new float[9];
        this.bitmapDisplayed = new RotateBitmap(null, 0);
        this.thisWidth = -1;
        this.thisHeight = -1;
        this.handler = new Handler();
        init();
    }

    public ImageViewTouchBase(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.baseMatrix = new Matrix();
        this.suppMatrix = new Matrix();
        this.displayMatrix = new Matrix();
        this.matrixValues = new float[9];
        this.bitmapDisplayed = new RotateBitmap(null, 0);
        this.thisWidth = -1;
        this.thisHeight = -1;
        this.handler = new Handler();
        init();
    }

    public ImageViewTouchBase(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.baseMatrix = new Matrix();
        this.suppMatrix = new Matrix();
        this.displayMatrix = new Matrix();
        this.matrixValues = new float[9];
        this.bitmapDisplayed = new RotateBitmap(null, 0);
        this.thisWidth = -1;
        this.thisHeight = -1;
        this.handler = new Handler();
        init();
    }

    public void setRecycler(Recycler recycler) {
        this.recycler = recycler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.thisWidth = right - left;
        this.thisHeight = bottom - top;
        Runnable r = this.onLayoutRunnable;
        if (r != null) {
            this.onLayoutRunnable = null;
            r.run();
        }
        if (this.bitmapDisplayed.getBitmap() != null) {
            getProperBaseMatrix(this.bitmapDisplayed, this.baseMatrix, true);
            setImageMatrix(getImageViewMatrix());
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || event.getRepeatCount() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        event.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode != 4 || !event.isTracking() || event.isCanceled() || getScale() <= 1.0f) {
            return super.onKeyUp(keyCode, event);
        }
        zoomTo(1.0f);
        return true;
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        setImageBitmap(bitmap, 0);
    }

    private void setImageBitmap(Bitmap bitmap, int rotation) {
        super.setImageBitmap(bitmap);
        Drawable d = getDrawable();
        if (d != null) {
            d.setDither(true);
        }
        Bitmap old = this.bitmapDisplayed.getBitmap();
        this.bitmapDisplayed.setBitmap(bitmap);
        this.bitmapDisplayed.setRotation(rotation);
        if (old != null && old != bitmap && this.recycler != null) {
            this.recycler.recycle(old);
        }
    }

    public void clear() {
        setImageBitmapResetBase(null, true);
    }

    public void setImageBitmapResetBase(Bitmap bitmap, boolean resetSupp) {
        setImageRotateBitmapResetBase(new RotateBitmap(bitmap, 0), resetSupp);
    }

    public void setImageRotateBitmapResetBase(final RotateBitmap bitmap, final boolean resetSupp) {
        int viewWidth = getWidth();
        if (viewWidth <= 0) {
            this.onLayoutRunnable = new Runnable() { // from class: com.soundcloud.android.crop.ImageViewTouchBase.1
                @Override // java.lang.Runnable
                public void run() {
                    ImageViewTouchBase.this.setImageRotateBitmapResetBase(bitmap, resetSupp);
                }
            };
            return;
        }
        if (bitmap.getBitmap() != null) {
            getProperBaseMatrix(bitmap, this.baseMatrix, true);
            setImageBitmap(bitmap.getBitmap(), bitmap.getRotation());
        } else {
            this.baseMatrix.reset();
            setImageBitmap(null);
        }
        if (resetSupp) {
            this.suppMatrix.reset();
        }
        setImageMatrix(getImageViewMatrix());
        this.maxZoom = calculateMaxZoom();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void center(boolean horizontal, boolean vertical) {
        Bitmap bitmap = this.bitmapDisplayed.getBitmap();
        if (bitmap != null) {
            Matrix m = getImageViewMatrix();
            RectF rect = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            m.mapRect(rect);
            float height = rect.height();
            float width = rect.width();
            float deltaX = 0.0f;
            float deltaY = 0.0f;
            if (vertical) {
                int viewHeight = getHeight();
                if (height < viewHeight) {
                    deltaY = ((viewHeight - height) / 2.0f) - rect.top;
                } else if (rect.top > 0.0f) {
                    deltaY = -rect.top;
                } else if (rect.bottom < viewHeight) {
                    deltaY = getHeight() - rect.bottom;
                }
            }
            if (horizontal) {
                int viewWidth = getWidth();
                if (width < viewWidth) {
                    deltaX = ((viewWidth - width) / 2.0f) - rect.left;
                } else if (rect.left > 0.0f) {
                    deltaX = -rect.left;
                } else if (rect.right < viewWidth) {
                    deltaX = viewWidth - rect.right;
                }
            }
            postTranslate(deltaX, deltaY);
            setImageMatrix(getImageViewMatrix());
        }
    }

    private void init() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    protected float getValue(Matrix matrix, int whichValue) {
        matrix.getValues(this.matrixValues);
        return this.matrixValues[whichValue];
    }

    protected float getScale(Matrix matrix) {
        return getValue(matrix, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getScale() {
        return getScale(this.suppMatrix);
    }

    private void getProperBaseMatrix(RotateBitmap bitmap, Matrix matrix, boolean includeRotation) {
        float viewWidth = getWidth();
        float viewHeight = getHeight();
        float w = bitmap.getWidth();
        float h = bitmap.getHeight();
        matrix.reset();
        float widthScale = Math.min(viewWidth / w, 3.0f);
        float heightScale = Math.min(viewHeight / h, 3.0f);
        float scale = Math.min(widthScale, heightScale);
        if (includeRotation) {
            matrix.postConcat(bitmap.getRotateMatrix());
        }
        matrix.postScale(scale, scale);
        matrix.postTranslate((viewWidth - (w * scale)) / 2.0f, (viewHeight - (h * scale)) / 2.0f);
    }

    protected Matrix getImageViewMatrix() {
        this.displayMatrix.set(this.baseMatrix);
        this.displayMatrix.postConcat(this.suppMatrix);
        return this.displayMatrix;
    }

    public Matrix getUnrotatedMatrix() {
        Matrix unrotated = new Matrix();
        getProperBaseMatrix(this.bitmapDisplayed, unrotated, false);
        unrotated.postConcat(this.suppMatrix);
        return unrotated;
    }

    protected float calculateMaxZoom() {
        if (this.bitmapDisplayed.getBitmap() == null) {
            return 1.0f;
        }
        float fw = this.bitmapDisplayed.getWidth() / this.thisWidth;
        float fh = this.bitmapDisplayed.getHeight() / this.thisHeight;
        return Math.max(fw, fh) * 4.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zoomTo(float scale, float centerX, float centerY) {
        if (scale > this.maxZoom) {
            scale = this.maxZoom;
        }
        float oldScale = getScale();
        float deltaScale = scale / oldScale;
        this.suppMatrix.postScale(deltaScale, deltaScale, centerX, centerY);
        setImageMatrix(getImageViewMatrix());
        center(true, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zoomTo(float scale, final float centerX, final float centerY, final float durationMs) {
        final float incrementPerMs = (scale - getScale()) / durationMs;
        final float oldScale = getScale();
        final long startTime = System.currentTimeMillis();
        this.handler.post(new Runnable() { // from class: com.soundcloud.android.crop.ImageViewTouchBase.2
            @Override // java.lang.Runnable
            public void run() {
                long now = System.currentTimeMillis();
                float currentMs = Math.min(durationMs, (float) (now - startTime));
                float target = oldScale + (incrementPerMs * currentMs);
                ImageViewTouchBase.this.zoomTo(target, centerX, centerY);
                if (currentMs < durationMs) {
                    ImageViewTouchBase.this.handler.post(this);
                }
            }
        });
    }

    protected void zoomTo(float scale) {
        float cx = getWidth() / 2.0f;
        float cy = getHeight() / 2.0f;
        zoomTo(scale, cx, cy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zoomIn() {
        zoomIn(SCALE_RATE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zoomOut() {
        zoomOut(SCALE_RATE);
    }

    protected void zoomIn(float rate) {
        if (getScale() < this.maxZoom && this.bitmapDisplayed.getBitmap() != null) {
            float cx = getWidth() / 2.0f;
            float cy = getHeight() / 2.0f;
            this.suppMatrix.postScale(rate, rate, cx, cy);
            setImageMatrix(getImageViewMatrix());
        }
    }

    protected void zoomOut(float rate) {
        if (this.bitmapDisplayed.getBitmap() != null) {
            float cx = getWidth() / 2.0f;
            float cy = getHeight() / 2.0f;
            Matrix tmp = new Matrix(this.suppMatrix);
            tmp.postScale(1.0f / rate, 1.0f / rate, cx, cy);
            if (getScale(tmp) < 1.0f) {
                this.suppMatrix.setScale(1.0f, 1.0f, cx, cy);
            } else {
                this.suppMatrix.postScale(1.0f / rate, 1.0f / rate, cx, cy);
            }
            setImageMatrix(getImageViewMatrix());
            center(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postTranslate(float dx, float dy) {
        this.suppMatrix.postTranslate(dx, dy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void panBy(float dx, float dy) {
        postTranslate(dx, dy);
        setImageMatrix(getImageViewMatrix());
    }
}
