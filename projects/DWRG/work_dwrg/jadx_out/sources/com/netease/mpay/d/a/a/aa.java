package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.k;
import com.netease.mpay.view.BottomLinkButtons;
import com.netease.mpay.view.LoginTabView;
import com.netease.mpay.view.TintIconView;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public abstract class aa extends k {
    private String a;
    private b b;
    private a c;
    private boolean d = false;
    private boolean e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends k.a {
        private LoginTabView b;
        private LinearLayout c;
        private EditText d;
        private ImageView e;
        private Button f;

        a(Activity activity, View view) {
            this.b = (LoginTabView) view.findViewById(RIdentifier.f.cB);
            this.b.setLabel(activity.getString(RIdentifier.h.bs));
            this.c = (LinearLayout) view.findViewById(RIdentifier.f.bI);
            this.d = (EditText) view.findViewById(RIdentifier.f.bO);
            this.e = (ImageView) view.findViewById(RIdentifier.f.bJ);
            this.f = (Button) view.findViewById(RIdentifier.f.bK);
            bf.a(this.f, false);
            this.b.setOnClickListener(new ad(this, aa.this));
            ae aeVar = new ae(this, aa.this, activity);
            this.f.setOnClickListener(aeVar);
            this.d.setOnEditorActionListener(new bf.b(aeVar));
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(EditText editText, ImageView imageView) {
            if (TextUtils.isEmpty(editText.getText().toString()) || !editText.isFocused()) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.netease.mpay.d.a.a.k.a
        public void a(boolean z) {
            this.b.setSelected(z);
            a(this.c, z);
            if (z) {
                this.d.addTextChangedListener(new af(this));
                this.d.setOnFocusChangeListener(new ag(this));
                this.e.setOnClickListener(new ah(this));
                a(this.d, this.e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends k.a {
        private final String b;
        private final String c;
        private LoginTabView d;
        private LinearLayout e;
        private EditText f;
        private TextView g;
        private TextView h;
        private Button i;
        private bf.a j;

        b(Activity activity, View view, boolean z) {
            this.b = activity.getString(RIdentifier.h.ay);
            this.c = activity.getString(RIdentifier.h.C);
            this.d = (LoginTabView) view.findViewById(RIdentifier.f.db);
            this.d.setLabel(activity.getString(RIdentifier.h.br));
            this.e = (LinearLayout) view.findViewById(RIdentifier.f.bW);
            this.f = (EditText) view.findViewById(RIdentifier.f.au);
            this.g = (TextView) view.findViewById(RIdentifier.f.aX);
            this.h = (TextView) view.findViewById(RIdentifier.f.av);
            this.i = (Button) view.findViewById(RIdentifier.f.bX);
            bf.a(this.i, false);
            this.f.addTextChangedListener(new ai(this, aa.this));
            this.j = new bf.a(this.h, 60, 1, new aj(this, aa.this));
            this.d.setOnClickListener(new ak(this, aa.this));
            al alVar = new al(this, aa.this, activity);
            this.i.setOnClickListener(alVar);
            this.f.setOnEditorActionListener(new bf.b(alVar));
            b(aa.this.d);
            if (z) {
                b();
            }
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.f != null) {
                this.f.setText("");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            aa.this.d = true;
            this.g.setVisibility(8);
            this.h.setVisibility(0);
            this.j.a();
            aa.this.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(boolean z) {
            this.g.setVisibility(0);
            this.h.setVisibility(8);
            this.j.b();
            this.g.setText(z ? this.c : this.b);
            this.g.setOnClickListener(new am(this));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.netease.mpay.d.a.a.k.a
        public void a(boolean z) {
            this.d.setSelected(z);
            a(this.e, z);
        }
    }

    public aa(String str, boolean z) {
        this.a = str;
        this.e = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.k
    public View a(Activity activity, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(RIdentifier.g.H, viewGroup, false);
        ((TextView) inflate.findViewById(RIdentifier.f.br)).setText(String.format(activity.getString(RIdentifier.h.aL), this.a));
        BottomLinkButtons bottomLinkButtons = (BottomLinkButtons) inflate.findViewById(RIdentifier.f.F);
        if (bottomLinkButtons != null) {
            bottomLinkButtons.a(RIdentifier.h.aa, RIdentifier.e.i, new ab(this));
            bottomLinkButtons.a();
        }
        View findViewById = inflate.findViewById(RIdentifier.f.ah);
        if (findViewById != null) {
            TintIconView tintIconView = (TintIconView) inflate.findViewById(RIdentifier.f.ai);
            TextView textView = (TextView) inflate.findViewById(RIdentifier.f.aj);
            tintIconView.a(RIdentifier.e.i, RIdentifier.e.g);
            textView.setText(inflate.getContext().getResources().getString(RIdentifier.h.aa));
            findViewById.setOnClickListener(new ac(this));
            findViewById.setVisibility(0);
        }
        this.b = new b(activity, inflate, this.e);
        this.c = new a(activity, inflate);
        this.b.a(this.e);
        this.c.a(!this.e);
        return inflate;
    }

    @Override // com.netease.mpay.d.a.a.k
    public void d() {
        if (this.b != null) {
            this.b.b(this.d);
        }
    }

    @Override // com.netease.mpay.d.a.a.k
    public void e() {
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // com.netease.mpay.d.a.a.k
    public void f() {
        if (this.b != null) {
            this.b.a(true);
        }
        if (this.c != null) {
            this.c.a(false);
        }
    }
}
