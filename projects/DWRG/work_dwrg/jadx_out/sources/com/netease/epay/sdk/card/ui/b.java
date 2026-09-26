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
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.BankTypeChangedEvent;
import com.netease.epay.sdk.base.model.BankPayGateInfo;
import com.netease.epay.sdk.base.model.SupportBanks;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.CreditCardDatePickDialog;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.EventBusUtil;
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
import com.netease.epay.sdk.card.c.h;
import com.netease.epay.sdk.card.model.AddCardConfig;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;

/* compiled from: AddCard2Fragment.java */
/* loaded from: classes.dex */
public class b extends FullSdkFragment implements View.OnClickListener {
    InputLayout a;
    public InputItemLayout b;
    private CheckBox e;
    private AgreementTextView f;
    private a g;
    private TextView h;
    boolean d = false;
    Button c;
    private EditBindButtonUtil i = new EditBindButtonUtil(this.c);
    private AddCardConfig j = null;

    /* compiled from: AddCard2Fragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(SupportBanks supportBanks);

        void a(String str);

        void b();

        void c();
    }

    public static b a(boolean z, String str, String str2, String str3, String str4, String str5) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(BaseConstants.INTENT_ADDCARD_IS_CREDIT, z);
        bundle.putString(BaseConstants.INTENT_ADDCARD_BANK_ID, str);
        bundle.putString(BaseConstants.INTENT_ADDCARD_CARD_NUMBER, str2);
        bundle.putString(BaseConstants.INTENT_ADDCARD_CARD_TYPE, str3);
        bundle.putString(BaseConstants.INTENT_ADDCARD_SUPPORT_BANKS, str5);
        bundle.putString(BaseConstants.INTENT_ADDCARD_ACCOUNTNAME, str4);
        b bVar = new b();
        bVar.setArguments(bundle);
        return bVar;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        KeyEvent.Callback activity = getActivity();
        if (activity != null && (activity instanceof f)) {
            this.j = ((f) activity).a();
        }
        if (this.j != null) {
            if (this.j.type == 4) {
                this.g = new h(this);
            } else {
                this.g = new com.netease.epay.sdk.card.c.f(this);
            }
            EventBusUtil.getSingleton().register(this);
            return;
        }
        AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
        if (addOrVerifyCardController != null) {
            addOrVerifyCardController.deal(new com.netease.epay.sdk.card.b.a(ErrorCode.CUSTOM_CODE.SDK_ERROR, getActivity()));
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.epaysdk_actv_addcard_second, (ViewGroup) null);
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        b();
        if (getArguments() != null) {
            a(getArguments().getString(BaseConstants.INTENT_ADDCARD_BANK_ID));
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            if (this.g != null) {
                this.g.c();
            }
        } else {
            JSONObject build = AddOrVerifyCardController.a().build();
            JSONObject jSONObject = new JSONObject();
            LogicUtil.jsonPut(jSONObject, "bankId", str);
            LogicUtil.jsonPut(build, "payGateInfo", jSONObject);
            HttpClient.startRequest(BaseConstants.getPaygateInfo, build, false, getActivity(), (INetCallback) new NetCallback<BankPayGateInfo>() { // from class: com.netease.epay.sdk.card.ui.b.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, BankPayGateInfo bankPayGateInfo) {
                    b.this.d = bankPayGateInfo.payGateInfo.isNeedCvv2;
                    b.this.f.setAgreementList(bankPayGateInfo.signAgreementInfos);
                    if (b.this.g != null) {
                        b.this.g.c();
                    }
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    b.this.d = true;
                    if (b.this.g != null) {
                        b.this.g.c();
                    }
                    return true;
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBusUtil.getSingleton().unregister(this);
    }

    private void b() {
        if (this.j != null) {
            ((ActivityTitleBar) this.rootView.findViewById(R.id.atb)).setTitle(this.j.titleSecondPage);
            if (!this.j.isShowStepView) {
                findV(R.id.step_show_view).setVisibility(8);
            }
            this.h = (TextView) findV(R.id.tv_addcreditcard_top_tips);
            this.a = (InputLayout) findV(R.id.inputLayout);
            this.b = (InputItemLayout) findV(R.id.input_phone);
            this.f = (AgreementTextView) findV(R.id.tvAgreement);
            this.c = (Button) findV(R.id.btn_next);
            this.c.setOnClickListener(this);
            this.i.setButton(this.c);
            this.e = (CheckBox) findV(R.id.cb_addcard_agree_pact);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_next) {
            if (!this.e.isChecked()) {
                ToastUtil.show(getActivity(), "请阅读并同意服务协议");
            } else if (this.g != null) {
                this.c.setEnabled(false);
                this.g.a();
            } else {
                ToastUtil.show(getActivity(), "出错了");
            }
        }
    }

    public void a(boolean z) {
        this.c.setEnabled(z);
    }

    public void a(boolean z, String str, String str2) {
        this.a.clear();
        this.i.clearEditTexts();
        this.i.addEditText(this.b.getEditText());
        InputItem createItem = this.a.createItem(3);
        createItem.listener = new View.OnClickListener() { // from class: com.netease.epay.sdk.card.ui.b.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (b.this.g != null) {
                    b.this.g.b();
                } else {
                    ToastUtil.show(b.this.getActivity(), "出错了");
                }
            }
        };
        createItem.cacheContent = str2;
        this.a.add(createItem);
        if (this.j.isAlwaysShowNameInputSecondPage || TextUtils.isEmpty(str)) {
            this.a.add(4);
            this.a.add(2);
        }
        if (z) {
            if (this.d) {
                this.a.add(5);
            }
            InputItem createItem2 = this.a.createItem(6);
            if (createItem2 != null) {
                createItem2.listener = new View.OnClickListener() { // from class: com.netease.epay.sdk.card.ui.b.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CreditCardDatePickDialog.show(b.this.getActivity(), new CreditDatePickListener() { // from class: com.netease.epay.sdk.card.ui.b.3.1
                            @Override // com.netease.epay.sdk.base.view.listener.CreditDatePickListener
                            public void onDateSet(String mmyy, String yymm) {
                                b.this.a.getItem(6).setContent(mmyy);
                                if (b.this.g != null) {
                                    b.this.g.a(yymm);
                                }
                            }
                        });
                    }
                };
            }
            this.a.add(createItem2);
        }
        if (!TextUtils.isEmpty(str2) && this.h != null) {
            this.h.setText("请添加持卡人本人的银行卡");
        }
        this.a.inflate();
        this.a.bindButton(this.i);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(BankTypeChangedEvent event) {
        if (event.card != null) {
            if (this.g != null) {
                this.g.a(event.card);
            } else {
                ToastUtil.show(getActivity(), "出错了");
            }
        }
    }

    public InputLayout a() {
        return this.a;
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment
    public boolean backKeyAction() {
        if (this.f == null || !this.f.isActionSheetShow()) {
            return super.backKeyAction();
        }
        this.f.disMissSheet();
        return true;
    }
}
