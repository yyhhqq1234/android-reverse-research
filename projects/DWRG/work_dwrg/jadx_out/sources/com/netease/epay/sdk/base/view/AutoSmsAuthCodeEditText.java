package com.netease.epay.sdk.base.view;

import android.R;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.AttributeSet;
import android.widget.EditText;
import com.netease.epay.sdk.base.util.SmsObserver;

/* loaded from: classes.dex */
public class AutoSmsAuthCodeEditText extends EditText {
    SmsObserver smsObserver;

    public AutoSmsAuthCodeEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.smsObserver = null;
        this.smsObserver = new SmsObserver(new Handler() { // from class: com.netease.epay.sdk.base.view.AutoSmsAuthCodeEditText.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                if (msg.obj != null && (msg.obj instanceof String)) {
                    AutoSmsAuthCodeEditText.this.setText((String) msg.obj);
                }
            }
        }, context);
        setHint(Html.fromHtml("<small>请输入短信验证码<small>"));
    }

    public AutoSmsAuthCodeEditText(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.editTextStyle);
    }

    public AutoSmsAuthCodeEditText(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.smsObserver != null) {
            this.smsObserver.registerSMSObserver();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.smsObserver != null) {
            this.smsObserver.unregisterSMSObserver();
        }
    }
}
