package com.soundcloud.android.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.soundcloud.android.crop.HighlightView;
import com.soundcloud.android.crop.ImageViewTouchBase;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CropImageView extends ImageViewTouchBase {
    Context context;
    ArrayList<HighlightView> highlightViews;
    private float lastX;
    private float lastY;
    private int motionEdge;
    HighlightView motionHighlightView;

    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ Matrix getUnrotatedMatrix() {
        return super.getUnrotatedMatrix();
    }

    @Override // com.soundcloud.android.crop.ImageViewTouchBase, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyDown(int x0, KeyEvent x1) {
        return super.onKeyDown(x0, x1);
    }

    @Override // com.soundcloud.android.crop.ImageViewTouchBase, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyUp(int x0, KeyEvent x1) {
        return super.onKeyUp(x0, x1);
    }

    @Override // com.soundcloud.android.crop.ImageViewTouchBase, android.widget.ImageView
    public /* bridge */ /* synthetic */ void setImageBitmap(Bitmap x0) {
        super.setImageBitmap(x0);
    }

    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void setImageBitmapResetBase(Bitmap x0, boolean x1) {
        super.setImageBitmapResetBase(x0, x1);
    }

    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void setImageRotateBitmapResetBase(RotateBitmap x0, boolean x1) {
        super.setImageRotateBitmapResetBase(x0, x1);
    }

    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void setRecycler(ImageViewTouchBase.Recycler x0) {
        super.setRecycler(x0);
    }

    public CropImageView(Context context) {
        super(context);
        this.highlightViews = new ArrayList<>();
    }

    public CropImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.highlightViews = new ArrayList<>();
    }

    public CropImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.highlightViews = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.soundcloud.android.crop.ImageViewTouchBase, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.bitmapDisplayed.getBitmap() != null) {
            Iterator i$ = this.highlightViews.iterator();
            while (i$.hasNext()) {
                HighlightView hv = i$.next();
                hv.matrix.set(getUnrotatedMatrix());
                hv.invalidate();
                if (hv.hasFocus()) {
                    centerBasedOnHighlightView(hv);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public void zoomTo(float scale, float centerX, float centerY) {
        super.zoomTo(scale, centerX, centerY);
        Iterator i$ = this.highlightViews.iterator();
        while (i$.hasNext()) {
            HighlightView hv = i$.next();
            hv.matrix.set(getUnrotatedMatrix());
            hv.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public void zoomIn() {
        super.zoomIn();
        Iterator i$ = this.highlightViews.iterator();
        while (i$.hasNext()) {
            HighlightView hv = i$.next();
            hv.matrix.set(getUnrotatedMatrix());
            hv.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public void zoomOut() {
        super.zoomOut();
        Iterator i$ = this.highlightViews.iterator();
        while (i$.hasNext()) {
            HighlightView hv = i$.next();
            hv.matrix.set(getUnrotatedMatrix());
            hv.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.soundcloud.android.crop.ImageViewTouchBase
    public void postTranslate(float deltaX, float deltaY) {
        super.postTranslate(deltaX, deltaY);
        Iterator i$ = this.highlightViews.iterator();
        while (i$.hasNext()) {
            HighlightView hv = i$.next();
            hv.matrix.postTranslate(deltaX, deltaY);
            hv.invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        CropImageActivity cropImageActivity = (CropImageActivity) this.context;
        if (cropImageActivity.isSaving()) {
            return false;
        }
        switch (event.getAction()) {
            case 0:
                Iterator i$ = this.highlightViews.iterator();
                while (true) {
                    if (!i$.hasNext()) {
                        break;
                    } else {
                        HighlightView hv = i$.next();
                        int edge = hv.getHit(event.getX(), event.getY());
                        if (edge != 1) {
                            this.motionEdge = edge;
                            this.motionHighlightView = hv;
                            this.lastX = event.getX();
                            this.lastY = event.getY();
                            this.motionHighlightView.setMode(edge == 32 ? HighlightView.ModifyMode.Move : HighlightView.ModifyMode.Grow);
                            break;
                        }
                    }
                }
            case 1:
                if (this.motionHighlightView != null) {
                    centerBasedOnHighlightView(this.motionHighlightView);
                    this.motionHighlightView.setMode(HighlightView.ModifyMode.None);
                }
                this.motionHighlightView = null;
                break;
            case 2:
                if (this.motionHighlightView != null) {
                    this.motionHighlightView.handleMotion(this.motionEdge, event.getX() - this.lastX, event.getY() - this.lastY);
                    this.lastX = event.getX();
                    this.lastY = event.getY();
                    ensureVisible(this.motionHighlightView);
                    break;
                }
                break;
        }
        switch (event.getAction()) {
            case 1:
                center(true, true);
                break;
            case 2:
                if (getScale() == 1.0f) {
                    center(true, true);
                    break;
                }
                break;
        }
        return true;
    }

    private void ensureVisible(HighlightView hv) {
        Rect r = hv.drawRect;
        int panDeltaX1 = Math.max(0, getLeft() - r.left);
        int panDeltaX2 = Math.min(0, getRight() - r.right);
        int panDeltaY1 = Math.max(0, getTop() - r.top);
        int panDeltaY2 = Math.min(0, getBottom() - r.bottom);
        int panDeltaX = panDeltaX1 != 0 ? panDeltaX1 : panDeltaX2;
        int panDeltaY = panDeltaY1 != 0 ? panDeltaY1 : panDeltaY2;
        if (panDeltaX != 0 || panDeltaY != 0) {
            panBy(panDeltaX, panDeltaY);
        }
    }

    private void centerBasedOnHighlightView(HighlightView hv) {
        Rect drawRect = hv.drawRect;
        float width = drawRect.width();
        float height = drawRect.height();
        float thisWidth = getWidth();
        float thisHeight = getHeight();
        float z1 = (thisWidth / width) * 0.6f;
        float z2 = (thisHeight / height) * 0.6f;
        float zoom = Math.max(1.0f, Math.min(z1, z2) * getScale());
        if (Math.abs(zoom - getScale()) / zoom > 0.1d) {
            float[] coordinates = {hv.cropRect.centerX(), hv.cropRect.centerY()};
            getUnrotatedMatrix().mapPoints(coordinates);
            zoomTo(zoom, coordinates[0], coordinates[1], 300.0f);
        }
        ensureVisible(hv);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Iterator i$ = this.highlightViews.iterator();
        while (i$.hasNext()) {
            HighlightView mHighlightView = i$.next();
            mHighlightView.draw(canvas);
        }
    }

    public void add(HighlightView hv) {
        this.highlightViews.add(hv);
        invalidate();
    }
}
