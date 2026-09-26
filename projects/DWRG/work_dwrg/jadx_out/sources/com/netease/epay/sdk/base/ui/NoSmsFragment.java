package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.util.LogicUtil;

/* loaded from: classes.dex */
public class NoSmsFragment extends SdkFragment implements View.OnClickListener {
    private final String BANK_SEND_TEXT = "1.请确认当前是否使用银行预留的手机号码\n2.请检查短信是否被手机安全软件拦截\n3.若预留手机已停用，请联系银行客服咨询\n4.若您已联系银行更换手机号码，请重新绑定该银行卡再使用\n5.获取更多帮助，请拨打客服电话\n" + BaseData.getSerivcePhone();
    private final String NOT_BANK_SEND_TEXT = "1.请检查短信是否被手机安全软件拦截\n2.若手机已停用，请至网易支付电脑端epay.163.com更换手机号码\n3.获取更多帮助，请拨打客服电话\n" + BaseData.getSerivcePhone();

    public static NoSmsFragment getInstance(boolean isBankSend) {
        NoSmsFragment noSmsFragment = new NoSmsFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isBankSend", isBankSend);
        noSmsFragment.setArguments(bundle);
        return noSmsFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_no_sms, (ViewGroup) null);
        if (getArguments() != null && getArguments().getBoolean("isBankSend")) {
            ((TextView) inflate.findViewById(R.id.tvContent)).setText(this.BANK_SEND_TEXT);
        } else {
            inflate.findViewById(R.id.tvHint).setVisibility(8);
            ((TextView) inflate.findViewById(R.id.tvContent)).setText(this.NOT_BANK_SEND_TEXT);
        }
        TextView textView = (TextView) inflate.findViewById(R.id.tvContent);
        inflate.findViewById(R.id.btn_nosms_confirm_c).setOnClickListener(this);
        textView.setText(String.format(textView.getText().toString(), BaseData.getSerivcePhone()));
        textView.setLinkTextColor(SdkConfig.getMainColor());
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.btn_nosms_confirm_c) {
            dismissAllowingStateLoss();
            LogicUtil.reshowAllFragment(getActivity());
        }
    }
}
