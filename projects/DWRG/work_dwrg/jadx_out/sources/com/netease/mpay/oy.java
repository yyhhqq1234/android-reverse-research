package com.netease.mpay;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.j;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class oy extends AsyncTask {
    private Context a;
    private String b;
    private com.netease.mpay.e.b.af c;
    private String d;
    private int e;
    private String f;
    private String g;
    private String h;
    private String i;

    public oy(Context context, String str, String str2, int i, String str3) {
        this.a = context.getApplicationContext();
        this.b = str;
        this.d = str2;
        this.e = i;
        this.f = str3;
        this.c = new com.netease.mpay.e.b(this.a, str).e().a();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean b() {
        return this.f != null && this.f.equals("login");
    }

    private boolean c() {
        return this.f != null && this.f.equals("webLogin");
    }

    private boolean d() {
        return bk.e != 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Bitmap doInBackground(Void... voidArr) {
        if (!cq.c(this.h)) {
            return null;
        }
        int dimensionPixelSize = this.a.getResources().getDimensionPixelSize(RIdentifier.d.h);
        return com.netease.mpay.widget.bd.a(j.a.b(this.a, this.b, this.h, dimensionPixelSize, dimensionPixelSize));
    }

    public void a() {
        if (b() && d()) {
            execute(new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Bitmap bitmap) {
        String a = cq.c(this.g) ? this.g : cq.a(this.d, this.e);
        Drawable bitmapDrawable = bitmap != null ? new BitmapDrawable(this.a.getResources(), bitmap) : com.netease.mpay.server.response.u.a(this.a, this.b).b(this.e).a(this.a, this.b);
        if (b() || this.i == null) {
            this.i = a + cq.a(this.a, this.b, RIdentifier.h.aG);
        } else if (c() && this.i != null) {
            this.i = a + this.i;
        }
        Activity b = hi.a().b();
        if (b != null && !b.isFinishing() && bk.e != 1) {
            new com.netease.mpay.widget.bi(b, bitmapDrawable, this.i).a();
            return;
        }
        com.netease.mpay.widget.m mVar = new com.netease.mpay.widget.m(this.a);
        mVar.a(new oz(this.a, bitmapDrawable, this.i));
        mVar.a();
    }

    public void a(String str, String str2) {
        if (b() && d()) {
            if (!this.c.s) {
                a();
                return;
            }
            this.g = str;
            this.h = str2;
            execute(new Void[0]);
        }
    }

    public void a(String str, String str2, String str3) {
        if (d()) {
            this.i = str3;
            if (!this.c.s) {
                a();
                return;
            }
            this.g = str;
            this.h = str2;
            execute(new Void[0]);
        }
    }
}
