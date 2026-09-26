package com.netease.epay.sdk.psw.verifypwd;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.epay.sdk.base.ui.IFullScreenDialogFragment;
import com.netease.epay.sdk.base.ui.MockDialogFragmentLayout;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.gridpwd.EpaySdkPasswordChangedListener;
import com.netease.epay.sdk.base.view.gridpwd.GridPasswordView;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.psw.R;

/* compiled from: VerifyShortPwdFragment.java */
/* loaded from: classes.dex */
public class g extends e implements View.OnClickListener, IFullScreenDialogFragment {
    GridPasswordView a;
    EpaySdkPasswordChangedListener b = new EpaySdkPasswordChangedListener() { // from class: com.netease.epay.sdk.psw.verifypwd.g.1
        @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
        public void onMaxLength(String psw) {
            g.this.a(DigestUtil.encode(psw));
        }
    };

    @Override // com.netease.epay.sdk.psw.verifypwd.e, android.support.v4.app.Fragment
    public MockDialogFragmentLayout onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.a = (GridPasswordView) onCreateView.findViewById(R.id.et_payshorty_pwd);
        this.a.setOnPasswordChangedListener(this.b);
        if (!UiUtil.isLandScape(getResources())) {
            this.a.showKeyBoard();
        }
        ((TextView) onCreateView.findViewById(R.id.tvForgetPwd)).setOnClickListener(this);
        return new MockDialogFragmentLayout(getActivity(), onCreateView);
    }

    @Override // com.netease.epay.sdk.psw.verifypwd.e
    int a() {
        return R.layout.epaysdk_frag_wallet_check_shorty;
    }

    @Override // com.netease.epay.sdk.psw.verifypwd.e
    public void b() {
        this.a.clearPassword();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.tvForgetPwd) {
            ControllerRouter.route(RegisterCenter.RESET_PWD, getActivity(), ControllerJsonBuilder.getResetPwdJson(false, 1), ((VerifyPwdActivity) getActivity()).b());
        }
    }
}
