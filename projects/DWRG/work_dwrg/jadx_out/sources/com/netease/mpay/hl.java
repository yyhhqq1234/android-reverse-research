package com.netease.mpay;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class hl extends com.netease.mpay.a {
    private com.netease.mpay.b.k d;
    private d e;
    private int f;
    private int g;
    private boolean h;
    private a i;
    private com.netease.mpay.widget.am j;
    private com.netease.mpay.widget.s k;
    private Animation l;
    private Animation m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends AsyncTask {
        private TextView b;
        private hx c;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.netease.mpay.hl$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0046a implements Runnable {
            private int b;
            private float c;
            private float d;
            private int e;
            private c f;

            public RunnableC0046a(int i, float f, float f2, int i2, c cVar) {
                this.b = i;
                this.c = f;
                this.d = f2;
                this.e = i2;
                this.f = cVar;
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                if (a.this.isCancelled()) {
                    return;
                }
                if (this.b > 20) {
                    this.f.a();
                } else {
                    a.this.publishProgress(Float.valueOf((this.c - this.d) + ((this.b * this.d) / 20.0f)));
                    new Handler().postDelayed(new RunnableC0046a(this.b + 1, this.c, this.d, this.e, this.f), this.f.b() ? 100L : this.e);
                }
            }
        }

        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(hl hlVar, hm hmVar) {
            this();
        }

        private void a() {
            hl.this.j = new com.netease.mpay.widget.am();
            hl.this.j.a(new hs(this));
            new Handler().post(new RunnableC0046a(1, 0.8f, 0.19999999f, 750, new ht(this)));
        }

        private void a(float f, float f2, int i, b bVar) {
            if (bVar == null) {
                return;
            }
            int i2 = (i * 1000) / 20;
            new Thread(new ho(this, bVar)).start();
            for (int i3 = 1; i3 <= 20 && !isCancelled(); i3++) {
                publishProgress(Float.valueOf((f - f2) + ((i3 * f2) / 20.0f)));
                try {
                    Thread.sleep(bVar.a() ? 100L : i2);
                } catch (InterruptedException e) {
                    Cdo.a((Throwable) e);
                }
            }
        }

        private void a(int i, int i2) {
            View findViewById = hl.this.a.findViewById(i);
            findViewById.setVisibility(8);
            findViewById.startAnimation(hl.this.m);
            View findViewById2 = hl.this.a.findViewById(i2);
            findViewById2.setVisibility(0);
            findViewById2.startAnimation(hl.this.l);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            new Thread(new hu(this)).start();
            new Handler().post(new RunnableC0046a(1, 1.0f, 0.19999999f, 500, new hv(this)));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(Void... voidArr) {
            if (!isCancelled()) {
                a(0.2f, 0.2f, 10, new hp(this));
                if (!isCancelled()) {
                    a(0.4f, 0.2f, 10, new hq(this));
                    if (!isCancelled()) {
                        a(0.6f, 0.20000002f, 10, new hr(this));
                    }
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            a();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onProgressUpdate(Float... fArr) {
            super.onProgressUpdate(fArr);
            if (fArr == null || fArr.length <= 0) {
                return;
            }
            float floatValue = fArr[0].floatValue();
            this.b.setText(((int) (100.0f * floatValue)) + "%");
            hl.this.e.a(floatValue);
            if (0.2f == floatValue) {
                a(RIdentifier.f.bA, RIdentifier.f.bx);
                return;
            }
            if (0.4f == floatValue) {
                a(RIdentifier.f.bx, RIdentifier.f.bz);
                return;
            }
            if (0.6f == floatValue) {
                a(RIdentifier.f.bz, RIdentifier.f.bC);
                return;
            }
            if (0.8f == floatValue) {
                a(RIdentifier.f.bC, RIdentifier.f.bB);
                return;
            }
            if (1.0f == floatValue) {
                a(RIdentifier.f.bB, RIdentifier.f.by);
                ((TextView) hl.this.a.findViewById(RIdentifier.f.cu)).setText(RIdentifier.h.aT);
                TextView textView = (TextView) hl.this.a.findViewById(RIdentifier.f.bD);
                textView.setTextColor(hl.this.a.getResources().getColor(RIdentifier.c.j));
                textView.setOnClickListener(new hw(this));
                ProgressBar progressBar = (ProgressBar) hl.this.a.findViewById(RIdentifier.f.bG);
                int dimensionPixelSize = hl.this.a.getResources().getDimensionPixelSize(RIdentifier.d.k);
                Drawable drawable = hl.this.a.getResources().getDrawable(RIdentifier.e.F);
                drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                progressBar.setIndeterminateDrawable(drawable);
                com.netease.mpay.e.b.af a = new com.netease.mpay.e.b(hl.this.a, hl.this.d.a()).e().a();
                if (this.c == null || !a.v) {
                    return;
                }
                com.netease.mpay.widget.ay.a(hl.this.a, bk.k).a(hl.this.a, hl.this.d.a(), com.netease.mpay.widget.az.c(hl.this.a), this.c.a(), "2.14.1");
                com.netease.mpay.widget.ay.a(hl.this.a, bk.k).b(hl.this.a);
            }
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.b = (TextView) hl.this.a.findViewById(RIdentifier.f.bF);
            this.b.setText("1%");
            hl.this.e.a(1.0f);
            this.c = new hx(hl.this.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {
        boolean a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        void a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends View {
        private int b;
        private int c;
        private int d;
        private int e;
        private Paint f;
        private RectF g;
        private float h;

        public d(Context context) {
            super(context);
            this.h = 0.0f;
            this.e = context.getResources().getDimensionPixelSize(RIdentifier.d.l);
            this.d = context.getResources().getDimensionPixelSize(RIdentifier.d.j) - this.e;
            this.f = new Paint();
            this.f.setAntiAlias(true);
            this.f.setStyle(Paint.Style.STROKE);
            this.f.setStrokeWidth(this.e);
            this.f.setStrokeCap(Paint.Cap.ROUND);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public void a(float f) {
            this.h = f;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.b == 0 || this.c == 0) {
                this.b = getWidth() >> 1;
                this.c = getHeight() >> 1;
                this.g = new RectF(this.b - (this.d / 2), this.c - (this.d / 2), this.b + (this.d / 2), this.c + (this.d / 2));
            }
            this.f.setColor(-2236963);
            canvas.drawArc(this.g, 95.0f, 265.0f, false, this.f);
            this.f.setColor(hl.this.h ? hl.this.f : hl.this.g);
            canvas.drawArc(this.g, 95.0f, 265.0f * Math.max(0.0f, Math.min(this.h, 1.0f)), false, this.f);
            invalidate();
        }
    }

    public hl(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.h = true;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(hx hxVar) {
        this.k.a(new String[]{this.a.getString(RIdentifier.h.cO), this.a.getString(RIdentifier.h.n)}, new hn(this, hxVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        this.i.cancel(true);
        if (this.j != null) {
            this.j.a();
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.k(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f = this.a.getResources().getColor(RIdentifier.c.e);
        this.g = this.a.getResources().getColor(RIdentifier.c.g);
        this.a.setContentView(RIdentifier.g.Y);
        FrameLayout frameLayout = (FrameLayout) this.a.findViewById(RIdentifier.f.bE);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        this.e = new d(this.a);
        frameLayout.addView(this.e, layoutParams);
        this.i = new a(this, null);
        this.a.findViewById(RIdentifier.f.at).setOnClickListener(new hm(this));
        this.k = new com.netease.mpay.widget.s(this.a);
        this.l = AnimationUtils.loadAnimation(this.a, RIdentifier.a.d);
        this.m = AnimationUtils.loadAnimation(this.a, RIdentifier.a.e);
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (this.i.getStatus() == AsyncTask.Status.PENDING) {
            this.i.execute(new Void[0]);
        }
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        s();
        if (this.d.e != null) {
            this.d.e.onDialogFinish();
        }
        return super.l();
    }
}
