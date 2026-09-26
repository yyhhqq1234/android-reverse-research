package com.netease.epay.sdk.pay.ui;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.R;
import org.json.JSONObject;

/* compiled from: PayFragment.java */
/* loaded from: classes.dex */
public abstract class l extends SdkFragment implements View.OnClickListener {
    public int a;
    Button b;
    private a c;

    /* compiled from: PayFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(View view);

        void a(JSONObject jSONObject);

        void b();

        void c();
    }

    /* compiled from: PayFragment.java */
    /* loaded from: classes.dex */
    public static class b {
        public static int a = 1;
        public static int b = 2;
        public static int c = 3;
        public static int d = 4;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity != null && activity.getWindow() != null) {
            activity.getWindow().addFlags(8192);
        }
        this.c = new com.netease.epay.sdk.pay.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        String str;
        if (this.a == b.c) {
            str = "请输入短信验证码";
        } else if (this.a == b.d) {
            str = "网易支付";
        } else {
            str = "请输入支付密码";
        }
        FragmentTitleBar fragmentTitleBar = (FragmentTitleBar) view.findViewById(R.id.ftb);
        fragmentTitleBar.setTitle(str);
        fragmentTitleBar.setSubtitleShow(this.a != b.d);
        fragmentTitleBar.setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.l.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                l.this.c.a();
            }
        });
        ((ImageView) view.findViewById(R.id.ivIcon)).setImageResource(LogicUtil.getIcon(getActivity(), CoreData.lastCheckIndex == -1 ? PayConstants.PAY_METHOD_BALABCE : Card.getSelectedCardBankStyleId(CoreData.lastCheckIndex)));
        if (view.findViewById(R.id.btn_done) != null) {
            this.b = (Button) view.findViewById(R.id.btn_done);
            this.b.setOnClickListener(this);
            this.b.setText("付款");
        }
        if (this.c != null) {
            this.c.a(view);
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
    }

    public void onClick(View view) {
        if (this.c != null) {
            if (view.getId() == R.id.ll_paymethod) {
                this.c.b();
                return;
            } else if (view.getId() == R.id.btn_done) {
                b();
                return;
            } else {
                if (view.getId() == R.id.rl_epaysdk_view_pay_detail) {
                    this.c.c();
                    return;
                }
                return;
            }
        }
        ToastUtil.show(getActivity(), "出错了");
    }

    public void a(JSONObject jSONObject) {
        if (this.c != null) {
            this.c.a(jSONObject);
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
    }

    public void a(View view, String str, String str2, boolean z, boolean z2, String str3, boolean z3, boolean z4) {
        ((TextView) view.findViewById(R.id.tv_paymethod_order_amount)).setText(str);
        TextView textView = (TextView) view.findViewById(R.id.tv_original_amount);
        TextView textView2 = (TextView) view.findViewById(R.id.tvRandom);
        if (TextUtils.isEmpty(str2) || !z2) {
            textView.setVisibility(8);
        } else {
            textView.setText(str2);
            textView.getPaint().setFlags(16);
        }
        if (z) {
            textView2.setVisibility(0);
            textView.setVisibility(8);
        }
        if (z2) {
            view.findViewById(R.id.rl_epaysdk_view_pay_detail).setOnClickListener(this);
        }
        view.findViewById(R.id.ivDiscountArrow).setVisibility(z2 ? 0 : 4);
        ((TextView) view.findViewById(R.id.tv_paymethod)).setText(str3);
        view.findViewById(R.id.ll_paymethod).setVisibility(z3 ? 0 : 8);
        if (z4) {
            view.findViewById(R.id.ll_paymethod).setOnClickListener(this);
        }
        view.findViewById(R.id.iv_paymethod_selector).setVisibility(z4 ? 0 : 8);
    }

    public void a() {
        if (this.b != null) {
            this.b.setEnabled(true);
        }
    }

    void b() {
    }
}
