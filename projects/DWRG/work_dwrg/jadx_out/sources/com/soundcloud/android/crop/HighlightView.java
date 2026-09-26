package com.soundcloud.android.crop;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HighlightView {
    private static final int DEFAULT_HIGHLIGHT_COLOR = -13388315;
    public static final int GROW_BOTTOM_EDGE = 16;
    public static final int GROW_LEFT_EDGE = 2;
    public static final int GROW_NONE = 1;
    public static final int GROW_RIGHT_EDGE = 4;
    public static final int GROW_TOP_EDGE = 8;
    private static final float HANDLE_RADIUS_DP = 12.0f;
    public static final int MOVE = 32;
    private static final float OUTLINE_DP = 2.0f;
    RectF cropRect;
    Rect drawRect;
    private float handleRadius;
    private int highlightColor;
    private RectF imageRect;
    private float initialAspectRatio;
    private boolean isFocused;
    private boolean maintainAspectRatio;
    Matrix matrix;
    private float outlineWidth;
    private boolean showThirds;
    private View viewContext;
    private final Paint outsidePaint = new Paint();
    private final Paint outlinePaint = new Paint();
    private final Paint handlePaint = new Paint();
    private ModifyMode modifyMode = ModifyMode.None;
    private HandleMode handleMode = HandleMode.Changing;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum HandleMode {
        Changing,
        Always,
        Never
    }

    /* loaded from: classes.dex */
    enum ModifyMode {
        None,
        Move,
        Grow
    }

    public HighlightView(View context) {
        this.viewContext = context;
        initStyles(context.getContext());
    }

    private void initStyles(Context context) {
        int id_highlightColor = context.getResources().getIdentifier("highlightColor", "attr", context.getPackageName());
        int id_showThirds = context.getResources().getIdentifier("showThirds", "attr", context.getPackageName());
        int id_showHandles = context.getResources().getIdentifier("showHandles", "attr", context.getPackageName());
        int id_cropImageStyle = context.getResources().getIdentifier("cropImageStyle", "attr", context.getPackageName());
        TypedValue outValue = new TypedValue();
        context.getTheme().resolveAttribute(id_cropImageStyle, outValue, true);
        TypedArray attributes = context.obtainStyledAttributes(outValue.resourceId, new int[]{id_highlightColor, id_showThirds, id_showHandles});
        try {
            this.showThirds = attributes.getBoolean(1, false);
            this.highlightColor = attributes.getColor(0, DEFAULT_HIGHLIGHT_COLOR);
            this.handleMode = HandleMode.values()[attributes.getInt(2, 0)];
        } finally {
            attributes.recycle();
        }
    }

    public void setup(Matrix m, Rect imageRect, RectF cropRect, boolean maintainAspectRatio) {
        this.matrix = new Matrix(m);
        this.cropRect = cropRect;
        this.imageRect = new RectF(imageRect);
        this.maintainAspectRatio = maintainAspectRatio;
        this.initialAspectRatio = this.cropRect.width() / this.cropRect.height();
        this.drawRect = computeLayout();
        this.outsidePaint.setARGB(125, 50, 50, 50);
        this.outlinePaint.setStyle(Paint.Style.STROKE);
        this.outlinePaint.setAntiAlias(true);
        this.outlineWidth = dpToPx(OUTLINE_DP);
        this.handlePaint.setColor(this.highlightColor);
        this.handlePaint.setStyle(Paint.Style.FILL);
        this.handlePaint.setAntiAlias(true);
        this.handleRadius = dpToPx(HANDLE_RADIUS_DP);
        this.modifyMode = ModifyMode.None;
    }

    private float dpToPx(float dp) {
        return this.viewContext.getResources().getDisplayMetrics().density * dp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void draw(Canvas canvas) {
        canvas.save();
        Path path = new Path();
        this.outlinePaint.setStrokeWidth(this.outlineWidth);
        if (!hasFocus()) {
            this.outlinePaint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRect(this.drawRect, this.outlinePaint);
            return;
        }
        Rect viewDrawingRect = new Rect();
        this.viewContext.getDrawingRect(viewDrawingRect);
        path.addRect(new RectF(this.drawRect), Path.Direction.CW);
        this.outlinePaint.setColor(this.highlightColor);
        if (isClipPathSupported(canvas)) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawRect(viewDrawingRect, this.outsidePaint);
        } else {
            drawOutsideFallback(canvas);
        }
        canvas.restore();
        canvas.drawPath(path, this.outlinePaint);
        if (this.showThirds) {
            drawThirds(canvas);
        }
        if (this.handleMode == HandleMode.Always || (this.handleMode == HandleMode.Changing && this.modifyMode == ModifyMode.Grow)) {
            drawHandles(canvas);
        }
    }

    private void drawOutsideFallback(Canvas canvas) {
        canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), this.drawRect.top, this.outsidePaint);
        canvas.drawRect(0.0f, this.drawRect.bottom, canvas.getWidth(), canvas.getHeight(), this.outsidePaint);
        canvas.drawRect(0.0f, this.drawRect.top, this.drawRect.left, this.drawRect.bottom, this.outsidePaint);
        canvas.drawRect(this.drawRect.right, this.drawRect.top, canvas.getWidth(), this.drawRect.bottom, this.outsidePaint);
    }

    @SuppressLint({"NewApi"})
    private boolean isClipPathSupported(Canvas canvas) {
        if (Build.VERSION.SDK_INT == 17) {
            return false;
        }
        return Build.VERSION.SDK_INT < 14 || Build.VERSION.SDK_INT > 15 || !canvas.isHardwareAccelerated();
    }

    private void drawHandles(Canvas canvas) {
        int xMiddle = this.drawRect.left + ((this.drawRect.right - this.drawRect.left) / 2);
        int yMiddle = this.drawRect.top + ((this.drawRect.bottom - this.drawRect.top) / 2);
        canvas.drawCircle(this.drawRect.left, yMiddle, this.handleRadius, this.handlePaint);
        canvas.drawCircle(xMiddle, this.drawRect.top, this.handleRadius, this.handlePaint);
        canvas.drawCircle(this.drawRect.right, yMiddle, this.handleRadius, this.handlePaint);
        canvas.drawCircle(xMiddle, this.drawRect.bottom, this.handleRadius, this.handlePaint);
    }

    private void drawThirds(Canvas canvas) {
        this.outlinePaint.setStrokeWidth(1.0f);
        float xThird = (this.drawRect.right - this.drawRect.left) / 3;
        float yThird = (this.drawRect.bottom - this.drawRect.top) / 3;
        canvas.drawLine(this.drawRect.left + xThird, this.drawRect.top, this.drawRect.left + xThird, this.drawRect.bottom, this.outlinePaint);
        canvas.drawLine((xThird * OUTLINE_DP) + this.drawRect.left, this.drawRect.top, (xThird * OUTLINE_DP) + this.drawRect.left, this.drawRect.bottom, this.outlinePaint);
        canvas.drawLine(this.drawRect.left, this.drawRect.top + yThird, this.drawRect.right, this.drawRect.top + yThird, this.outlinePaint);
        canvas.drawLine(this.drawRect.left, (yThird * OUTLINE_DP) + this.drawRect.top, this.drawRect.right, (yThird * OUTLINE_DP) + this.drawRect.top, this.outlinePaint);
    }

    public void setMode(ModifyMode mode) {
        if (mode != this.modifyMode) {
            this.modifyMode = mode;
            this.viewContext.invalidate();
        }
    }

    public int getHit(float x, float y) {
        Rect r = computeLayout();
        int retval = 1;
        boolean verticalCheck = y >= ((float) r.top) - 20.0f && y < ((float) r.bottom) + 20.0f;
        boolean horizCheck = x >= ((float) r.left) - 20.0f && x < ((float) r.right) + 20.0f;
        if (Math.abs(r.left - x) < 20.0f && verticalCheck) {
            retval = 1 | 2;
        }
        if (Math.abs(r.right - x) < 20.0f && verticalCheck) {
            retval |= 4;
        }
        if (Math.abs(r.top - y) < 20.0f && horizCheck) {
            retval |= 8;
        }
        if (Math.abs(r.bottom - y) < 20.0f && horizCheck) {
            retval |= 16;
        }
        if (retval == 1 && r.contains((int) x, (int) y)) {
            return 32;
        }
        return retval;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleMotion(int edge, float dx, float dy) {
        Rect r = computeLayout();
        if (edge == 32) {
            moveBy((this.cropRect.width() / r.width()) * dx, (this.cropRect.height() / r.height()) * dy);
            return;
        }
        if ((edge & 6) == 0) {
            dx = 0.0f;
        }
        if ((edge & 24) == 0) {
            dy = 0.0f;
        }
        float xDelta = dx * (this.cropRect.width() / r.width());
        float yDelta = dy * (this.cropRect.height() / r.height());
        growBy(((edge & 2) != 0 ? -1 : 1) * xDelta, ((edge & 8) == 0 ? 1 : -1) * yDelta);
    }

    void moveBy(float dx, float dy) {
        Rect invalRect = new Rect(this.drawRect);
        this.cropRect.offset(dx, dy);
        this.cropRect.offset(Math.max(0.0f, this.imageRect.left - this.cropRect.left), Math.max(0.0f, this.imageRect.top - this.cropRect.top));
        this.cropRect.offset(Math.min(0.0f, this.imageRect.right - this.cropRect.right), Math.min(0.0f, this.imageRect.bottom - this.cropRect.bottom));
        this.drawRect = computeLayout();
        invalRect.union(this.drawRect);
        invalRect.inset(-((int) this.handleRadius), -((int) this.handleRadius));
        this.viewContext.invalidate(invalRect);
    }

    void growBy(float dx, float dy) {
        if (this.maintainAspectRatio) {
            if (dx != 0.0f) {
                dy = dx / this.initialAspectRatio;
            } else if (dy != 0.0f) {
                dx = dy * this.initialAspectRatio;
            }
        }
        RectF r = new RectF(this.cropRect);
        if (dx > 0.0f && r.width() + (OUTLINE_DP * dx) > this.imageRect.width()) {
            dx = (this.imageRect.width() - r.width()) / OUTLINE_DP;
            if (this.maintainAspectRatio) {
                dy = dx / this.initialAspectRatio;
            }
        }
        if (dy > 0.0f && r.height() + (OUTLINE_DP * dy) > this.imageRect.height()) {
            dy = (this.imageRect.height() - r.height()) / OUTLINE_DP;
            if (this.maintainAspectRatio) {
                dx = dy * this.initialAspectRatio;
            }
        }
        r.inset(-dx, -dy);
        if (r.width() < 25.0f) {
            r.inset((-(25.0f - r.width())) / OUTLINE_DP, 0.0f);
        }
        float heightCap = this.maintainAspectRatio ? 25.0f / this.initialAspectRatio : 25.0f;
        if (r.height() < heightCap) {
            r.inset(0.0f, (-(heightCap - r.height())) / OUTLINE_DP);
        }
        if (r.left < this.imageRect.left) {
            r.offset(this.imageRect.left - r.left, 0.0f);
        } else if (r.right > this.imageRect.right) {
            r.offset(-(r.right - this.imageRect.right), 0.0f);
        }
        if (r.top < this.imageRect.top) {
            r.offset(0.0f, this.imageRect.top - r.top);
        } else if (r.bottom > this.imageRect.bottom) {
            r.offset(0.0f, -(r.bottom - this.imageRect.bottom));
        }
        this.cropRect.set(r);
        this.drawRect = computeLayout();
        this.viewContext.invalidate();
    }

    public Rect getScaledCropRect(float scale) {
        return new Rect((int) (this.cropRect.left * scale), (int) (this.cropRect.top * scale), (int) (this.cropRect.right * scale), (int) (this.cropRect.bottom * scale));
    }

    private Rect computeLayout() {
        RectF r = new RectF(this.cropRect.left, this.cropRect.top, this.cropRect.right, this.cropRect.bottom);
        this.matrix.mapRect(r);
        return new Rect(Math.round(r.left), Math.round(r.top), Math.round(r.right), Math.round(r.bottom));
    }

    public void invalidate() {
        this.drawRect = computeLayout();
    }

    public boolean hasFocus() {
        return this.isFocused;
    }

    public void setFocus(boolean isFocused) {
        this.isFocused = isFocused;
    }
}
