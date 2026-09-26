package com.netease.mpay;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.server.response.urslogin.EmailRelatedMobile;
import com.netease.mpay.view.BottomLinkButtons;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class lq extends com.netease.mpay.a {
    private com.netease.mpay.b.ad d;
    private com.netease.mpay.widget.s e;
    private Resources f;
    private com.netease.mpay.e.b g;
    private com.netease.mpay.e.b.af h;
    private AutoCompleteTextView i;
    private ImageView j;
    private ArrayList k;
    private Button l;
    private BottomLinkButtons m;
    private ImageView n;
    private TextWatcher o;
    private boolean p;
    private boolean q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends bf.c {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(lq lqVar, lr lrVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            com.netease.mpay.widget.bf.a(lq.this.a, view.getWindowToken());
            lq.this.x();
        }
    }

    public lq(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.p = false;
        this.q = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        b.a(this.a, b.a.RegistrationActivity, new com.netease.mpay.b.u(this.d.d(), true), null, 2);
    }

    private void a(int i, com.netease.mpay.b.al alVar) {
        if (!(alVar instanceof com.netease.mpay.b.ao) || ((com.netease.mpay.b.ao) alVar).b) {
            if (alVar instanceof com.netease.mpay.b.au) {
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                        if (this.d.e != null) {
                            this.d.e.onDialogFinish();
                        }
                        alVar.a(this.a);
                        return;
                    default:
                        return;
                }
            }
            return;
        }
        switch (i) {
            case 0:
            case 1:
                a((com.netease.mpay.b.ao) alVar);
                return;
            case 2:
                if (this.d.e != null) {
                    this.d.e.onLoginSuccess(new User((com.netease.mpay.b.ao) alVar));
                }
                ((com.netease.mpay.b.ao) alVar).a().a(this.a);
                return;
            default:
                return;
        }
    }

    private void a(long j) {
        new ma(this, SystemClock.elapsedRealtime(), j);
    }

    private void a(IBinder iBinder) {
        if (iBinder != null) {
            ((InputMethodManager) this.a.getSystemService("input_method")).hideSoftInputFromWindow(iBinder, 2);
        }
    }

    private void a(com.netease.mpay.b.ao aoVar) {
        new oy(this.a, this.d.a(), aoVar.h, 1, this.d.b()).a(aoVar.i, aoVar.j);
        if (this.d.c && this.d.e != null) {
            this.d.e.onLoginSuccess(new User(aoVar));
            aoVar.a();
        }
        aoVar.a(this.a);
    }

    private void a(String str, int i) {
        this.e.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, EmailRelatedMobile emailRelatedMobile) {
        b.a(this.a, b.a.UrsLoginByPasswordSmsActivity, new com.netease.mpay.b.af(this.d.d(), str, str2, emailRelatedMobile, null), null, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        if (str == null) {
            this.i.setText("");
        } else if (!this.i.getText().toString().equals(str)) {
            this.i.setText(str);
        }
        z();
        if (z) {
            y();
        }
    }

    private boolean a(View view, MotionEvent motionEvent) {
        if (view == null || !(view instanceof EditText)) {
            return false;
        }
        int[] iArr = {0, 0};
        Iterator it = this.k.iterator();
        boolean z = false;
        while (it.hasNext()) {
            ((EditText) it.next()).getLocationInWindow(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            int height = view.getHeight() + i2;
            int width = view.getWidth() + i;
            if (motionEvent.getX() > i && motionEvent.getX() < width && motionEvent.getY() > i2 && motionEvent.getY() < height) {
                return false;
            }
            z = true;
        }
        return z;
    }

    private void b(int i, com.netease.mpay.b.al alVar) {
        if (i == 0 || i == 1) {
            if (alVar instanceof com.netease.mpay.b.au) {
                alVar.a(this.a);
                return;
            } else {
                if (alVar instanceof com.netease.mpay.b.ao) {
                    a((com.netease.mpay.b.ao) alVar);
                    return;
                }
                return;
            }
        }
        if (i == 2) {
            if (alVar instanceof com.netease.mpay.b.ao) {
                if (((com.netease.mpay.b.ao) alVar).b) {
                    return;
                }
                alVar.a(this.a);
            } else if (alVar instanceof com.netease.mpay.b.au) {
                alVar.a(this.a);
            }
        }
    }

    private void b(String str) {
        new com.netease.mpay.f.ai(this.a, this.d.a(), this.d.b(), str, new ls(this, str)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        b.a(this.a, b.a.UrsLoginByPasswordActivity, new com.netease.mpay.b.ae(this.d.d(), str, null), null, 0);
    }

    private void s() {
        this.p = this.a.getResources().getConfiguration().orientation == 2;
        this.k = new ArrayList();
        this.a.setContentView(RIdentifier.g.S);
        this.i = (AutoCompleteTextView) this.a.findViewById(RIdentifier.f.ca);
        this.k.add(this.i);
        this.j = (ImageView) this.a.findViewById(RIdentifier.f.cc);
        this.l = (Button) this.a.findViewById(RIdentifier.f.bg);
        this.m = (BottomLinkButtons) this.a.findViewById(RIdentifier.f.cd);
        this.n = (ImageView) this.a.findViewById(RIdentifier.f.ar);
        this.f = this.a.getResources();
        this.e = new com.netease.mpay.widget.s(this.a);
        if (this.d.c && (this.d.e == null || this.d.a() == null)) {
            new com.netease.mpay.b.am().a(this.a);
            return;
        }
        if (this.i != null) {
            this.i.setHint(cq.b(this.a, this.d.a(), RIdentifier.h.aC, 1));
        }
        this.g = new com.netease.mpay.e.b(this.a, this.d.a());
        this.h = this.g.e().a();
    }

    private void t() {
        if (m()) {
            return;
        }
        w();
        a aVar = new a(this, null);
        com.netease.mpay.widget.bf.a(this.l, u());
        this.l.setOnClickListener(aVar);
        this.m.a(RIdentifier.h.bc, RIdentifier.e.m, new lr(this));
        this.m.a();
        if (this.d.c) {
            this.n.setVisibility(4);
        } else {
            this.n.setOnClickListener(new lt(this));
        }
        z();
        this.a.findViewById(RIdentifier.f.at).setOnClickListener(new lu(this));
        this.i.setOnEditorActionListener(new bf.b(aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u() {
        return !(this.i == null ? "" : this.i.getText().toString().trim()).equals("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v() {
        String trim = this.i == null ? "" : this.i.getText().toString().trim();
        return !TextUtils.isEmpty(trim) && trim.contains("@") && trim.endsWith("com");
    }

    private void w() {
        ArrayList arrayList = new ArrayList();
        if (this.d.a != null) {
            this.i.setCursorVisible(false);
        }
        if (this.i.getText().toString().equals("")) {
            a(this.d.a, true);
        }
        this.o = com.netease.mpay.widget.ba.a(this.a, this.i, RIdentifier.g.v, Integer.valueOf(RIdentifier.f.bb), com.netease.mpay.server.response.u.a(this.a, this.d.a()).b(1).b(this.a, this.d.a()), Integer.valueOf(RIdentifier.f.ce), (String[]) arrayList.toArray(new String[arrayList.size()]), null);
        if (!com.netease.mpay.widget.ba.a(this.a)) {
            this.i.removeTextChangedListener(this.o);
        }
        this.i.setOnItemClickListener(new lv(this));
        this.i.setOnFocusChangeListener(new lw(this));
        this.j.setOnClickListener(new lx(this));
        this.i.setOnClickListener(new ly(this));
        this.i.addTextChangedListener(new lz(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        this.i.dismissDropDown();
        int threshold = this.i.getThreshold();
        this.i.setThreshold(100000);
        com.netease.mpay.widget.ba.a(this.i);
        this.i.setThreshold(threshold);
        String obj = this.i.getText().toString();
        if (obj.equals("")) {
            a(this.f.getString(RIdentifier.h.aj), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        } else if (cq.b(obj)) {
            b(obj);
        } else {
            a(cq.b(this.a, this.d.a(), RIdentifier.h.ac, 1), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        a(700L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        String obj = this.i.getText().toString();
        if (!this.i.isFocused() || obj == null || obj.equals("")) {
            this.j.setVisibility(8);
        } else {
            this.j.setVisibility(0);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.ad(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (this.d.c) {
            a(i, alVar);
        } else {
            b(i, alVar);
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        this.i.removeTextChangedListener(this.o);
        if (com.netease.mpay.widget.ba.a(this.a)) {
            this.i.addTextChangedListener(this.o);
        } else {
            this.i.dismissDropDown();
        }
        if (this.p != (this.a.getResources().getConfiguration().orientation == 2)) {
            s();
            t();
        }
    }

    @Override // com.netease.mpay.a
    public void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            View currentFocus = this.a.getCurrentFocus();
            if (a(currentFocus, motionEvent)) {
                a(currentFocus.getWindowToken());
            }
        }
    }

    @Override // com.netease.mpay.a
    public void a(boolean z) {
        super.a(z);
        if (!z || this.q || TextUtils.isEmpty(this.d.b)) {
            return;
        }
        a(this.d.b, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        this.q = true;
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
