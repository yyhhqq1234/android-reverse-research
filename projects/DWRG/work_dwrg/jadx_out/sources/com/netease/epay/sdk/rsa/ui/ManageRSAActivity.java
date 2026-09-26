package com.netease.epay.sdk.rsa.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.IParamsCallback;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.LongCommonButton;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.rsa.ManageRSAController;
import com.netease.epay.sdk.rsa.R;
import com.netease.epay.sdk.rsa.a;
import com.netease.epay.sdk.rsa.model.QueryBizPrecheck;
import com.netease.epay.sdk.rsa.model.QueryUserCertificate;
import com.netease.epay.sdk.rsa.model.UserCertificate;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ManageRSAActivity extends SdkActivity {
    View.OnClickListener a = new AnonymousClass2();
    private TextView b;
    private LongCommonButton c;
    private View d;
    private boolean e;

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_act_rsa_verify);
        a();
        if (!this.e) {
            b();
        }
    }

    private void a() {
        this.b = (TextView) findViewById(R.id.tvTitle);
        this.d = findViewById(R.id.btnDel);
        this.d.setOnClickListener(this.a);
        this.c = (LongCommonButton) findViewById(R.id.btnNext);
        this.c.setOnClickListener(this.a);
        this.e = false;
    }

    private void b() {
        if (a.b(this, BaseData.accountId)) {
            HttpClient.startRequest("query_user_certificate.htm", new JsonBuilder().build(), false, (FragmentActivity) this, (INetCallback) new NetCallback<QueryUserCertificate>() { // from class: com.netease.epay.sdk.rsa.ui.ManageRSAActivity.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, QueryUserCertificate queryUserCertificate) {
                    UserCertificate userCertificate = queryUserCertificate.userCertificate;
                    if (!userCertificate.userHasCertificate || !"activate".equals(userCertificate.certificateState)) {
                        a.c(ManageRSAActivity.this, BaseData.accountId);
                    }
                    ManageRSAActivity.this.a(userCertificate.userHasCertificate, userCertificate.certificateState);
                }
            });
        } else {
            a(false, (String) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str) {
        if (z) {
            this.b.setText(getString(R.string.epaysdk_already_verified));
            if ("activate".equals(str)) {
                this.d.setVisibility(0);
                this.c.setVisibility(8);
                return;
            } else {
                this.c.setText(getString(R.string.epaysdk_re_verified_cert));
                this.c.setVisibility(0);
                this.d.setVisibility(8);
                return;
            }
        }
        this.b.setText(getString(R.string.epaysdk_not_verified));
        this.c.setText(getString(R.string.epaysdk_verified_cert));
        this.c.setVisibility(0);
        this.d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null && intent.getExtras() != null) {
            this.e = intent.getExtras().getBoolean("keyStartInstall");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case 1:
                if (resultCode == -1) {
                    this.e = true;
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.netease.epay.sdk.rsa.ui.ManageRSAActivity$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements View.OnClickListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (v != ManageRSAActivity.this.c) {
                if (v == ManageRSAActivity.this.d) {
                    TwoButtonMessageFragment.getInstance(new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.rsa.ui.ManageRSAActivity.2.2
                        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                        public void rightClick() {
                        }

                        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                        public void leftClick() {
                            HttpClient.startRequest("uninstall_certificate.htm", new JsonBuilder().build(), false, (FragmentActivity) ManageRSAActivity.this, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.rsa.ui.ManageRSAActivity.2.2.1
                                @Override // com.netease.epay.sdk.base.network.INetCallback
                                public void success(FragmentActivity activity, Object o) {
                                    ToastUtil.show(ManageRSAActivity.this, ManageRSAActivity.this.getString(R.string.epaysdk_uninstall_success));
                                    ManageRSAActivity.this.a(false, (String) null);
                                    a.c(ManageRSAActivity.this, BaseData.accountId);
                                }
                            });
                        }

                        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                        public String getMsg() {
                            return ManageRSAActivity.this.getString(R.string.epaysdk_do_delete_certificate);
                        }

                        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                        public String getLeft() {
                            return ManageRSAActivity.this.getString(R.string.epaysdk_uninstall);
                        }

                        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                        public String getRight() {
                            return ManageRSAActivity.this.getString(R.string.epaysdk_cancel);
                        }
                    }).show(ManageRSAActivity.this.getSupportFragmentManager(), "twoButtonMsg");
                }
            } else {
                JSONObject build = new JsonBuilder().build();
                LogicUtil.jsonPut(build, "businessType", "installCertificate");
                HttpClient.startRequest("query_biz_precheck_list.htm", build, false, (FragmentActivity) ManageRSAActivity.this, (INetCallback) new NetCallback<QueryBizPrecheck>() { // from class: com.netease.epay.sdk.rsa.ui.ManageRSAActivity.2.1
                    @Override // com.netease.epay.sdk.base.network.INetCallback
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void success(FragmentActivity fragmentActivity, QueryBizPrecheck queryBizPrecheck) {
                        if (queryBizPrecheck.preCheckList != null && !queryBizPrecheck.preCheckList.isEmpty()) {
                            if (TextUtils.equals(queryBizPrecheck.preCheckList.get(0).checkType, "IDENTITY_NO&MOBILE_SMS")) {
                                Bundle bundle = new Bundle();
                                bundle.putString("IdentityVerificationActivity_bindMobile", queryBizPrecheck.preCheckList.get(0).bindMobile);
                                bundle.putString("IdentityVerificationActivity_accountName", queryBizPrecheck.preCheckList.get(0).accountName);
                                bundle.putString("IdentityVerificationActivity_businessType", "installCertificate");
                                if (queryBizPrecheck.preCheckList.size() > 1 && ManageRSAActivity.this.a(queryBizPrecheck.preCheckList)) {
                                    bundle.putBoolean(BaseConstants.RISK_TYEP_FACE, true);
                                }
                                JumpUtil.go2Activity(ManageRSAActivity.this, IdentityVerificationActivity.class, bundle, 1);
                                return;
                            }
                            if (TextUtils.equals(queryBizPrecheck.preCheckList.get(0).checkType, "FACE_RECOGNITION")) {
                                ControllerRouter.route(RegisterCenter.FACE, ManageRSAActivity.this, ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_VER_INSTALL_RSA, null), new ControllerCallback() { // from class: com.netease.epay.sdk.rsa.ui.ManageRSAActivity.2.1.1
                                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                                    public void dealResult(ControllerResult controllerResult) {
                                        Bundle bundle2 = new Bundle();
                                        if (controllerResult.isSuccess) {
                                            bundle2.putBoolean("keyStartInstall", true);
                                        }
                                        JumpUtil.go2Activity(ManageRSAActivity.this, ManageRSAActivity.class, bundle2);
                                    }
                                });
                            }
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.SdkActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        if (this.e) {
            this.e = false;
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(ArrayList<QueryBizPrecheck.PreCheck> arrayList) {
        Iterator<QueryBizPrecheck.PreCheck> it = arrayList.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().checkType, "FACE_RECOGNITION")) {
                return true;
            }
        }
        return false;
    }

    private void c() {
        HttpClient.startRequest("install_certificate.htm", new IParamsCallback() { // from class: com.netease.epay.sdk.rsa.ui.ManageRSAActivity.3
            @Override // com.netease.epay.sdk.base.network.IParamsCallback
            public JSONObject getJsonObject() {
                JSONObject build = new JsonBuilder().build();
                LogicUtil.jsonPut(build, "userPublicKey", a.a(ManageRSAActivity.this, BaseData.accountId));
                return build;
            }
        }, false, (FragmentActivity) this, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.rsa.ui.ManageRSAActivity.4
            @Override // com.netease.epay.sdk.base.network.INetCallback
            public void success(FragmentActivity activity, Object o) {
                ManageRSAController manageRSAController;
                ManageRSAActivity.this.a(true, "activate");
                ToastUtil.show(ManageRSAActivity.this, ManageRSAActivity.this.getString(R.string.epaysdk_validate_success));
                if (CoreData.bizType == 1 && (manageRSAController = (ManageRSAController) ControllerRouter.getController(RegisterCenter.RSA)) != null) {
                    manageRSAController.deal(new BaseEvent("000000", null, ManageRSAActivity.this));
                }
            }
        });
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void back(View view) {
        BaseEvent baseEvent;
        super.back(view);
        ManageRSAController manageRSAController = (ManageRSAController) ControllerRouter.getController(RegisterCenter.RSA);
        if (a.b(this, BaseData.accountId)) {
            baseEvent = new BaseEvent("000000", (String) null);
        } else {
            baseEvent = new BaseEvent(ErrorCode.FAIL_USER_ABORT_CODE, ErrorCode.FAIL_USER_ABORT_STRING);
        }
        if (manageRSAController != null) {
            baseEvent.activity = this;
            manageRSAController.deal(baseEvent);
        }
    }
}
