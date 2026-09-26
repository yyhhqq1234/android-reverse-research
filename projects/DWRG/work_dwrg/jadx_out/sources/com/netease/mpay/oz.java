package com.netease.mpay;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class oz implements com.netease.mpay.widget.be {
    private a a;

    /* loaded from: classes.dex */
    private class a extends LinearLayout {
        public int a;
        public int b;
        private ImageView d;
        private TextView e;

        public a(Context context) {
            super(context);
            LayoutInflater from = LayoutInflater.from(context);
            com.netease.mpay.skin.e.a(from, new com.netease.mpay.skin.e());
            from.inflate(RIdentifier.g.W, this);
            View findViewById = findViewById(RIdentifier.f.cg);
            this.d = (ImageView) findViewById(RIdentifier.f.aB);
            this.e = (TextView) findViewById(RIdentifier.f.bi);
            this.a = findViewById.getLayoutParams().width;
            this.b = findViewById.getLayoutParams().height;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public void a(Drawable drawable, String str) {
            this.d.setImageDrawable(drawable);
            this.e.setText(str);
        }
    }

    public oz(Context context, Drawable drawable, String str) {
        this.a = new a(context);
        this.a.a(drawable, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.be
    public LinearLayout a() {
        return this.a;
    }

    @Override // com.netease.mpay.widget.be
    public int b() {
        return this.a.a;
    }

    @Override // com.netease.mpay.widget.be
    public int c() {
        return this.a.b;
    }
}
