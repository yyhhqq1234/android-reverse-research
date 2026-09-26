package com.netease.epay.sdk.psw.setpwd;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.epay.sdk.base.ui.IFullScreenDialogFragment;
import com.netease.epay.sdk.base.ui.MockDialogFragmentLayout;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.DelayedTask;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.base.view.gridpwd.EpaySdkPasswordChangedListener;
import com.netease.epay.sdk.base.view.gridpwd.GridPasswordView;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.psw.R;
import com.netease.epay.sdk.psw.SetShortPwdController;

/* compiled from: SetShortyFragment.java */
/* loaded from: classes.dex */
public class c extends SdkFragment implements IFullScreenDialogFragment {
    private GridPasswordView c;
    private boolean d;
    private b b = new b();
    EpaySdkPasswordChangedListener a = new EpaySdkPasswordChangedListener() { // from class: com.netease.epay.sdk.psw.setpwd.c.3
        @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
        public void onMaxLength(final String psw) {
            if (!c.this.b.b()) {
                if (!c.this.b.b(psw)) {
                    ToastUtil.show(c.this.getActivity(), "两次输入的支付密码不一致");
                    return;
                }
                SetShortPwdController setShortPwdController = (SetShortPwdController) ControllerRouter.getController(RegisterCenter.SET_PWD);
                if (setShortPwdController != null) {
                    setShortPwdController.deal(new a(DigestUtil.encode(psw), (SetPwdFragmentActivity) c.this.getActivity()));
                }
                c.this.dismissAllowingStateLoss();
                return;
            }
            new DelayedTask(200, new DelayedTask.IDelayedListener() { // from class: com.netease.epay.sdk.psw.setpwd.c.3.1
                @Override // com.netease.epay.sdk.base.util.DelayedTask.IDelayedListener
                public void onDelayed() {
                    if (c.this.isVisible() && c.this.getActivity() != null) {
                        c.this.b.a(psw);
                        c.this.c.clearPassword();
                        c.this.a(c.this.getView());
                    }
                }
            }).execute(new Void[0]);
        }
    };

    @Override // android.support.v4.app.Fragment
    public MockDialogFragmentLayout onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_set_shorty, (ViewGroup) null);
        this.d = getArguments().getBoolean("is_forced");
        this.c = (GridPasswordView) inflate.findViewById(R.id.et_setshorty_pwd);
        this.c.setOnPasswordChangedListener(this.a);
        a(inflate);
        return new MockDialogFragmentLayout(getActivity(), inflate);
    }

    public void a(View view) {
        FragmentTitleBar fragmentTitleBar = (FragmentTitleBar) view.findViewById(R.id.ftb);
        if (this.b.b()) {
            fragmentTitleBar.setTitle("设置支付密码");
            fragmentTitleBar.setCloseShow(this.d ? false : true);
            fragmentTitleBar.setBackShow(false);
            ((TextView) view.findViewById(R.id.tv_setshorty_desc)).setText("设置6位数字密码，建议勿与银行卡密码相同");
        } else {
            fragmentTitleBar.setTitle("确认支付密码");
            fragmentTitleBar.setCloseShow(false);
            fragmentTitleBar.setBackShow(true);
            ((TextView) view.findViewById(R.id.tv_setshorty_desc)).setText("确认6位数字密码，建议勿与银行卡密码相同");
        }
        if (!UiUtil.isLandScape(getResources())) {
            this.c.showKeyBoard();
        }
        fragmentTitleBar.setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.psw.setpwd.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                c.this.dismissAllowingStateLoss();
                SetShortPwdController setShortPwdController = (SetShortPwdController) ControllerRouter.getController(RegisterCenter.SET_PWD);
                if (setShortPwdController != null) {
                    setShortPwdController.deal(new a(null, (SetPwdFragmentActivity) c.this.getActivity()));
                }
            }
        });
        fragmentTitleBar.setBackListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.psw.setpwd.c.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                c.this.b.a();
                c.this.c.clearPassword();
                c.this.a(c.this.getView());
            }
        });
    }
}
