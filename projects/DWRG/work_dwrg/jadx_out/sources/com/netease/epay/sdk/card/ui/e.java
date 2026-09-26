package com.netease.epay.sdk.card.ui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.model.AddCardInfo;
import com.netease.epay.sdk.base.model.BankPayGateInfo;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.CreditCardDatePickDialog;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.AgreementTextView;
import com.netease.epay.sdk.base.view.bankinput.InputItem;
import com.netease.epay.sdk.base.view.bankinput.InputItemLayout;
import com.netease.epay.sdk.base.view.bankinput.InputLayout;
import com.netease.epay.sdk.base.view.listener.CreditDatePickListener;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.R;
import com.netease.epay.sdk.card.model.AddCardConfig;
import org.json.JSONObject;

/* compiled from: ForgetPwdValidateFragment.java */
/* loaded from: classes.dex */
public class e extends FullSdkFragment implements View.OnClickListener {
    private Button a;
    private InputLayout b;
    private InputItemLayout c;
    private boolean d;
    private String e;
    private String f;
    private String g;
    private CheckBox h;
    private AgreementTextView i;
    private String j;
    private boolean k = false;
    private EditBindButtonUtil l;
    private AddCardConfig m;

    public static e a(String str, String str2, boolean z, String str3, String str4) {
        Bundle bundle = new Bundle();
        bundle.putString(BaseConstants.INTENT_ADDCARD_BANK_ID, str);
        bundle.putString(BaseConstants.INTENT_ADDCARD_QUICKPAYID, str2);
        bundle.putBoolean(BaseConstants.INTENT_ADDCARD_IS_CREDIT, z);
        bundle.putString(BaseConstants.INTENT_ADDCARD_CARD_TYPE, str3);
        bundle.putString(BaseConstants.INTENT_ADDCARD_ACCOUNTNAME, str4);
        e eVar = new e();
        eVar.setArguments(bundle);
        return eVar;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        KeyEvent.Callback activity = getActivity();
        if (activity != null && (activity instanceof f)) {
            this.m = ((f) activity).a();
        }
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.epaysdk_actv_forget_pwd_validate, (ViewGroup) null);
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        String str;
        super.onViewCreated(view, savedInstanceState);
        ((ActivityTitleBar) this.rootView.findViewById(R.id.atb)).setTitle(this.m != null ? this.m.titleSecondPage : "忘记支付密码");
        Bundle arguments = getArguments();
        if (arguments == null) {
            str = null;
        } else {
            this.d = arguments.getBoolean(BaseConstants.INTENT_ADDCARD_IS_CREDIT, false);
            this.f = arguments.getString(BaseConstants.INTENT_ADDCARD_BANK_ID);
            this.g = arguments.getString(BaseConstants.INTENT_ADDCARD_QUICKPAYID);
            String string = arguments.getString(BaseConstants.INTENT_ADDCARD_CARD_TYPE);
            this.j = arguments.getString(BaseConstants.INTENT_ADDCARD_ACCOUNTNAME);
            str = string;
        }
        this.a = (Button) findV(R.id.btn_next);
        this.a.setOnClickListener(this);
        this.l = new EditBindButtonUtil(this.a);
        ((InputItemLayout) findV(R.id.input_card)).setContent(str);
        this.b = (InputLayout) findV(R.id.inputLayout);
        this.c = (InputItemLayout) findV(R.id.input_phone);
        this.i = (AgreementTextView) findV(R.id.tvAgreement);
        this.h = (CheckBox) findV(R.id.cb_addcard_agree_pact);
        b();
        a();
    }

    public void a() {
        JSONObject build = AddOrVerifyCardController.a().build();
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "bankId", this.f);
        LogicUtil.jsonPut(build, "payGateInfo", jSONObject);
        HttpClient.startRequest(BaseConstants.getPaygateInfo, build, false, getActivity(), (INetCallback) new NetCallback<BankPayGateInfo>() { // from class: com.netease.epay.sdk.card.ui.e.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, BankPayGateInfo bankPayGateInfo) {
                e.this.k = bankPayGateInfo.payGateInfo.isNeedCvv2;
                e.this.i.setAgreementList(bankPayGateInfo.signAgreementInfos);
                e.this.b();
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                e.this.k = true;
                e.this.b();
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.b.clear();
        this.l.clearEditTexts();
        this.l.addEditText(this.c.getEditText());
        InputItem createItem = this.b.createItem(4);
        String str = TextUtils.isEmpty(BaseData.userName) ? this.j : BaseData.userName;
        if (str != null && str.length() > 0) {
            createItem.hint = ("*" + str.substring(str.length() - 1)) + " ( 请输入完整姓名 )";
        }
        this.b.add(createItem);
        this.b.add(2);
        if (this.d) {
            if (this.k) {
                this.b.add(5);
            }
            InputItem createItem2 = this.b.createItem(6);
            createItem2.listener = new View.OnClickListener() { // from class: com.netease.epay.sdk.card.ui.e.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CreditCardDatePickDialog.show(e.this.getActivity(), new CreditDatePickListener() { // from class: com.netease.epay.sdk.card.ui.e.2.1
                        @Override // com.netease.epay.sdk.base.view.listener.CreditDatePickListener
                        public void onDateSet(String mmyy, String yymm) {
                            e.this.b.getItem(6).setContent(mmyy);
                            e.this.e = yymm;
                        }
                    });
                }
            };
            this.b.add(createItem2);
        }
        this.b.inflate();
        this.b.bindButton(this.l);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.a) {
            if (!this.h.isChecked()) {
                ToastUtil.show(getActivity(), "请阅读并同意服务协议");
                return;
            }
            this.a.setEnabled(false);
            JSONObject build = AddOrVerifyCardController.a().build();
            LogicUtil.jsonPut(build, "bankId", this.f);
            LogicUtil.jsonPut(build, "quickPayId", this.g);
            LogicUtil.jsonPut(build, "mobilePhone", this.c.getContent());
            LogicUtil.jsonPut(build, "certNo", this.b.getContent(2));
            LogicUtil.jsonPut(build, "cardAccountName", this.b.getContent(4));
            if (this.d) {
                LogicUtil.jsonPut(build, "validDate", this.e);
                LogicUtil.jsonPut(build, "cvv2", this.b.getContent(5));
            }
            HttpClient.startRequest("send_validate_quickPay_authcode.htm", build, false, getActivity(), (INetCallback) new NetCallback<AddCardInfo>() { // from class: com.netease.epay.sdk.card.ui.e.3
                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public void onResponseArrived() {
                    e.this.a.setEnabled(true);
                }

                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, AddCardInfo addCardInfo) {
                    e.this.addNextFragment2Activity(c.a(3, e.this.f, null, e.this.c.getContent(), e.this.b.getContent(2), e.this.b.getContent(4), e.this.e, e.this.b.getContent(5), e.this.g, addCardInfo.attach, null, false));
                }
            });
        }
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment
    public boolean backKeyAction() {
        if (this.i == null || !this.i.isActionSheetShow()) {
            return super.backKeyAction();
        }
        this.i.disMissSheet();
        return true;
    }
}
