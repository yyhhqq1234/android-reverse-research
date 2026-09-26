package com.netease.mpay;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.ar;
import com.netease.mpay.b.o;
import com.netease.mpay.bc;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.RIdentifier;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ij extends com.netease.mpay.a {
    private com.netease.mpay.b.p d;
    private a e;
    private boolean f;
    private Resources g;
    private com.netease.mpay.e.b h;
    private com.netease.mpay.e.b.af i;
    private Integer j;
    private OrderInit k;
    private boolean l;
    private com.netease.mpay.e.b.o m;
    private bc n;
    private bc.a o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {
        public String a = "";
        private int e = 3;
        public boolean b = false;
        public boolean c = false;

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        String a() {
            switch (this.e) {
                case 1:
                    return "zf_index_cz";
                case 2:
                    return "zf_index_bz";
                case 3:
                    return "zf_index_wz";
                case 4:
                    return "zf_index_yk";
                default:
                    return "zf_index_wz";
            }
        }

        void a(int i) {
            this.e = i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(String str) {
            if (ij.this.i.v) {
                com.netease.mpay.widget.ay.a(ij.this.a, bk.k).a(ij.this.a, ij.this.i.b, ij.this.d.c.b, ij.this.d.c.c, ij.this.d.c.e, ij.this.e.a(), str, ij.this.e.b(), true);
            }
        }

        String b() {
            return com.netease.mpay.widget.ay.a(this.a, a());
        }

        void c() {
            this.e = 3;
            this.b = false;
            this.c = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            if (!ij.this.i.v || ij.this.e.c) {
                return;
            }
            ij.this.e.c = true;
            com.netease.mpay.widget.ay.a(ij.this.a, bk.k).a(ij.this.a, ij.this.i.b, ij.this.d.c.b, ij.this.d.c.c, ij.this.d.c.e, ij.this.e.a(), ij.this.e.b());
        }
    }

    public ij(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.o = new ik(this);
        this.f = false;
        this.e = new a();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        w();
        this.a.setResult(3);
        this.a.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        x();
        this.a.setResult(4);
        this.a.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        y();
        this.e.d();
        this.a.setResult(5);
        this.a.finish();
    }

    private void D() {
        com.netease.mpay.e.b.o b = this.h.c().b(this.d.b());
        if (b != null) {
            this.h.c().b(b.c, b.d);
        }
    }

    private void E() {
        if (this.a.isFinishing()) {
            return;
        }
        new com.netease.mpay.widget.s(this.a).a(cq.a(this.a, this.d.a(), RIdentifier.h.by), this.g.getString(RIdentifier.h.l), new io(this), this.g.getString(RIdentifier.h.cJ), new ip(this), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        new com.netease.mpay.f.as(this.a, this.d.a(), this.d.b(), this.d.c.d, this.d.d.a, new iq(this), this.k == null).h();
    }

    private void a(PaymentResult paymentResult) {
        if (this.d.l() == null) {
            return;
        }
        this.d.l().onFinish(1, paymentResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.b.o oVar) {
        new com.netease.mpay.f.e(this.a, this.d.a(), this.d.b(), this.d.c.d, this.d.d.a, new iu(this, oVar)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(OrderInit.PayChannel payChannel) {
        b.a(this.a, b.a.PrepayChannelSelectorActivity, new com.netease.mpay.b.t(new com.netease.mpay.b.o(this.d, new o.a(this.k.a, this.k.b, this.j, null, payChannel)), "pay"), null, 6);
    }

    @Nullable
    private OrderInit.PayChannel b(String str) {
        if (this.k == null || str == null) {
            return null;
        }
        Iterator it = this.k.f.iterator();
        while (it.hasNext()) {
            OrderInit.PayChannel payChannel = (OrderInit.PayChannel) it.next();
            if (str.equals(payChannel.a)) {
                return payChannel;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(PaymentResult paymentResult) {
        a(paymentResult);
        this.a.setResult(2);
        this.a.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(OrderInit.PayChannel payChannel) {
        b.a aVar;
        String str;
        int i;
        String str2 = payChannel.a;
        if (str2.equals("epay")) {
            aVar = null;
            str = "zf_wyb";
            i = -1;
        } else if (str2.equals("ecard")) {
            aVar = b.a.EcardActivity;
            str = "zf";
            i = 2;
        } else if (str2.equals("mcard")) {
            aVar = b.a.PayLoaderActivity;
            str = "zf_sjcz";
            i = 3;
        } else if (str2.equals("uppay")) {
            aVar = b.a.UppayActivity;
            str = "zf_yl";
            i = 4;
        } else if (str2.equals("bankcard")) {
            aVar = b.a.BankCardPayActivity;
            str = "zf_yhk";
            i = 10;
        } else if (str2.equals("alipay")) {
            aVar = b.a.AlipayActivity;
            str = "zf_zfb";
            i = 5;
        } else if (str2.equals("weixinpay")) {
            aVar = b.a.PayLoaderActivity;
            str = "zf_wxzf";
            i = 8;
        } else if (str2.equals("weixinpayqr")) {
            aVar = null;
            str = "zf_wxzfqr";
            i = -1;
        } else if (str2.equals("alipayqr")) {
            aVar = null;
            str = "zf_zfbqr";
            i = -1;
        } else if (str2.equals("tenpay")) {
            aVar = b.a.PayLoaderActivity;
            str = "zf_qqzf";
            i = 11;
        } else {
            aVar = null;
            str = "";
            i = -1;
        }
        this.e.a(str);
        com.netease.mpay.b.o oVar = new com.netease.mpay.b.o(this.d, new o.a(this.k.a, this.k.b, this.j, com.netease.mpay.widget.ay.a(this.e.b(), str), payChannel));
        if (str2.equals("epay")) {
            a(oVar);
            return;
        }
        if (str2.equals("weixinpayqr") || str2.equals("alipayqr")) {
            new kv(this.a, new com.netease.mpay.b.s(oVar), new in(this)).a();
        } else if (aVar != null) {
            b.a(this.a, aVar, oVar, null, Integer.valueOf(i));
        } else {
            Cdo.a("Unknown channel: " + str2);
        }
    }

    private void s() {
        super.a(this.g.getString(RIdentifier.h.co));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (this.k == null) {
            b(PaymentResult.ORDER_ERROR);
            return;
        }
        this.a.setContentView(RIdentifier.g.j);
        ImageView imageView = (ImageView) this.a.findViewById(RIdentifier.f.ad);
        try {
            imageView.setImageDrawable(this.a.getResources().getDrawable(this.a.getApplicationInfo().icon));
        } catch (Exception e) {
            imageView.setVisibility(8);
        }
        ((TextView) this.a.findViewById(RIdentifier.f.cx)).setText(this.k.a);
        ((TextView) this.a.findViewById(RIdentifier.f.cy)).setText(this.k.b);
        ((TextView) this.a.findViewById(RIdentifier.f.cw)).setText(this.g.getString(RIdentifier.h.cw) + this.k.d);
        ((TextView) this.a.findViewById(RIdentifier.f.I)).setText(this.d.c.f);
        this.a.findViewById(RIdentifier.f.af).setOnClickListener(new im(this));
        this.n = new bc(this.a, this.d.a(), this.o);
        u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        OrderInit.PayChannel b = b("ecard");
        this.j = Integer.valueOf(b == null ? 0 : b.l);
        if (this.n != null) {
            this.n.a(this.k.f);
        }
    }

    private void v() {
        if (this.d.l() == null) {
            return;
        }
        this.d.l().onFinish(0, PaymentResult.SUCCESS);
        com.netease.mpay.e.b.l c = this.h.k().c();
        if (c.c) {
            return;
        }
        c.c = true;
        this.h.k().a(c);
    }

    private void w() {
        if (this.d.l() == null) {
            return;
        }
        this.d.l().onFinish(2, PaymentResult.PAY_CHANNEL_UNKNOWN);
        com.netease.mpay.e.b.l c = this.h.k().c();
        if (c.c) {
            return;
        }
        c.c = true;
        this.h.k().a(c);
    }

    private void x() {
        D();
        if (this.d.l() == null) {
            return;
        }
        this.d.l().onFinish(3, PaymentResult.USER_LOGOUT);
    }

    private void y() {
        if (this.d.l() == null) {
            return;
        }
        this.d.l().onFinish(4, PaymentResult.USER_CANCEL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        v();
        this.a.setResult(1);
        this.a.finish();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.p(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (i == 9) {
            if (!(alVar instanceof com.netease.mpay.b.ao) || ((com.netease.mpay.b.ao) alVar).b || !TextUtils.equals(this.d.c.b, ((com.netease.mpay.b.ao) alVar).d)) {
                B();
                return;
            }
            this.d.c.d = ((com.netease.mpay.b.ao) alVar).e;
            this.m = this.h.c().a(this.d.c.b);
            F();
            return;
        }
        if (alVar instanceof ar.c) {
            if (((ar.c) alVar).a()) {
                B();
                return;
            } else {
                x();
                return;
            }
        }
        if (i == 6) {
            this.e.c();
            if (this.k == null || !this.k.a()) {
                return;
            }
            F();
            return;
        }
        if (i == 7) {
            if (alVar instanceof com.netease.mpay.b.ap) {
                B();
                return;
            }
            return;
        }
        if (i != 1 && i != 2 && i != 3 && i != 4 && i != 10 && i != 5 && i != 8 && i != 11) {
            A();
            return;
        }
        if (i == 5 && (alVar instanceof ar.d)) {
            String str = ((ar.d) alVar).d;
            if (str == null) {
                A();
                return;
            }
            if (str.equals("0")) {
                this.f = false;
                return;
            } else if (str.equals("1")) {
                b(b("epay"));
                return;
            } else {
                A();
                return;
            }
        }
        if (alVar instanceof ar.e) {
            if (((ar.e) alVar).a()) {
                z();
            } else {
                v();
            }
        } else if (alVar instanceof ar.b) {
            if (((ar.b) alVar).a()) {
                b(PaymentResult.PAY_CHANNEL_ERROR);
            } else {
                a(PaymentResult.PAY_CHANNEL_ERROR);
            }
        } else if (alVar instanceof ar.f) {
            if (((ar.f) alVar).a()) {
                A();
            } else {
                w();
            }
        } else if (alVar instanceof ar.c) {
            if (((ar.c) alVar).a()) {
                B();
            } else {
                x();
            }
        }
        this.a.finish();
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        boolean z;
        super.a(configuration);
        if (this.a.isFinishing() || this.l == (z = this.g.getBoolean(RIdentifier.b.a))) {
            return;
        }
        this.l = z;
        if (this.k != null) {
            t();
        }
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        this.g = this.a.getResources();
        super.a(bundle);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.g = this.a.getResources();
        s();
        this.l = this.g.getBoolean(RIdentifier.b.a);
        if (this.d.l() == null) {
            b(PaymentResult.CALLBACK_EMPTY);
            return;
        }
        this.h = new com.netease.mpay.e.b(this.a, this.d.a());
        this.i = this.h.e().a();
        this.m = this.h.c().a(this.d.c.b);
        if (!com.netease.mpay.e.a.a.c(this.d.c.e)) {
            this.e.a(4);
            this.e.d();
        }
        F();
        this.n = new bc(this.a, this.d.a(), this.o);
    }

    @Override // com.netease.mpay.a
    public void g() {
        super.g();
        if (this.d.c == null || this.d.l() == null) {
            A();
        }
    }

    @Override // com.netease.mpay.a
    public void j() {
        this.d.m();
        super.j();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        E();
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean n() {
        super.n();
        return a(RIdentifier.g.m);
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        E();
        return true;
    }
}
