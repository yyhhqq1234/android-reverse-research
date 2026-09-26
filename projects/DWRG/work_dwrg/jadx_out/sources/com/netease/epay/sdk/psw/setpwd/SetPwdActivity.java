package com.netease.epay.sdk.psw.setpwd;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.gridpwd.EpaySdkPasswordChangedListener;
import com.netease.epay.sdk.base.view.gridpwd.GridPasswordView;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.psw.R;
import com.netease.epay.sdk.psw.SetShortPwdController;

/* loaded from: classes.dex */
public class SetPwdActivity extends SdkActivity implements View.OnClickListener {
    private Button b;
    private TextView c;
    private ActivityTitleBar d;
    private GridPasswordView f;
    private String g;
    private String h;
    private b e = new b();
    EpaySdkPasswordChangedListener a = new EpaySdkPasswordChangedListener() { // from class: com.netease.epay.sdk.psw.setpwd.SetPwdActivity.1
        @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
        public void onMaxLength(String psw) {
            if (SetPwdActivity.this.e.b()) {
                SetPwdActivity.this.e.a(psw);
                SetPwdActivity.this.c.setText("请确认6位数字支付密码");
                SetPwdActivity.this.d.setTitle("确定支付密码");
                SetPwdActivity.this.f.clearPassword();
                SetPwdActivity.this.f.showKeyBoard();
                SetPwdActivity.this.b.setVisibility(0);
            }
        }
    };

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_reset_pwd);
        if (getIntent() != null && getIntent().getExtras() != null) {
            this.g = getIntent().getExtras().getString(BaseConstants.KEY_SPP_EXIT_WARMING_INFOS);
            this.h = getIntent().getExtras().getString(BaseConstants.KEY_QVHUA_BTN_STRING);
        }
        this.d = (ActivityTitleBar) findViewById(R.id.atb);
        this.c = (TextView) findViewById(R.id.tv_actvresetpwd_top_guide_x);
        this.f = (GridPasswordView) findViewById(R.id.et_setshorty_pwd);
        this.f.setOnPasswordChangedListener(this.a);
        this.b = (Button) findViewById(R.id.btn_actvresetpwd_next_c);
        if (this.h != null && this.h.length() > 0) {
            this.b.setText(this.h);
        }
        this.b.setOnClickListener(this);
        if (!UiUtil.isLandScape(getResources())) {
            this.f.showKeyBoard();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.b) {
            String passWord = this.f.getPassWord(this.a.randomKey16Byte());
            if (passWord == null || passWord.length() < 6) {
                ToastUtil.show(this, "请输入6位数字支付密码");
            } else if (!this.e.b(passWord)) {
                ToastUtil.show(this, "两次输入的密码不一样，请重新输入");
                this.f.clearPassword();
            } else {
                a(DigestUtil.encode(passWord));
            }
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void back(View view) {
        if (!this.e.b()) {
            this.e.a();
            this.f.clearPassword();
            this.c.setText("请设置6位数字支付密码，建议勿与银行卡取款密码相同");
            this.d.setTitle("设置支付密码");
            this.b.setVisibility(8);
            return;
        }
        if (TextUtils.isEmpty(this.g)) {
            a((String) null);
        } else {
            TwoButtonMessageFragment.getInstance(new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.psw.setpwd.SetPwdActivity.2
                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void rightClick() {
                    SetPwdActivity.this.a((String) null);
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void leftClick() {
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getMsg() {
                    return SetPwdActivity.this.g;
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getLeft() {
                    return "否";
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getRight() {
                    return "是";
                }
            }).show(getSupportFragmentManager(), "exitConfirm");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        SetShortPwdController setShortPwdController = (SetShortPwdController) ControllerRouter.getController(RegisterCenter.SET_PWD);
        if (setShortPwdController != null) {
            setShortPwdController.deal(new a(str, this));
        }
    }
}
