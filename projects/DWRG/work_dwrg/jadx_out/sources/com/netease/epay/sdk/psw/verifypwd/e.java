package com.netease.epay.sdk.psw.verifypwd;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.psw.R;
import com.netease.epay.sdk.psw.VerifyPwdController;

/* compiled from: VerifyPwdBaseFragment.java */
/* loaded from: classes.dex */
public abstract class e extends SdkFragment {
    private a a;

    /* compiled from: VerifyPwdBaseFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(String str);
    }

    abstract int a();

    public abstract void b();

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(a(), (ViewGroup) null);
        ((FragmentTitleBar) inflate.findViewById(R.id.ftb)).setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.psw.verifypwd.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                e.this.dismissAllowingStateLoss();
                VerifyPwdController verifyPwdController = (VerifyPwdController) ControllerRouter.getController(RegisterCenter.VERIFY_PWD);
                if (verifyPwdController != null) {
                    verifyPwdController.deal(new f(ErrorCode.CUSTOM_CODE.USER_ABORT, (VerifyPwdActivity) e.this.getActivity()));
                }
            }
        });
        int i = ((VerifyPwdActivity) getActivity()).a;
        if (i == 2) {
            this.a = new b(this);
        } else if (i == 1) {
            this.a = new c(this);
        } else if (i == 3) {
            this.a = new com.netease.epay.sdk.psw.verifypwd.a(this);
        }
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        if (this.a != null) {
            this.a.a(str);
        }
    }
}
