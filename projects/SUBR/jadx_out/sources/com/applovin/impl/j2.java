package com.applovin.impl;

import android.app.Activity;
import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.View;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class j2 {
    private final com.applovin.impl.sdk.j a;
    private final com.applovin.impl.sdk.n b;
    private final long c;
    private final long d;
    private final int e;
    private final int f;
    private final int g;
    private Handler k;
    private HandlerThread l;
    private c n;
    private WeakReference h = new WeakReference(null);
    private int i = 0;
    private Integer j = null;
    private final Runnable m = new Runnable() { // from class: com.applovin.impl.j2$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.a();
        }
    };

    public interface c {
        void a(View view);
    }

    private interface d {
        void a(Bitmap bitmap);

        void a(boolean z);
    }

    static /* synthetic */ int e(j2 j2Var) {
        int i = j2Var.i;
        j2Var.i = i + 1;
        return i;
    }

    public j2(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        this.c = ((Long) jVar.a(sj.T5)).longValue();
        this.d = ((Long) jVar.a(sj.S5)).longValue();
        this.e = ((Integer) jVar.a(sj.U5)).intValue();
        this.f = ((Integer) jVar.a(sj.V5)).intValue();
        this.g = ((Integer) jVar.a(sj.W5)).intValue();
    }

    public void b() {
        g();
        HandlerThread handlerThread = this.l;
        if (handlerThread != null) {
            handlerThread.quit();
            this.l = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.h.get() != null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.b.a("BlackViewDetector", "Stopped monitoring view: " + this.h.get());
            }
            this.h.clear();
        }
        Handler handler = this.k;
        if (handler != null) {
            handler.removeCallbacks(this.m);
            this.k = null;
        }
        if (this.n != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.j2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.n = null;
    }

    class a implements d {
        a() {
        }

        @Override // com.applovin.impl.j2.d
        public void a(Bitmap bitmap) {
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int i = width / j2.this.e;
                int i2 = height / j2.this.e;
                int i3 = i / 2;
                for (int i4 = i2 / 2; i4 < height; i4 += i2) {
                    for (int i5 = i3; i5 < width; i5 += i) {
                        int pixel = bitmap.getPixel(i5, i4);
                        if (!j2.this.a(pixel)) {
                            if (j2.this.j == null) {
                                j2.this.j = Integer.valueOf(pixel);
                            }
                        } else {
                            bitmap.recycle();
                            j2.this.f();
                            j2.this.d();
                            return;
                        }
                    }
                }
                j2.e(j2.this);
                bitmap.recycle();
                j2.this.d();
            } catch (Exception e) {
                j2.this.a.D().a("BlackViewDetector", "onScreenshotCaptured", e);
                j2.this.g();
            }
        }

        @Override // com.applovin.impl.j2.d
        public void a(boolean z) {
            if (z) {
                j2.this.g();
            } else {
                j2.this.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ActivityManager.MemoryInfo memoryInfoA;
        View view = (View) this.h.get();
        if (view == null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.b.k("BlackViewDetector", "Monitored view no longer exists.");
            }
            g();
            return;
        }
        Long l = (Long) this.a.a(sj.a6);
        if (l.longValue() > 0 && (memoryInfoA = yp.a((ActivityManager) com.applovin.impl.sdk.j.m().getSystemService("activity"))) != null && memoryInfoA.availMem < l.longValue()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.b.k("BlackViewDetector", "Cancelling black view detection due to low memory");
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.b.a("BlackViewDetector", "Checking for black view: " + view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (measuredWidth != 0 && measuredHeight != 0) {
            a(view, new a());
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.b.k("BlackViewDetector", "Monitored view is not visible due to dimensions (width = " + measuredWidth + ", height = " + measuredHeight + ")");
        }
        f();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        long j = this.c;
        if (j > 0) {
            if (this.i > 1) {
                e();
                g();
                return;
            }
            Handler handler = this.k;
            if (handler != null) {
                handler.postDelayed(this.m, j);
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.b.k("BlackViewDetector", "Monitoring handler was unexpectedly null");
            }
            g();
            return;
        }
        if (this.i == 1) {
            e();
        }
        g();
    }

    private void e() {
        final View view = (View) this.h.get();
        if (com.applovin.impl.sdk.n.a()) {
            this.b.k("BlackViewDetector", "Detected black view: " + view);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.j2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.i = 0;
        this.j = null;
    }

    class b implements PixelCopy.OnPixelCopyFinishedListener {
        final /* synthetic */ d a;
        final /* synthetic */ Bitmap b;

        b(d dVar, Bitmap bitmap) {
            this.a = dVar;
            this.b = bitmap;
        }

        @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
        public void onPixelCopyFinished(int i) {
            if (i != 0) {
                com.applovin.impl.sdk.n unused = j2.this.b;
                if (com.applovin.impl.sdk.n.a()) {
                    j2.this.b.b("BlackViewDetector", "Failed to capture screenshot with error code: " + i);
                }
                this.a.a(true);
                return;
            }
            this.a.a(this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:11:0x004e  */
    public boolean a(int i) {
        boolean z;
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        Integer num = this.j;
        if (num != null) {
            int iRed2 = Color.red(num.intValue());
            int iGreen2 = Color.green(this.j.intValue());
            int iBlue2 = Color.blue(this.j.intValue());
            if (Math.abs(iRed - iRed2) > this.g || Math.abs(iGreen - iGreen2) > this.g || Math.abs(iBlue - iBlue2) > this.g) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        int i2 = this.f;
        return iRed > i2 || iGreen > i2 || iBlue > i2 || z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c cVar = this.n;
        if (cVar != null) {
            cVar.a(view);
        }
    }

    public void a(View view, c cVar) {
        if (((Boolean) this.a.a(sj.R5)).booleanValue()) {
            View view2 = (View) this.h.get();
            if (view2 != null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.k("BlackViewDetector", "Monitoring is already in progress for a view: " + view2);
                    return;
                }
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.b.a("BlackViewDetector", "Started monitoring view: " + view);
            }
            try {
                if (this.l == null) {
                    HandlerThread handlerThread = new HandlerThread("AppLovinSdk:black_view_detector");
                    this.l = handlerThread;
                    handlerThread.start();
                } else {
                    this.a.D().a(ka.P, "BlackViewDetector:maybeStartMonitoring() unexpectedly called multiple times");
                    g();
                }
                this.n = cVar;
                this.h = new WeakReference(view);
                f();
                Handler handler = new Handler(this.l.getLooper());
                this.k = handler;
                handler.postDelayed(this.m, this.d);
            } catch (Throwable th) {
                g();
                this.a.D().a("BlackViewDetector", "maybeStartMonitoring", th);
            }
        }
    }

    private void a(View view, d dVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            Activity activityA = this.a.e().a();
            if (activityA == null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.b("BlackViewDetector", "Failed to capture screenshot due to no active activity");
                }
                dVar.a(false);
                return;
            }
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            Rect rect = new Rect(i, i2, i + measuredWidth, i2 + measuredHeight);
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
                PixelCopy.request(activityA.getWindow(), rect, bitmapCreateBitmap, new b(dVar, bitmapCreateBitmap), new Handler());
                return;
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.b("BlackViewDetector", "Failed to capture screenshot due to exception: " + th);
                }
                dVar.a(true);
                return;
            }
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.b.k("BlackViewDetector", "Unable to capture screenshots on views below API 26");
        }
        dVar.a(true);
    }
}
