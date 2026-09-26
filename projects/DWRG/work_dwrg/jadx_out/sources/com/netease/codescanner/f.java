package com.netease.codescanner;

import android.content.Context;
import android.hardware.Camera;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public class f {
    private static f a;
    private Camera b;
    private boolean c;
    private int e;
    private GestureDetector g;
    private float d = 1.0f;
    private int f = 0;

    /* loaded from: classes.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            f.this.c();
            return super.onDoubleTap(motionEvent);
        }
    }

    private f(Context context, Camera camera) {
        this.c = true;
        try {
            this.b = camera;
            this.c = this.b.getParameters().isZoomSupported();
            this.e = (int) (r0.getMaxZoom() * 0.75d);
            this.g = new GestureDetector(context, new a());
        } catch (RuntimeException e) {
            this.c = false;
            this.b = null;
            this.e = 0;
        }
    }

    public static void a() {
        if (a == null) {
            return;
        }
        a.d();
    }

    public static void a(Context context, Camera camera) {
        if (a == null) {
            a = new f(context, camera);
        }
        a.d();
    }

    private void a(boolean z, int i) {
        if (!this.c || this.b == null) {
            return;
        }
        try {
            Camera.Parameters parameters = this.b.getParameters();
            int zoom = parameters.getZoom() + (i / 8);
            if (z) {
                if (zoom > this.e) {
                    zoom = this.e;
                }
            } else if (zoom <= this.f) {
                zoom = this.f;
            }
            parameters.setZoom(zoom);
            this.b.setParameters(parameters);
        } catch (RuntimeException e) {
            this.c = false;
        }
    }

    public static boolean a(MotionEvent motionEvent) {
        if (a == null || !a.c) {
            return false;
        }
        if (motionEvent.getPointerCount() == 1) {
            a.g.onTouchEvent(motionEvent);
            return true;
        }
        a.b(motionEvent);
        return true;
    }

    public static void b() {
        if (a != null) {
            a.b = null;
        }
        a = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r3 = 1
            int r0 = r5.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            switch(r0) {
                case 2: goto L12;
                case 3: goto La;
                case 4: goto La;
                case 5: goto Lb;
                default: goto La;
            }
        La:
            return r3
        Lb:
            float r0 = r4.c(r5)
            r4.d = r0
            goto La
        L12:
            float r0 = r4.c(r5)
            float r1 = r4.d
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 <= 0) goto L27
            float r1 = r4.d
            float r1 = r0 - r1
            int r1 = (int) r1
            r4.a(r3, r1)
        L24:
            r4.d = r0
            goto La
        L27:
            float r1 = r4.d
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 >= 0) goto L24
            r1 = 0
            float r2 = r4.d
            float r2 = r0 - r2
            int r2 = (int) r2
            r4.a(r1, r2)
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.codescanner.f.b(android.view.MotionEvent):boolean");
    }

    private float c(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (!this.c || this.b == null) {
            return;
        }
        try {
            Camera.Parameters parameters = this.b.getParameters();
            parameters.setZoom(parameters.getZoom() < this.e ? this.e : this.f);
            this.b.setParameters(parameters);
        } catch (RuntimeException e) {
            this.c = false;
        }
    }

    private void d() {
        if (!this.c || this.b == null) {
            return;
        }
        try {
            Camera.Parameters parameters = this.b.getParameters();
            if (parameters.getZoom() != this.f) {
                parameters.setZoom(this.f);
                this.b.setParameters(parameters);
            }
        } catch (RuntimeException e) {
            this.c = false;
        }
    }
}
