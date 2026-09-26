package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.TextView;
import com.netease.epay.sdk.base.ui.NoSmsFragment;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.base.util.LogicUtil;

/* loaded from: classes.dex */
public class SmsErrorTextView extends TextView implements View.OnClickListener {
    private boolean isBankSend;

    public SmsErrorTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.isBankSend = false;
        setOnClickListener(this);
    }

    public void setIsBankSend(boolean isBankSend) {
        this.isBankSend = isBankSend;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (getContext() instanceof SdkActivity) {
            LogicUtil.showFragmentWithHide(NoSmsFragment.getInstance(this.isBankSend), (SdkActivity) getContext(), true);
        } else if (getContext() instanceof ContextThemeWrapper) {
            LogicUtil.showFragmentWithHide(NoSmsFragment.getInstance(this.isBankSend), (SdkActivity) ((ContextThemeWrapper) getContext()).getBaseContext(), true);
        } else {
            LogUtil.e("SmsErrorText.getContext is not SDKActivity.");
        }
    }
}
