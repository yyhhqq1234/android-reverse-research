package com.netease.codescanner.camera;

import android.content.Context;
import android.hardware.Camera;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.netease.codescanner.common.Logging;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a implements Camera.AutoFocusCallback {
    private static final Collection<String> a = new ArrayList(2);
    private boolean b;
    private final boolean c;
    private final Camera d;
    private AsyncTaskC0005a e;
    private final com.netease.codescanner.common.a.a f = new com.netease.codescanner.common.a.b().a();
    private final long g;

    /* renamed from: com.netease.codescanner.camera.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private final class AsyncTaskC0005a extends AsyncTask<Void, Void, Void> {
        private AsyncTaskC0005a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            try {
                Thread.sleep(a.this.g);
            } catch (InterruptedException e) {
            }
            synchronized (a.this) {
                if (a.this.b) {
                    a.this.a();
                }
            }
            return null;
        }
    }

    static {
        a.add("auto");
        a.add("macro");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, Camera camera, long j) {
        this.d = camera;
        String focusMode = camera.getParameters().getFocusMode();
        this.c = a.contains(focusMode);
        this.g = j;
        Logging.d("Current focus mode: " + focusMode + "; Auto Focus: " + this.c);
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a() {
        if (this.c) {
            this.b = true;
            try {
                if (this.d != null && this.d.getParameters() != null && !TextUtils.isEmpty(this.d.getParameters().getFlashMode()) && "auto".equals(this.d.getParameters().getFocusMode())) {
                    this.d.cancelAutoFocus();
                }
                Logging.d("Trying to focus ...");
                this.d.autoFocus(this);
            } catch (RuntimeException e) {
                Logging.e("Focus failed: " + e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        if (this.c) {
            try {
                Logging.d("Stopping ...");
                this.d.cancelAutoFocus();
            } catch (RuntimeException e) {
                Logging.e("calcelAutoFocus failed: " + e.toString());
            }
        }
        if (this.e != null) {
            this.e.cancel(true);
            this.e = null;
        }
        this.b = false;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public synchronized void onAutoFocus(boolean z, Camera camera) {
        if (this.b) {
            this.e = new AsyncTaskC0005a();
            this.f.a(this.e, new Void[0]);
        }
    }
}
