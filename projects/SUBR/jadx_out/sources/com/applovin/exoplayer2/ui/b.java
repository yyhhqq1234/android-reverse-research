package com.applovin.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.applovin.impl.b1;
import com.applovin.impl.xp;
import com.applovin.sdk.R;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class b extends View implements i {
    private final float A;
    private int B;
    private long C;
    private int D;
    private Rect E;
    private ValueAnimator F;
    private float G;
    private boolean H;
    private boolean I;
    private long J;
    private long K;
    private long L;
    private long M;
    private int N;
    private long[] O;
    private boolean[] P;
    private final Rect a;
    private final Rect b;
    private final Rect c;
    private final Rect d;
    private final Paint f;
    private final Paint g;
    private final Paint h;
    private final Paint i;
    private final Paint j;
    private final Paint k;
    private final Drawable l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final int r;
    private final int s;
    private final int t;
    private final int u;
    private final StringBuilder v;
    private final Formatter w;
    private final Runnable x;
    private final CopyOnWriteArraySet y;
    private final Point z;

    public b(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        this(context, attributeSet, i, attributeSet2, 0);
    }

    private static int a(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    private static int b(float f, int i) {
        return (int) (i / f);
    }

    private void c(long j) {
        if (this.J == j) {
            return;
        }
        this.J = j;
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((i.a) it.next()).b(this, j);
        }
    }

    private long getPositionIncrement() {
        long j = this.C;
        if (j != -9223372036854775807L) {
            return j;
        }
        long j2 = this.K;
        if (j2 == -9223372036854775807L) {
            return 0L;
        }
        return j2 / ((long) this.B);
    }

    private String getProgressText() {
        return xp.a(this.v, this.w, this.L);
    }

    private long getScrubberPosition() {
        if (this.b.width() <= 0 || this.K == -9223372036854775807L) {
            return 0L;
        }
        return (((long) this.d.width()) * this.K) / ((long) this.b.width());
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        c();
    }

    @Override // com.applovin.exoplayer2.ui.i
    public long getPreferredUpdateDelay() {
        int iB = b(this.A, this.b.width());
        if (iB != 0) {
            long j = this.K;
            if (j != 0 && j != -9223372036854775807L) {
                return j / ((long) iB);
            }
        }
        return Long.MAX_VALUE;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        b(canvas);
        a(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!this.I || z) {
            return;
        }
        a(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.K <= 0) {
            return;
        }
        if (xp.a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i != 66) {
                switch (i) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (a(positionIncrement)) {
                            removeCallbacks(this.x);
                            postDelayed(this.x, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (a(positionIncrement)) {
                            removeCallbacks(this.x);
                            postDelayed(this.x, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.I) {
                            a(false);
                            return true;
                        }
                        break;
                }
            } else if (this.I) {
                a(false);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingBottom;
        int iMax;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i5 - getPaddingRight();
        int i7 = this.H ? 0 : this.t;
        if (this.o == 1) {
            paddingBottom = (i6 - getPaddingBottom()) - this.n;
            int paddingBottom2 = i6 - getPaddingBottom();
            int i8 = this.m;
            iMax = (paddingBottom2 - i8) - Math.max(i7 - (i8 / 2), 0);
        } else {
            paddingBottom = (i6 - this.n) / 2;
            iMax = (i6 - this.m) / 2;
        }
        this.a.set(paddingLeft, paddingBottom, paddingRight, this.n + paddingBottom);
        Rect rect = this.b;
        Rect rect2 = this.a;
        rect.set(rect2.left + i7, iMax, rect2.right - i7, this.m + iMax);
        if (xp.a >= 29) {
            a(i5, i6);
        }
        b();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.n;
        } else if (mode != 1073741824) {
            size = Math.min(this.n, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        c();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.l;
        if (drawable == null || !a(drawable, i)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.K > 0) {
            Point pointA = a(motionEvent);
            int i = pointA.x;
            int i2 = pointA.y;
            int action = motionEvent.getAction();
            if (action == 0) {
                float f = i;
                if (a(f, i2)) {
                    a(f);
                    b(getScrubberPosition());
                    b();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.I) {
                    a(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (this.I) {
                        a(motionEvent.getAction() == 3);
                        return true;
                    }
                }
            } else if (this.I) {
                if (i2 < this.u) {
                    int i3 = this.D;
                    a(i3 + ((i - i3) / 3));
                } else {
                    this.D = i;
                    a(i);
                }
                c(getScrubberPosition());
                b();
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.K <= 0) {
            return false;
        }
        if (i == 8192) {
            if (a(-getPositionIncrement())) {
                a(false);
            }
        } else {
            if (i != 4096) {
                return false;
            }
            if (a(getPositionIncrement())) {
                a(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i) {
        this.i.setColor(i);
        invalidate(this.a);
    }

    public void setBufferedColor(int i) {
        this.g.setColor(i);
        invalidate(this.a);
    }

    @Override // com.applovin.exoplayer2.ui.i
    public void setBufferedPosition(long j) {
        if (this.M == j) {
            return;
        }
        this.M = j;
        b();
    }

    @Override // com.applovin.exoplayer2.ui.i
    public void setDuration(long j) {
        if (this.K == j) {
            return;
        }
        this.K = j;
        if (this.I && j == -9223372036854775807L) {
            a(true);
        }
        b();
    }

    @Override // android.view.View, com.applovin.exoplayer2.ui.i
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.I || z) {
            return;
        }
        a(true);
    }

    public void setKeyCountIncrement(int i) {
        b1.a(i > 0);
        this.B = i;
        this.C = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j) {
        b1.a(j > 0);
        this.B = -1;
        this.C = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.j.setColor(i);
        invalidate(this.a);
    }

    public void setPlayedColor(int i) {
        this.f.setColor(i);
        invalidate(this.a);
    }

    @Override // com.applovin.exoplayer2.ui.i
    public void setPosition(long j) {
        if (this.L == j) {
            return;
        }
        this.L = j;
        setContentDescription(getProgressText());
        b();
    }

    public void setScrubberColor(int i) {
        this.k.setColor(i);
        invalidate(this.a);
    }

    public void setUnplayedColor(int i) {
        this.h.setColor(i);
        invalidate(this.a);
    }

    public b(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2, int i2) {
        super(context, attributeSet, i);
        this.a = new Rect();
        this.b = new Rect();
        this.c = new Rect();
        this.d = new Rect();
        Paint paint = new Paint();
        this.f = paint;
        Paint paint2 = new Paint();
        this.g = paint2;
        Paint paint3 = new Paint();
        this.h = paint3;
        Paint paint4 = new Paint();
        this.i = paint4;
        Paint paint5 = new Paint();
        this.j = paint5;
        Paint paint6 = new Paint();
        this.k = paint6;
        paint6.setAntiAlias(true);
        this.y = new CopyOnWriteArraySet();
        this.z = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.A = f;
        this.u = a(f, -50);
        int iA = a(f, 4);
        int iA2 = a(f, 26);
        int iA3 = a(f, 4);
        int iA4 = a(f, 12);
        int iA5 = a(f, 0);
        int iA6 = a(f, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.AppLovinDefaultTimeBar, i, i2);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.AppLovinDefaultTimeBar_al_scrubber_drawable);
                this.l = drawable;
                if (drawable != null) {
                    a(drawable);
                    iA2 = Math.max(drawable.getMinimumHeight(), iA2);
                }
                this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_bar_height, iA);
                this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_touch_target_height, iA2);
                this.o = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_bar_gravity, 0);
                this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_ad_marker_width, iA3);
                this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_enabled_size, iA4);
                this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_disabled_size, iA5);
                this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_dragged_size, iA6);
                int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_played_color, -1);
                int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_scrubber_color, -1);
                int i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_buffered_color, -855638017);
                int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_unplayed_color, 872415231);
                int i7 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_ad_marker_color, -1291845888);
                int i8 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_played_ad_marker_color, 872414976);
                paint.setColor(i3);
                paint6.setColor(i4);
                paint2.setColor(i5);
                paint3.setColor(i6);
                paint4.setColor(i7);
                paint5.setColor(i8);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.m = iA;
            this.n = iA2;
            this.o = 0;
            this.p = iA3;
            this.q = iA4;
            this.r = iA5;
            this.s = iA6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.l = null;
        }
        StringBuilder sb = new StringBuilder();
        this.v = sb;
        this.w = new Formatter(sb, Locale.getDefault());
        this.x = new Runnable() { // from class: com.applovin.exoplayer2.ui.b$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a();
            }
        };
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            this.t = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.t = (Math.max(this.r, Math.max(this.q, this.s)) + 1) / 2;
        }
        this.G = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.F = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.applovin.exoplayer2.ui.b$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.a(valueAnimator2);
            }
        });
        this.K = -9223372036854775807L;
        this.C = -9223372036854775807L;
        this.B = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        a(false);
    }

    private void b(long j) {
        this.J = j;
        this.I = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((i.a) it.next()).a(this, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.G = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.a);
    }

    @Override // com.applovin.exoplayer2.ui.i
    public void a(i.a aVar) {
        b1.a(aVar);
        this.y.add(aVar);
    }

    private void c() {
        Drawable drawable = this.l;
        if (drawable != null && drawable.isStateful() && this.l.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // com.applovin.exoplayer2.ui.i
    public void a(long[] jArr, boolean[] zArr, int i) {
        b1.a(i == 0 || !(jArr == null || zArr == null));
        this.N = i;
        this.O = jArr;
        this.P = zArr;
        b();
    }

    private void b() {
        this.c.set(this.b);
        this.d.set(this.b);
        long j = this.I ? this.J : this.L;
        if (this.K > 0) {
            int iWidth = (int) ((((long) this.b.width()) * this.M) / this.K);
            Rect rect = this.c;
            Rect rect2 = this.b;
            rect.right = Math.min(rect2.left + iWidth, rect2.right);
            int iWidth2 = (int) ((((long) this.b.width()) * j) / this.K);
            Rect rect3 = this.d;
            Rect rect4 = this.b;
            rect3.right = Math.min(rect4.left + iWidth2, rect4.right);
        } else {
            Rect rect5 = this.c;
            int i = this.b.left;
            rect5.right = i;
            this.d.right = i;
        }
        invalidate(this.a);
    }

    private void a(boolean z) {
        removeCallbacks(this.x);
        this.I = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            ((i.a) it.next()).a(this, this.J, z);
        }
    }

    private boolean a(long j) {
        long j2 = this.K;
        if (j2 <= 0) {
            return false;
        }
        long j3 = this.I ? this.J : this.L;
        long jB = xp.b(j3 + j, 0L, j2);
        if (jB == j3) {
            return false;
        }
        if (!this.I) {
            b(jB);
        } else {
            c(jB);
        }
        b();
        return true;
    }

    private void b(Canvas canvas) {
        int iHeight = this.b.height();
        int iCenterY = this.b.centerY() - (iHeight / 2);
        int i = iHeight + iCenterY;
        if (this.K <= 0) {
            Rect rect = this.b;
            canvas.drawRect(rect.left, iCenterY, rect.right, i, this.h);
            return;
        }
        Rect rect2 = this.c;
        int i2 = rect2.left;
        int i3 = rect2.right;
        int iMax = Math.max(Math.max(this.b.left, i3), this.d.right);
        int i4 = this.b.right;
        if (iMax < i4) {
            canvas.drawRect(iMax, iCenterY, i4, i, this.h);
        }
        int iMax2 = Math.max(i2, this.d.right);
        if (i3 > iMax2) {
            canvas.drawRect(iMax2, iCenterY, i3, i, this.g);
        }
        if (this.d.width() > 0) {
            Rect rect3 = this.d;
            canvas.drawRect(rect3.left, iCenterY, rect3.right, i, this.f);
        }
        if (this.N == 0) {
            return;
        }
        long[] jArr = (long[]) b1.a(this.O);
        boolean[] zArr = (boolean[]) b1.a(this.P);
        int i5 = this.p / 2;
        for (int i6 = 0; i6 < this.N; i6++) {
            int iWidth = ((int) ((((long) this.b.width()) * xp.b(jArr[i6], 0L, this.K)) / this.K)) - i5;
            Rect rect4 = this.b;
            int iMin = rect4.left + Math.min(rect4.width() - this.p, Math.max(0, iWidth));
            canvas.drawRect(iMin, iCenterY, iMin + this.p, i, zArr[i6] ? this.j : this.i);
        }
    }

    private void a(float f) {
        Rect rect = this.d;
        Rect rect2 = this.b;
        rect.right = xp.a((int) f, rect2.left, rect2.right);
    }

    private Point a(MotionEvent motionEvent) {
        this.z.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.z;
    }

    private boolean a(float f, float f2) {
        return this.a.contains((int) f, (int) f2);
    }

    private void a(Canvas canvas) {
        int i;
        if (this.K <= 0) {
            return;
        }
        Rect rect = this.d;
        int iA = xp.a(rect.right, rect.left, this.b.right);
        int iCenterY = this.d.centerY();
        Drawable drawable = this.l;
        if (drawable == null) {
            if (!this.I && !isFocused()) {
                i = isEnabled() ? this.q : this.r;
            } else {
                i = this.s;
            }
            canvas.drawCircle(iA, iCenterY, (int) ((i * this.G) / 2.0f), this.k);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.G)) / 2;
        int intrinsicHeight = ((int) (this.l.getIntrinsicHeight() * this.G)) / 2;
        this.l.setBounds(iA - intrinsicWidth, iCenterY - intrinsicHeight, iA + intrinsicWidth, iCenterY + intrinsicHeight);
        this.l.draw(canvas);
    }

    private void a(int i, int i2) {
        Rect rect = this.E;
        if (rect != null && rect.width() == i && this.E.height() == i2) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i, i2);
        this.E = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private boolean a(Drawable drawable) {
        return xp.a >= 23 && a(drawable, getLayoutDirection());
    }

    private static boolean a(Drawable drawable, int i) {
        return xp.a >= 23 && drawable.setLayoutDirection(i);
    }
}
