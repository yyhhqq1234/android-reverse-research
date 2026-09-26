package com.netease.mpay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class eb extends com.netease.mpay.a {
    public static String d = "netease_mpay__assistant_background";
    private com.netease.mpay.b.j e;
    private b f;

    /* loaded from: classes.dex */
    public static class a {
        private static int a = 0;

        static {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public static int a(Activity activity) {
            if (a > 0) {
                return a;
            }
            try {
                a = activity.getResources().getIdentifier(eb.d, ResIdReader.RES_TYPE_DRAWABLE, activity.getPackageName());
            } catch (Exception e) {
            }
            return a;
        }

        public static boolean b(Activity activity) {
            return a(activity) > 0;
        }
    }

    /* loaded from: classes.dex */
    private enum b {
        INIT,
        STAY_FOR_FINISH,
        FINISHED;

        b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public eb(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void s() {
        ImageView imageView = (ImageView) this.a.findViewById(RIdentifier.f.D);
        if (imageView == null) {
            this.a.setContentView(RIdentifier.g.e);
            View p = p();
            if (p != null) {
                p.setVisibility(8);
            }
            imageView = (ImageView) this.a.findViewById(RIdentifier.f.D);
        }
        if (imageView.getVisibility() != 0) {
            imageView.setImageResource(a.a(this.a));
            imageView.setVisibility(0);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.j(intent);
        return this.e;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        alVar.a(this.a);
        this.f = b.FINISHED;
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f = b.INIT;
        if (this.e.a) {
            return;
        }
        s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.a
    public void e() {
        super.e();
        s();
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (b.INIT == this.f) {
            com.netease.mpay.b.a(this.a, this.e.b, this.a.getIntent().getExtras(), 1);
            this.f = b.STAY_FOR_FINISH;
        } else if (b.STAY_FOR_FINISH == this.f) {
            this.a.finish();
            this.f = b.FINISHED;
        }
    }
}
