package com.netease.codescanner.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.netease.codescanner.common.Logging;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ViewfinderView extends View {
    private static final int[] b = {0, 64, 128, 192, 255, 192, 128, 64};
    private static float e;
    boolean a;
    private final boolean c;
    private int d;
    private Paint f;
    private int g;
    private int h;
    private int i;
    private Bitmap j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private Drawable o;
    private List<ResultPoint> p;
    private List<ResultPoint> q;
    private Bitmap r;
    private Context s;
    private final int t;
    private final int u;
    private final int v;

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = 1;
        this.t = 1610612736;
        this.u = -1342177280;
        this.v = -1063662592;
        this.s = context;
        e = context.getResources().getDisplayMetrics().density;
        this.d = (int) (20.0f * e);
        this.f = new Paint();
        this.k = getColor(getMaskColor(this.s), 1610612736);
        this.l = getColor(getResultColor(this.s), -1342177280);
        this.n = getColor(getResultPointColor(this.s), -1063662592);
        this.m = getLineWidth(getCornerWidth(this.s), 10);
        this.o = getLineDrawable(this.s);
        this.p = new ArrayList(5);
        this.c = enableDrawPoints();
        this.q = null;
    }

    private void a(Canvas canvas, Rect rect, float f, float f2) {
        List<ResultPoint> list = this.p;
        List<ResultPoint> list2 = this.q;
        int i = rect.left;
        int i2 = rect.top;
        if (list.isEmpty()) {
            this.q = null;
        } else {
            this.p = new ArrayList(5);
            this.q = list;
            this.f.setAlpha(160);
            this.f.setColor(this.n);
            synchronized (list) {
                for (ResultPoint resultPoint : list) {
                    canvas.drawCircle(((int) resultPoint.getX()) + i, ((int) resultPoint.getY()) + i2, 10.0f, this.f);
                }
            }
        }
        if (list2 != null) {
            this.f.setAlpha(80);
            this.f.setColor(this.n);
            synchronized (list2) {
                for (ResultPoint resultPoint2 : list2) {
                    canvas.drawCircle(((int) (resultPoint2.getX() * f)) + i, ((int) (resultPoint2.getY() * f2)) + i2, 5.0f, this.f);
                }
            }
        }
    }

    public void addPossibleResultPoint(ResultPoint resultPoint) {
        ResultPoint resultPoint2 = new ResultPoint(resultPoint.getX() * e, resultPoint.getY() * e);
        Logging.d("QA: Point:" + resultPoint2.toString());
        List<ResultPoint> list = this.p;
        synchronized (list) {
            list.add(resultPoint2);
            int size = list.size();
            if (size > 20) {
                list.subList(0, size - 10).clear();
            }
        }
    }

    public void drawResultBitmap(Bitmap bitmap) {
        this.j = bitmap;
        invalidate();
    }

    public void drawViewfinder() {
        this.j = null;
        invalidate();
    }

    public boolean enableDrawPoints() {
        return false;
    }

    public int getColor(Integer num, int i) {
        return num == null ? i : num.intValue();
    }

    public abstract int getCornerWidth(Context context);

    public abstract Drawable getLineDrawable(Context context);

    public int getLineWidth(int i, int i2) {
        return i < 0 ? i2 : i;
    }

    public abstract Integer getMaskColor(Context context);

    public abstract Integer getResultColor(Context context);

    public abstract Integer getResultPointColor(Context context);

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        if (this.r == null) {
            this.r = ((BitmapDrawable) this.o).getBitmap();
            Matrix matrix = new Matrix();
            float width = getWidth() / this.r.getWidth();
            matrix.postScale(width, width);
            this.r = Bitmap.createBitmap(this.r, 0, 0, this.r.getWidth(), this.r.getHeight(), matrix, true);
        }
        if (!this.a) {
            this.a = true;
            this.g = rect.top;
            this.h = rect.bottom;
        }
        int width2 = canvas.getWidth();
        int height = canvas.getHeight();
        float width3 = rect.width() / width2;
        float height2 = rect.height() / height;
        this.f.setColor(this.j != null ? this.l : this.k);
        canvas.drawRect(0.0f, 0.0f, width2, rect.top, this.f);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.f);
        canvas.drawRect(rect.right + 1, rect.top, width2, rect.bottom + 1, this.f);
        canvas.drawRect(0.0f, rect.bottom + 1, width2, height, this.f);
        if (this.j != null) {
            this.f.setAlpha(255);
            canvas.drawBitmap(this.j, rect.left, rect.top, this.f);
            return;
        }
        this.f.setColor(this.k);
        canvas.drawRect(rect.left, rect.top, rect.left + this.d, rect.top + this.m, this.f);
        canvas.drawRect(rect.left, rect.top, rect.left + this.m, rect.top + this.d, this.f);
        canvas.drawRect(rect.right - this.d, rect.top, rect.right, rect.top + this.m, this.f);
        canvas.drawRect(rect.right - this.m, rect.top, rect.right, rect.top + this.d, this.f);
        canvas.drawRect(rect.left, rect.bottom - this.m, rect.left + this.d, rect.bottom, this.f);
        canvas.drawRect(rect.left, rect.bottom - this.d, rect.left + this.m, rect.bottom, this.f);
        canvas.drawRect(rect.right - this.d, rect.bottom - this.m, rect.right, rect.bottom, this.f);
        canvas.drawRect(rect.right - this.m, rect.bottom - this.d, rect.right, rect.bottom, this.f);
        this.g += this.i * 5;
        if (this.g >= rect.bottom - this.r.getHeight()) {
            this.i = -1;
        } else if (this.g <= rect.top) {
            this.i = 1;
        }
        canvas.drawBitmap(this.r, 0.0f, this.g + 2, this.f);
        if (this.c) {
            a(canvas, rect, width3, height2);
        }
        postInvalidateDelayed(10L, rect.left, rect.top, rect.right, rect.bottom);
    }
}
