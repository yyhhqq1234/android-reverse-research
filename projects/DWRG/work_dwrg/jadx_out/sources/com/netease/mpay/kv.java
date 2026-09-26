package com.netease.mpay;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.j;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class kv {
    private Activity a;
    private Dialog b;
    private com.netease.mpay.b.s c;
    private View d;
    private View e;
    private View f;
    private ImageView g;
    private TextView h;
    private Button i;
    private TextView j;
    private String k;
    private b m;
    private com.netease.mpay.f.aa n;
    private int l = -1;
    private boolean o = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends AsyncTask {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(kv kvVar, kw kwVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Bitmap doInBackground(Void... voidArr) {
            return j.a.a(kv.this.k);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            if (bitmap == null) {
                kv.this.a(1);
            } else {
                ((ImageView) kv.this.b.findViewById(RIdentifier.f.cH)).setImageBitmap(bitmap);
                kv.this.a(2);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(int i);
    }

    public kv(Activity activity, com.netease.mpay.b.s sVar, b bVar) {
        this.a = activity;
        this.c = sVar;
        if (bVar == null) {
            throw new RuntimeException("QrcodePayCallback can't be null");
        }
        this.m = new kw(this, bVar);
        this.n = new com.netease.mpay.f.aa(this.a, sVar.a(), sVar.b(), sVar.c.d, sVar.q(), new kx(this));
        b();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.l = i;
        switch (i) {
            case 0:
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                this.f.setVisibility(0);
                this.j.setText(RIdentifier.h.cA);
                return;
            case 1:
                this.d.setVisibility(8);
                this.e.setVisibility(0);
                this.f.setVisibility(8);
                this.g.setImageResource(RIdentifier.e.aH);
                this.h.setText(RIdentifier.h.cz);
                this.i.setText(RIdentifier.h.cF);
                this.i.setOnClickListener(new lb(this));
                return;
            case 2:
                this.d.setVisibility(0);
                this.e.setVisibility(8);
                this.f.setVisibility(8);
                d();
                return;
            case 3:
                this.d.setVisibility(8);
                this.e.setVisibility(0);
                this.f.setVisibility(8);
                this.g.setImageResource(RIdentifier.e.S);
                this.h.setText(RIdentifier.h.cr);
                this.i.setText(RIdentifier.h.cJ);
                this.i.setOnClickListener(new ld(this));
                return;
            case 4:
                this.d.setVisibility(8);
                this.e.setVisibility(0);
                this.f.setVisibility(8);
                this.g.setImageResource(RIdentifier.e.R);
                this.h.setText(RIdentifier.h.cp);
                this.i.setText(RIdentifier.h.cJ);
                this.i.setOnClickListener(new lc(this));
                return;
            case 5:
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                this.f.setVisibility(0);
                this.j.setText(RIdentifier.h.cB);
                return;
            default:
                return;
        }
    }

    private void b() {
        this.b = new Dialog(this.a, RIdentifier.i.a);
        this.b.setContentView(RIdentifier.g.Z);
        this.b.setCancelable(false);
        this.b.setCanceledOnTouchOutside(false);
        this.b.findViewById(RIdentifier.f.ap).startAnimation(AnimationUtils.loadAnimation(this.a, RIdentifier.a.a));
        this.b.findViewById(RIdentifier.f.cC).setOnClickListener(new ky(this));
        this.d = this.b.findViewById(RIdentifier.f.cF);
        this.e = this.b.findViewById(RIdentifier.f.cD);
        this.f = this.b.findViewById(RIdentifier.f.cE);
        this.g = (ImageView) this.b.findViewById(RIdentifier.f.cM);
        this.h = (TextView) this.b.findViewById(RIdentifier.f.cN);
        this.i = (Button) this.b.findViewById(RIdentifier.f.cL);
        this.j = (TextView) this.b.findViewById(RIdentifier.f.cG);
        TextView textView = (TextView) this.b.findViewById(RIdentifier.f.cK);
        TextView textView2 = (TextView) this.b.findViewById(RIdentifier.f.cJ);
        textView.setText(this.c.n());
        String o = this.c.o();
        if ("weixinpayqr".equals(o)) {
            textView2.setText(RIdentifier.h.cC);
        } else if ("alipayqr".equals(o)) {
            textView2.setText(RIdentifier.h.cy);
        }
        ((TextView) this.b.findViewById(RIdentifier.f.cI)).setText("¥" + this.c.r());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        a(0);
        if (TextUtils.isEmpty(this.k)) {
            new com.netease.mpay.f.j(this.a, this.c.a(), this.c.b(), this.c.c.d, this.c.q(), e(), new kz(this)).h();
        } else {
            new a(this, null).execute(new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.o) {
            return;
        }
        new Handler().postDelayed(new la(this), 2000L);
    }

    private String e() {
        String o = this.c.o();
        if ("weixinpayqr".equals(o)) {
            return "weixinpayqr";
        }
        if ("alipayqr".equals(o)) {
            return "alipayqr";
        }
        return null;
    }

    public void a() {
        if (this.b.isShowing()) {
            return;
        }
        this.b.show();
        c();
    }
}
