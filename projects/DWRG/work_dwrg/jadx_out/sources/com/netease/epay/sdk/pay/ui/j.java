package com.netease.epay.sdk.pay.ui;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.download.Const;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;

/* compiled from: PayFailFragment.java */
/* loaded from: classes.dex */
public class j extends SdkFragment implements View.OnClickListener {
    public static j a(Bundle bundle) {
        j jVar = new j();
        jVar.setArguments(bundle);
        return jVar;
    }

    @Override // com.netease.epay.sdk.base.ui.SdkFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.epaysdk_DialogTranslucent);
        setCancelable(true);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_pay_fail, (ViewGroup) null);
        if (getArguments() != null) {
            ((TextView) inflate.findViewById(R.id.tv_pay_discount)).setText("￥" + getArguments().getString("amount"));
            ((TextView) inflate.findViewById(R.id.tv_bank)).setText(getArguments().getString("bank") + " 尾号" + getArguments().getString("cardNo"));
            ((TextView) inflate.findViewById(R.id.tv_time)).setText(getArguments().getString(Const.KEY_TIME));
        }
        inflate.findViewById(R.id.tv_finish).setOnClickListener(this);
        inflate.findViewById(R.id.iv_frag_close_c).setOnClickListener(this);
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.tv_finish || v.getId() == R.id.iv_frag_close_c) {
            a();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        a();
    }

    private void a() {
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null) {
            String str = "";
            if (getArguments() != null) {
                str = getArguments().getString("msg");
            }
            payController.deal(new BaseEvent(PayConstants.PAY_BANK_FAIL, str, getActivity()));
        }
        dismissAllowingStateLoss();
    }
}
