package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
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
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.CreditCardDatePickDialog;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.AgreementTextView;
import com.netease.epay.sdk.base.view.bankinput.InputItem;
import com.netease.epay.sdk.base.view.bankinput.InputItemLayout;
import com.netease.epay.sdk.base.view.bankinput.InputLayout;
import com.netease.epay.sdk.base.view.listener.CreditDatePickListener;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;

/* compiled from: AddCard2Fragment.java */
/* loaded from: classes.dex */
public class b extends FullSdkFragment implements View.OnClickListener {
    InputLayout a;
    public InputItemLayout b;
    private CheckBox f;
    private AgreementTextView g;
    private i h;
    private TextView i;
    String d = null;
    boolean e = false;
    Button c;
    private EditBindButtonUtil j = new EditBindButtonUtil(this.c);

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
        this.h = new i(this);
        EventBusUtil.getSingleton().register(this);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.epaysdk_actv_addcard_second, (ViewGroup) null);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            if (this.h != null) {
                this.h.a();
            }
        } else {
            JSONObject build = new JsonBuilder().build();
            JSONObject jSONObject = new JSONObject();
            LogicUtil.jsonPut(jSONObject, "bankId", str);
            LogicUtil.jsonPut(build, "payGateInfo", jSONObject);
            LogicUtil.jsonPut(build, "bizType", "order");
            HttpClient.startRequest(BaseConstants.getPaygateInfo, build, false, getActivity(), (INetCallback) new NetCallback<BankPayGateInfo>() { // from class: com.netease.epay.sdk.pay.ui.card.b.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, BankPayGateInfo bankPayGateInfo) {
                    b.this.e = bankPayGateInfo.payGateInfo.isNeedCvv2;
                    b.this.g.setAgreementList(bankPayGateInfo.signAgreementInfos);
                    if (b.this.h != null) {
                        b.this.h.a();
                    }
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    b.this.e = true;
                    if (b.this.h != null) {
                        b.this.h.a();
                    }
                    return true;
                }
            });
        }
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        b();
        if (getArguments() != null) {
            a(getArguments().getString(BaseConstants.INTENT_ADDCARD_BANK_ID));
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBusUtil.getSingleton().unregister(this);
    }

    private void b() {
        ((ActivityTitleBar) this.rootView.findViewById(R.id.atb)).setTitle("填写银行卡信息");
        this.i = (TextView) findV(R.id.tv_addcreditcard_top_tips);
        this.a = (InputLayout) findV(R.id.inputLayout);
        this.b = (InputItemLayout) findV(R.id.input_phone);
        this.g = (AgreementTextView) findV(R.id.tvAgreement);
        this.c = (Button) findV(R.id.btn_next);
        this.c.setOnClickListener(this);
        this.j.setButton(this.c);
        this.f = (CheckBox) findV(R.id.cb_addcard_agree_pact);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_next) {
            if (!this.f.isChecked()) {
                ToastUtil.show(getActivity(), "请阅读并同意服务协议");
            } else if (this.h != null) {
                this.c.setEnabled(false);
                this.h.c();
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
        this.j.clearEditTexts();
        this.j.addEditText(this.b.getEditText());
        InputItem createItem = this.a.createItem(3);
        createItem.listener = new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.card.b.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (b.this.h != null) {
                    b.this.h.b();
                } else {
                    ToastUtil.show(b.this.getActivity(), "出错了");
                }
            }
        };
        createItem.cacheContent = str2;
        this.a.add(createItem);
        if (TextUtils.isEmpty(str)) {
            this.a.add(4);
            this.a.add(2);
        }
        if (z) {
            if (this.e) {
                this.a.add(5);
            }
            InputItem createItem2 = this.a.createItem(6);
            if (createItem2 != null) {
                createItem2.listener = new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.card.b.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CreditCardDatePickDialog.show(b.this.getActivity(), new CreditDatePickListener() { // from class: com.netease.epay.sdk.pay.ui.card.b.3.1
                            @Override // com.netease.epay.sdk.base.view.listener.CreditDatePickListener
                            public void onDateSet(String mmyy, String yymm) {
                                b.this.a.getItem(6).setContent(mmyy);
                                b.this.d = yymm;
                                if (b.this.h != null) {
                                    b.this.h.a(b.this.d);
                                }
                            }
                        });
                    }
                };
            }
            this.a.add(createItem2);
        }
        if (!TextUtils.isEmpty(str2) && this.i != null) {
            this.i.setText("请添加持卡人本人的银行卡");
        }
        this.a.inflate();
        this.a.bindButton(this.j);
    }

    @Subscribe(threadMode = ThreadMode.POSTING)
    public void onEvent(BankTypeChangedEvent event) {
        if (event.card != null) {
            if (this.h != null) {
                this.h.a(event.card);
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
        if (this.g == null || !this.g.isActionSheetShow()) {
            return super.backKeyAction();
        }
        this.g.disMissSheet();
        return true;
    }
}
