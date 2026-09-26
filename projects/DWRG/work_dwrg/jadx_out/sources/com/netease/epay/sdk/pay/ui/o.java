package com.netease.epay.sdk.pay.ui;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.netease.epay.sdk.base.ui.IFullScreenDialogFragment;
import com.netease.epay.sdk.base.ui.MockDialogFragmentLayout;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.gridpwd.EpaySdkPasswordChangedListener;
import com.netease.epay.sdk.base.view.gridpwd.GridPasswordView;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.ui.l;

/* compiled from: PayShortyFragment.java */
/* loaded from: classes.dex */
public class o extends l implements IFullScreenDialogFragment {
    EpaySdkPasswordChangedListener c = new EpaySdkPasswordChangedListener() { // from class: com.netease.epay.sdk.pay.ui.o.1
        @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
        public void onMaxLength(String psw) {
            if (o.this.e != null) {
                o.this.e.a(psw);
            } else {
                ToastUtil.show(o.this.getActivity(), "出错了");
            }
        }
    };
    private GridPasswordView d;
    private a e;

    /* compiled from: PayShortyFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(String str);
    }

    public static o c() {
        return new o();
    }

    @Override // android.support.v4.app.Fragment
    public MockDialogFragmentLayout onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_payshorty, (ViewGroup) null);
        this.a = l.b.a;
        a(inflate);
        this.d = (GridPasswordView) inflate.findViewById(R.id.et_payshorty_pwd);
        this.d.setOnPasswordChangedListener(this.c);
        if (!UiUtil.isLandScape(getResources())) {
            this.d.showKeyBoard();
        }
        inflate.findViewById(R.id.tvForgetPwd).setOnClickListener(this);
        this.e = new com.netease.epay.sdk.pay.c.d(this);
        return new MockDialogFragmentLayout(getActivity(), inflate);
    }

    @Override // com.netease.epay.sdk.pay.ui.l, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.tvForgetPwd) {
            ControllerRouter.route(RegisterCenter.RESET_PWD, getActivity(), ControllerJsonBuilder.getResetPwdJson(false, 1), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.ui.o.2
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult controllerResult) {
                    if (controllerResult.isSuccess) {
                        PayingActivity.a(o.this.getActivity());
                    }
                }
            });
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.l
    public void a() {
        this.d.clearPassword();
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.d.screenOrientationChange();
    }
}
