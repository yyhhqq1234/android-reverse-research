package com.netease.mpay;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.view.BottomLinkButtons;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public class mb extends a {
    private com.netease.mpay.b.ae d;
    private com.netease.mpay.widget.s e;
    private Resources f;
    private TextView g;
    private EditText h;
    private ImageView i;
    private Button j;
    private ImageView k;
    private View l;
    private BottomLinkButtons m;
    private boolean n;
    private View.OnClickListener o;

    public mb(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.n = false;
        this.o = new mf(this);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(View.OnClickListener onClickListener) {
        this.h.addTextChangedListener(new mg(this));
        this.h.setOnFocusChangeListener(new mh(this));
        this.h.setOnEditorActionListener(new bf.b(onClickListener));
        this.i.setOnClickListener(new mi(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EditText editText, ImageView imageView) {
        if (editText.getText().toString().equals("") || !editText.isFocused()) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i) {
        this.e.a(str);
    }

    private void s() {
        this.n = this.a.getResources().getConfiguration().orientation == 2;
        this.a.setContentView(RIdentifier.g.T);
        this.h = (EditText) this.a.findViewById(RIdentifier.f.bI);
        this.i = (ImageView) this.a.findViewById(RIdentifier.f.bJ);
        this.j = (Button) this.a.findViewById(RIdentifier.f.bg);
        this.m = (BottomLinkButtons) this.a.findViewById(RIdentifier.f.aQ);
        this.k = (ImageView) this.a.findViewById(RIdentifier.f.ar);
        this.l = this.a.findViewById(RIdentifier.f.at);
        this.g = (TextView) this.a.findViewById(RIdentifier.f.dg);
        this.f = this.a.getResources();
        this.e = new com.netease.mpay.widget.s(this.a);
    }

    private void t() {
        if (m()) {
            return;
        }
        mc mcVar = new mc(this);
        a(mcVar);
        this.g.setText(this.f.getString(RIdentifier.h.bo, this.d.a));
        this.j.setOnClickListener(mcVar);
        if (this.m != null) {
            this.m.a(RIdentifier.h.ax, RIdentifier.e.n, this.o);
            this.m.a();
        }
        this.k.setOnClickListener(new md(this));
        this.l.setOnClickListener(new me(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u() {
        return !this.h.getText().toString().trim().equals("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.h.getText().toString().length() != 0) {
            w();
        } else {
            a(this.f.getString(RIdentifier.h.an), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
            this.h.requestFocus();
        }
    }

    private void w() {
        new com.netease.mpay.f.br(this.a, this.d.a(), this.d.b(), this.d.a, this.h.getText().toString(), false, new mj(this)).h();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.ae(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (1 == i && (alVar instanceof com.netease.mpay.b.au)) {
            alVar.a(this.a);
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        if (this.n != (this.a.getResources().getConfiguration().orientation == 2)) {
            s();
            t();
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        s();
        t();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        return super.l();
    }
}
