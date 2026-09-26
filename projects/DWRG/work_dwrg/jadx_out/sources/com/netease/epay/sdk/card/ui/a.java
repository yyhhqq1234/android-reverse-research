package com.netease.epay.sdk.card.ui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.model.SupportCardTypeObj;
import com.netease.epay.sdk.base.ui.ChooseCardBankFragment;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.bankinput.InputItemLayout;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.R;
import com.netease.epay.sdk.card.c.g;
import com.netease.epay.sdk.card.model.AddCardConfig;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import java.util.ArrayList;

/* compiled from: AddCard1Fragment.java */
/* loaded from: classes.dex */
public class a extends FullSdkFragment implements View.OnClickListener {
    TextView a;
    TextView b;
    Button c;
    private View d;
    private InputItemLayout e;
    private InputItemLayout f;
    private InterfaceC0014a g;
    private AddCardConfig h = null;

    /* compiled from: AddCard1Fragment.java */
    /* renamed from: com.netease.epay.sdk.card.ui.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0014a {
        void a(String str);

        void a(boolean z);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        KeyEvent.Callback activity = getActivity();
        if (activity != null && (activity instanceof f)) {
            this.h = ((f) activity).a();
        }
        if (this.h != null) {
            if (this.h.type == 4) {
                this.g = new g(this);
                return;
            } else {
                this.g = new com.netease.epay.sdk.card.c.b(this);
                return;
            }
        }
        AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
        if (addOrVerifyCardController != null) {
            addOrVerifyCardController.deal(new com.netease.epay.sdk.card.b.a(ErrorCode.CUSTOM_CODE.SDK_ERROR, getActivity()));
        }
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        this.d = inflater.inflate(R.layout.epaysdk_actv_addcard_num, (ViewGroup) null);
        return this.d;
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (this.g != null) {
            this.g.a(this.h == null || this.h.isShowNameFirstPage);
        }
    }

    public void a() {
        if (this.f != null) {
            LogicUtil.showSoftInput(this.f.getEditText());
        }
    }

    public void b() {
        if (this.h != null) {
            ((ActivityTitleBar) this.d.findViewById(R.id.atb)).setTitle(this.h.titleFirstPage);
            ((TextView) findV(R.id.tv_addcardnum_top_guide)).setText(this.h.tipsFirstPage);
            if (!this.h.isShowStepView) {
                findV(R.id.step_show_view).setVisibility(8);
            }
            this.c = (Button) findV(R.id.btn_addcardnum_next_c);
            this.c.setOnClickListener(this);
            EditBindButtonUtil editBindButtonUtil = new EditBindButtonUtil(this.c);
            this.e = (InputItemLayout) findV(R.id.input_name);
            this.f = (InputItemLayout) findV(R.id.input_card);
            if (!TextUtils.isEmpty(BaseData.userName) && this.h.isShowNameFirstPage) {
                this.e.setVisibility(0);
                this.e.setContent(BaseData.userName);
            }
            this.f.bindButton(editBindButtonUtil);
            this.b = (TextView) findV(R.id.tv_support_bank_tip);
            this.a = (TextView) findV(R.id.tv_support_bank_infos);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_addcardnum_next_c) {
            LogicUtil.hideSoftInput(getActivity());
            if (this.g != null) {
                this.c.setEnabled(false);
                this.g.a(this.f.getContent());
            } else {
                ToastUtil.show(getActivity(), "出错了");
            }
        }
    }

    public void a(ArrayList<SupportCardTypeObj> arrayList, final String str) {
        UiUtil.makeSupportBanksShortDisplay(arrayList, this.a, this.b, new ClickableSpan() { // from class: com.netease.epay.sdk.card.ui.a.1
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds) {
                ds.setColor(SdkConfig.getMainColor());
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View widget) {
                ChooseCardBankFragment.getInstance_ShowMode(str).show(a.this.getFragmentManager(), "chooseCardBank");
            }
        });
    }

    public void a(String str) {
        this.f.setHint(str);
    }

    public void a(boolean z) {
        this.c.setEnabled(z);
    }

    public void b(String str) {
        this.e.setVisibility(!TextUtils.isEmpty(str) ? 0 : 8);
        this.e.setContent(str);
    }
}
