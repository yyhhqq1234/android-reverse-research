package com.netease.mpay.widget.pull2refresh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.LinearLayout;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class a extends LinearLayout {
    public long ANIMATION_DUR_MAX;
    public long ANIMATION_DUR_MIN;
    public int OVER_PULL_BACK_THRESHOLD;
    public int OVER_PULL_THRESHOLD;
    protected View a;
    protected View b;
    private Context c;
    private int d;
    private Boolean e;
    private Boolean f;
    private double g;
    private double h;
    private Double i;
    private Double j;
    private int k;
    private boolean l;
    private boolean m;
    public double mOffsetScaler;
    private boolean n;
    private b o;
    private i p;
    private e q;
    private f r;
    private h s;
    private c t;
    private d u;
    private g v;
    private int w;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.mpay.widget.pull2refresh.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0061a extends Animation {
        private int a = 0;
        private int b;
        private View c;

        public C0061a(View view, int i) {
            this.b = 0;
            this.c = null;
            this.b = i;
            this.c = view;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.view.animation.Animation
        protected void applyTransformation(float f, Transformation transformation) {
            int i = (int) (this.a + ((this.b - this.a) * f));
            ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
            if (layoutParams.height != i) {
                layoutParams.height = i;
                this.c.requestLayout();
            }
        }

        @Override // android.view.animation.Animation
        public void initialize(int i, int i2, int i3, int i4) {
            super.initialize(i, i2, i3, i4);
            this.a = i2;
        }

        @Override // android.view.animation.Animation
        public boolean willChangeBounds() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        int a(View view);

        boolean b(View view);

        void c(View view);

        boolean d(View view);
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(View view);
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(View view);
    }

    /* loaded from: classes.dex */
    public interface e {
        void a(View view);
    }

    /* loaded from: classes.dex */
    public interface f {
        void a(View view);
    }

    /* loaded from: classes.dex */
    public interface g {
        void a();
    }

    /* loaded from: classes.dex */
    public interface h {
        void a(View view);
    }

    /* loaded from: classes.dex */
    public interface i {
        void a(View view);
    }

    public a(Context context) {
        super(context);
        this.c = null;
        this.OVER_PULL_THRESHOLD = 8;
        this.OVER_PULL_BACK_THRESHOLD = 2;
        this.ANIMATION_DUR_MIN = 200L;
        this.ANIMATION_DUR_MAX = 300L;
        this.mOffsetScaler = 0.45d;
        this.k = 0;
        this.l = false;
        this.m = true;
        this.n = false;
        this.w = 0;
        this.c = context;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = null;
        this.OVER_PULL_THRESHOLD = 8;
        this.OVER_PULL_BACK_THRESHOLD = 2;
        this.ANIMATION_DUR_MIN = 200L;
        this.ANIMATION_DUR_MAX = 300L;
        this.mOffsetScaler = 0.45d;
        this.k = 0;
        this.l = false;
        this.m = true;
        this.n = false;
        this.w = 0;
        this.c = context;
    }

    private void a(MotionEvent motionEvent) {
        double a = a(this.i.doubleValue(), motionEvent.getY());
        if (a < 1.0d) {
            setHeaderHeight(0);
            return;
        }
        a("scaled_height: " + a);
        this.o.c(this.b);
        setHeaderHeight((int) a);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.l) {
            Log.e("Flow", str);
        }
    }

    private boolean a(Double d2, Double d3) {
        if (d3 == null || d2 == null) {
            return false;
        }
        a("checkIfLoad: YOffset = " + (d2.doubleValue() - d3.doubleValue()));
        return (d2.doubleValue() - d3.doubleValue()) * 0.01d >= 1.0d;
    }

    private void b(MotionEvent motionEvent) {
        double y = motionEvent.getY() - this.i.doubleValue();
        if (y < 1.0d) {
            setHeaderHeight(0);
            return;
        }
        this.o.c(this.b);
        if (((int) y) <= this.k) {
            setHeaderHeight((int) y);
        } else {
            setHeaderHeight(this.k);
        }
    }

    private boolean b() {
        return this.o.b(this.b);
    }

    private void c(MotionEvent motionEvent) {
        this.b.onTouchEvent(motionEvent);
    }

    private boolean c() {
        return this.o.d(this.b);
    }

    private boolean d(MotionEvent motionEvent) {
        a("onTouchEvent " + (motionEvent.getAction() & 255) + " X: " + motionEvent.getX() + " Y: " + motionEvent.getY());
        int action = motionEvent.getAction() & 255;
        double x = motionEvent.getX();
        double y = motionEvent.getY();
        boolean b2 = b();
        boolean c2 = c();
        switch (action) {
            case 0:
                this.e = false;
                c(motionEvent);
                if (b2) {
                    this.i = Double.valueOf(y);
                } else if (c2) {
                    this.j = Double.valueOf(y);
                } else {
                    this.i = null;
                    this.j = null;
                }
                this.d = 1;
                break;
            case 1:
                if (!this.e.booleanValue()) {
                    if (!c2 || this.n || !a(this.j, Double.valueOf(y))) {
                        c(motionEvent);
                        setHeaderHeight(0);
                        break;
                    } else {
                        this.n = true;
                        load();
                        break;
                    }
                } else if (this.d != 0) {
                    onCancelPulling(this.a);
                    a(this.a, 0);
                    break;
                } else {
                    refresh();
                    break;
                }
                break;
            case 2:
                if (!this.e.booleanValue()) {
                    if (!b2) {
                        if (c2 && this.j == null) {
                            this.j = Double.valueOf(y);
                        }
                        c(motionEvent);
                        break;
                    } else {
                        if (this.i == null) {
                            this.i = Double.valueOf(y);
                        }
                        if (y - 2.0d <= this.i.doubleValue() || Math.abs(motionEvent.getX() - this.h) >= y - this.i.doubleValue()) {
                            c(motionEvent);
                            break;
                        } else {
                            this.e = true;
                            MotionEvent obtain = MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
                            c(obtain);
                            obtain.recycle();
                            onStartPulling(this.a);
                        }
                    }
                }
                if (!b2) {
                    setHeaderHeight(0);
                    break;
                } else if (this.i.doubleValue() <= y) {
                    a(motionEvent);
                    break;
                } else {
                    setHeaderHeight(0);
                    break;
                }
                break;
            case 3:
                a("action = " + action);
                if (!this.e.booleanValue()) {
                    c(motionEvent);
                    setHeaderHeight(0);
                    break;
                } else {
                    this.e = false;
                    setHeaderHeight(0);
                }
            default:
                a("action = " + action);
                if (!this.e.booleanValue()) {
                    c(motionEvent);
                    setHeaderHeight(0);
                    break;
                }
                break;
        }
        this.h = x;
        return true;
    }

    private boolean e(MotionEvent motionEvent) {
        a("onTouchEvent (R) " + (motionEvent.getAction() & 255) + " X: " + motionEvent.getX() + " Y: " + motionEvent.getY());
        int action = motionEvent.getAction() & 255;
        double x = motionEvent.getX();
        double y = motionEvent.getY();
        boolean b2 = b();
        switch (action) {
            case 0:
                c(motionEvent);
                this.f = false;
                if (!b2) {
                    this.i = null;
                    break;
                } else {
                    this.i = Double.valueOf(y - getHeaderHeight());
                    break;
                }
            case 1:
            default:
                a("action = " + action);
                if (!this.f.booleanValue()) {
                    c(motionEvent);
                    break;
                }
                break;
            case 2:
                if (!b2) {
                    c(motionEvent);
                    break;
                } else if (this.d == 2) {
                    if (this.i == null) {
                        this.i = Double.valueOf(y - getHeaderHeight());
                    }
                    if (!this.f.booleanValue()) {
                        a("X:" + x + " Y:" + y + " mOffsetOnTop:" + this.i + " mLastOffsetX:" + this.h);
                        if (y - 2.0d <= this.i.doubleValue() || Math.abs(motionEvent.getX() - this.h) > y - this.i.doubleValue()) {
                            c(motionEvent);
                            break;
                        } else {
                            MotionEvent obtain = MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
                            c(obtain);
                            obtain.recycle();
                            this.f = true;
                        }
                    }
                    if (this.i.doubleValue() > y) {
                        setHeaderHeight(0);
                    } else {
                        b(motionEvent);
                    }
                    if (!b2) {
                        setHeaderHeight(0);
                        break;
                    }
                } else if (!this.f.booleanValue()) {
                    MotionEvent obtain2 = MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
                    c(obtain2);
                    obtain2.recycle();
                    break;
                }
                break;
        }
        this.h = x;
        return true;
    }

    private int getHeaderHeight() {
        if (this.a.getVisibility() != 0) {
            return 0;
        }
        return this.a.getHeight();
    }

    private void setHeaderHeight(int i2) {
        if (i2 == 0) {
            this.a.setVisibility(8);
        } else {
            this.a.setVisibility(0);
            this.a.setLayoutParams(new LinearLayout.LayoutParams(-1, i2));
        }
    }

    protected double a(double d2, double d3) {
        return (d3 - d2) * this.mOffsetScaler;
    }

    protected void a() {
        if (this.d != 1) {
            if (this.d != 0 || getHeaderTopOffset(this.a) >= ((int) (this.OVER_PULL_THRESHOLD * this.g))) {
                return;
            }
            this.d = 1;
            onHeaderInComplete(this.a);
            return;
        }
        int headerTopOffset = getHeaderTopOffset(this.a);
        if (headerTopOffset > ((int) (this.OVER_PULL_THRESHOLD * this.g))) {
            this.d = 0;
            this.k = getHeaderHeight() - headerTopOffset;
            onHeaderComplete(this.a);
        }
    }

    protected void a(View view, int i2) {
        a(view, i2, false);
    }

    protected void a(View view, int i2, boolean z) {
        C0061a c0061a = new C0061a(view, i2);
        long abs = (int) ((this.ANIMATION_DUR_MAX * Math.abs(i2 - view.getHeight())) / (126.0d * this.g));
        if (abs > this.ANIMATION_DUR_MAX) {
            abs = this.ANIMATION_DUR_MAX;
        }
        if (abs < this.ANIMATION_DUR_MIN) {
            abs = this.ANIMATION_DUR_MIN;
        }
        c0061a.setDuration(abs);
        c0061a.setInterpolator(new com.netease.mpay.widget.pull2refresh.c(this));
        if (i2 == 0 && z) {
            c0061a.setAnimationListener(new com.netease.mpay.widget.pull2refresh.d(this));
        }
        view.startAnimation(c0061a);
    }

    public void completeLoad() {
        this.n = false;
    }

    public void completeRefresh() {
        this.d = 1;
        if (this.k == 0) {
            this.k = getHeaderHeight();
        }
        a(this.a, 0, true);
    }

    public void disablePull2Refresh() {
        this.m = false;
    }

    public void enablePull2Refresh() {
        this.m = true;
    }

    public int getHeaderTopOffset(View view) {
        return this.o.a(view);
    }

    public void init(View view, View view2, b bVar) {
        this.a = view;
        this.b = view2;
        this.o = bVar;
        setHeaderHeight(0);
        this.d = 1;
        this.e = false;
        this.n = false;
        ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.g = TypedValue.applyDimension(1, 100.0f, r1) / 100.0f;
        this.b.setOnTouchListener(new com.netease.mpay.widget.pull2refresh.b(this));
    }

    public void load() {
        onLoad();
    }

    public void onCancelPulling(View view) {
        if (this.t == null) {
            return;
        }
        this.t.a(view);
    }

    public void onHeaderCollapsed(View view) {
        if (this.u == null) {
            return;
        }
        this.u.a(view);
    }

    public void onHeaderComplete(View view) {
        if (this.q == null) {
            return;
        }
        this.q.a(view);
    }

    public void onHeaderInComplete(View view) {
        if (this.r == null) {
            return;
        }
        this.r.a(view);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        a("onInterceptTouchEvent " + (motionEvent.getAction() & 255) + " X: " + motionEvent.getX() + " Y: " + motionEvent.getY());
        return this.m;
    }

    public void onLoad() {
        this.v.a();
    }

    public void onRefresh(View view) {
        if (this.s == null) {
            return;
        }
        this.s.a(view);
    }

    public void onStartPulling(View view) {
        if (this.p == null) {
            return;
        }
        this.p.a(view);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 0) {
            if (this.d != 2) {
                this.w = 0;
            } else {
                this.w = 1;
            }
        }
        return this.w == 0 ? d(motionEvent) : e(motionEvent);
    }

    public void refresh() {
        this.d = 2;
        if (this.k == 0) {
            setHeaderHeight(-2);
        } else {
            a(this.a, this.k);
        }
        onRefresh(this.a);
    }

    public void setConfiguration(b bVar) {
        this.o = bVar;
    }

    public void setDebugMode(boolean z) {
        this.l = z;
    }

    public void setOnCancelPullingListener(c cVar) {
        this.t = cVar;
    }

    public void setOnHeaderCollapsedListener(d dVar) {
        this.u = dVar;
    }

    public void setOnHeaderCompleteListener(e eVar) {
        this.q = eVar;
    }

    public void setOnHeaderIncompleteListener(f fVar) {
        this.r = fVar;
    }

    public void setOnLoadListener(g gVar) {
        this.v = gVar;
    }

    public void setOnRefreshListener(h hVar) {
        this.s = hVar;
    }

    public void setOnStartPullingListener(i iVar) {
        this.p = iVar;
    }
}
