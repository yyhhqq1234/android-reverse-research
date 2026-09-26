package com.netease.mpay.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.c.j;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class a {
    private final int a;
    private final int b;
    private final int c;
    private Context d;
    private String e;
    private com.netease.mpay.c.b f;
    private Map g;
    private ExecutorService h;
    private Handler i;

    /* renamed from: com.netease.mpay.c.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0037a implements Runnable {
        Bitmap a;
        b b;

        public RunnableC0037a(Bitmap bitmap, b bVar) {
            this.a = bitmap;
            this.b = bVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.a(this.b)) {
                return;
            }
            if (this.a != null) {
                this.b.b.setImageBitmap(this.a);
            } else {
                this.b.b.setImageResource(a.this.a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        public String a;
        public ImageView b;

        public b(String str, ImageView imageView) {
            this.a = str;
            this.b = imageView;
            this.b.setTag(this.a);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public boolean a() {
            try {
                return !this.a.equals((String) this.b.getTag());
            } catch (Exception e) {
                Cdo.a((Throwable) e);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        b a;

        c(b bVar) {
            this.a = bVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.a(this.a)) {
                    return;
                }
                Bitmap a = a.this.a(this.a.a);
                if (a.this.a(this.a)) {
                    return;
                }
                a.this.i.post(new RunnableC0037a(a, this.a));
            } catch (Throwable th) {
                Cdo.a(th);
            }
        }
    }

    public a(Context context, String str, int i) {
        this(context, str, i, 70, 70);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public a(Context context, String str, int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = context;
        this.e = str;
        this.f = new com.netease.mpay.c.b();
        this.g = Collections.synchronizedMap(new WeakHashMap());
        this.h = Executors.newFixedThreadPool(5);
        this.i = new Handler();
    }

    private void b(String str, ImageView imageView) {
        this.h.submit(new c(new b(str, imageView)));
    }

    public Bitmap a(String str) {
        if (!URLUtil.isValidUrl(str)) {
            return BitmapFactory.decodeResource(this.d.getResources(), this.a);
        }
        Bitmap a = this.f.a(str);
        if (a != null) {
            return a;
        }
        Bitmap b2 = j.a.b(this.d, this.e, str, this.b, this.c);
        if (b2 == null) {
            return BitmapFactory.decodeResource(this.d.getResources(), this.a);
        }
        this.f.a(str, b2);
        return b2;
    }

    public void a(String str, ImageView imageView) {
        if (!URLUtil.isValidUrl(str)) {
            imageView.setImageResource(this.a);
            return;
        }
        this.g.put(imageView, str);
        Bitmap a = this.f.a(str);
        if (a != null) {
            imageView.setImageBitmap(a);
        } else {
            b(str, imageView);
            imageView.setImageResource(this.a);
        }
    }

    boolean a(b bVar) {
        return bVar == null || bVar.a();
    }
}
