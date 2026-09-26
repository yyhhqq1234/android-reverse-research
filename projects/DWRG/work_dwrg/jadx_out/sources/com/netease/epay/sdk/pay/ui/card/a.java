package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.model.SupportCardTypeObj;
import com.netease.epay.sdk.base.ui.ChooseCardBankFragment;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.ui.TitleMessageFragment;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.bankinput.InputItemLayout;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.R;
import java.util.ArrayList;

/* compiled from: AddCard1Fragment.java */
/* loaded from: classes.dex */
public class a extends FullSdkFragment implements View.OnClickListener {
    TextView a;
    TextView b;
    TextView c;
    Button d;
    private View e;
    private InputItemLayout f;
    private InputItemLayout g;
    private e h;
    private TitleMessageFragment i;
    private String j = "promptlimit";

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.h = new e(this);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        this.e = inflater.inflate(R.layout.epaysdk_frag_addcard1, (ViewGroup) null);
        return this.e;
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (this.h != null) {
            this.h.a(true);
        }
    }

    public void a() {
        ((ActivityTitleBar) this.e.findViewById(R.id.atb)).setTitle("添加银行卡");
        if (getArguments() != null) {
            RelativeLayout relativeLayout = (RelativeLayout) this.e.findViewById(R.id.llAdvertisement);
            relativeLayout.setVisibility(getArguments().getBoolean(PayConstants.HAS_MARKET) ? 0 : 8);
            ((TextView) relativeLayout.findViewById(R.id.tvDesc)).setText(getArguments().getString("title"));
            final String string = getArguments().getString("desc");
            if (TextUtils.isEmpty(string)) {
                relativeLayout.findViewById(R.id.tvDetail).setVisibility(8);
            } else {
                relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.card.a.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        LogicUtil.showFragmentInActivity(TitleMessageFragment.getInstance("活动详情", string), a.this.getActivity());
                    }
                });
            }
        }
        this.a = (TextView) findV(R.id.tv_addcardnum_top_guide);
        this.a.setText("请添加持卡人本人的银行卡");
        this.f = (InputItemLayout) findV(R.id.input_name);
        this.g = (InputItemLayout) findV(R.id.input_card);
        this.d = (Button) findV(R.id.btn_addcardnum_next_c);
        this.d.setOnClickListener(this);
        new EditBindButtonUtil(this.d).addEditText(this.g.getEditText());
        if (!TextUtils.isEmpty(BaseData.userName)) {
            this.f.setVisibility(0);
            this.f.setContent(BaseData.userName);
        }
        this.c = (TextView) findV(R.id.tv_support_bank_tip);
        this.b = (TextView) findV(R.id.tv_support_bank_infos);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.btn_addcardnum_next_c) {
            LogicUtil.hideSoftInput(getActivity());
            if (this.h != null) {
                this.d.setEnabled(false);
                this.h.a(this.g.getContent());
            } else {
                ToastUtil.show(getActivity(), "出错了");
            }
        }
    }

    public void a(String str) {
        d(str);
        this.i.show(getActivity().getSupportFragmentManager(), this.j);
    }

    private void d(String str) {
        if (this.i == null) {
            this.i = (TitleMessageFragment) getActivity().getSupportFragmentManager().findFragmentByTag(this.j);
            if (this.i == null) {
                this.i = TitleMessageFragment.getInstance(null, str, false, true, new TitleMessageFragment.ITitleMsgCallback() { // from class: com.netease.epay.sdk.pay.ui.card.a.2
                    @Override // com.netease.epay.sdk.base.ui.TitleMessageFragment.ITitleMsgCallback
                    public void doneClick() {
                        if (a.this.getActivity() instanceof CardPayActivity) {
                            ((CardPayActivity) a.this.getActivity()).exitNotify(ErrorCode.CUSTOM_CODE.USER_ABORT);
                        }
                    }
                });
            }
        }
    }

    public void a(ArrayList<SupportCardTypeObj> arrayList, final String str) {
        UiUtil.makeSupportBanksShortDisplay(arrayList, this.b, this.c, new ClickableSpan() { // from class: com.netease.epay.sdk.pay.ui.card.a.3
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

    public void b(String str) {
        this.g.setHint(str);
    }

    public void a(boolean z) {
        this.d.setEnabled(z);
    }

    public void c(String str) {
        this.f.setVisibility(!TextUtils.isEmpty(str) ? 0 : 8);
        this.f.setContent(str);
    }

    public void b() {
        if (this.g != null) {
            LogicUtil.showSoftInput(this.g.getEditText());
        }
    }
}
