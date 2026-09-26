package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.View;
import com.netease.environment.config.SdkConstants;

/* loaded from: classes.dex */
public class SendSmsButton extends StrokeColorButton implements View.OnClickListener {
    private CountDownTimer countDownTimer;
    private String initString;
    public boolean isClick;
    private ISendSmsListener listener;

    /* loaded from: classes.dex */
    public interface ISendSmsListener {
        void sendSms();
    }

    public SendSmsButton(Context context) {
        super(context);
        this.isClick = false;
        this.initString = "获取验证码";
        this.countDownTimer = new CountDownTimer(SdkConstants.A_MUNITE, 1000L) { // from class: com.netease.epay.sdk.base.view.SendSmsButton.1
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                SendSmsButton.this.setText("重新获取(" + (millisUntilFinished / 1000) + "s)");
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                SendSmsButton.this.setEnabled(true);
                SendSmsButton.this.setText(SendSmsButton.this.initString);
            }
        };
        init();
    }

    public SendSmsButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.isClick = false;
        this.initString = "获取验证码";
        this.countDownTimer = new CountDownTimer(SdkConstants.A_MUNITE, 1000L) { // from class: com.netease.epay.sdk.base.view.SendSmsButton.1
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                SendSmsButton.this.setText("重新获取(" + (millisUntilFinished / 1000) + "s)");
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                SendSmsButton.this.setEnabled(true);
                SendSmsButton.this.setText(SendSmsButton.this.initString);
            }
        };
        init();
    }

    private void init() {
        setText(this.initString);
        setOnClickListener(this);
    }

    public void setInitText(String initText) {
        this.initString = initText;
        setText(initText);
    }

    public void setListener(ISendSmsListener listener) {
        this.listener = listener;
    }

    public void sendSms(boolean isTrueSend) {
        this.isClick = true;
        setEnabled(false);
        this.countDownTimer.start();
        if (this.listener != null && isTrueSend) {
            this.listener.sendSms();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        sendSms(true);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.countDownTimer.cancel();
    }

    public void resetColdTime() {
        this.countDownTimer.cancel();
        this.countDownTimer.onFinish();
    }
}
