package com.netease.mpay.f;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.j;

/* loaded from: classes.dex */
public class o extends AsyncTask {
    private Activity a;
    private String b;
    private a c;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();
    }

    public o(Activity activity, String str, a aVar) {
        this.a = activity;
        this.b = str;
        this.c = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean doInBackground(Void... voidArr) {
        if (TextUtils.isEmpty(this.b)) {
            return false;
        }
        Bitmap a2 = j.a.a(this.b);
        return Boolean.valueOf(a2 != null ? com.netease.mpay.widget.z.a(this.a, a2) : false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Boolean bool) {
        super.onPostExecute(bool);
        if (this.c != null) {
            if (bool.booleanValue()) {
                this.c.a();
            } else {
                this.c.b();
            }
        }
    }
}
