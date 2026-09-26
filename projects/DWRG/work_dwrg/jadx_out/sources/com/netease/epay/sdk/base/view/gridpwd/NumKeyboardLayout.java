package com.netease.epay.sdk.base.view.gridpwd;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class NumKeyboardLayout extends LinearLayout implements View.OnClickListener {
    private View keyDelete;
    private View keyHide;
    private List<TextView> keys;
    private NumberKeyClickListner numberKeyClickListner;

    /* loaded from: classes.dex */
    public interface NumberKeyClickListner {
        void hide();

        void numberInput(String str);

        void onBackSpace();
    }

    public NumKeyboardLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setOrientation(1);
        inflate(context, R.layout.epaysdk_view_keyboard_row, this);
        this.keys = new ArrayList();
        setNumberKey(R.id.btn_keyb_0);
        setNumberKey(R.id.btn_keyb_1);
        setNumberKey(R.id.btn_keyb_2);
        setNumberKey(R.id.btn_keyb_3);
        setNumberKey(R.id.btn_keyb_4);
        setNumberKey(R.id.btn_keyb_5);
        setNumberKey(R.id.btn_keyb_6);
        setNumberKey(R.id.btn_keyb_7);
        setNumberKey(R.id.btn_keyb_8);
        setNumberKey(R.id.btn_keyb_9);
        this.keyDelete = findViewById(R.id.btn_keyb_d);
        this.keyHide = findViewById(R.id.btn_keyb_hide);
        this.keyDelete.setOnClickListener(this);
        this.keyHide.setOnClickListener(this);
        if (Build.VERSION.SDK_INT >= 16) {
            setImportantForAccessibility(4);
        }
    }

    public NumKeyboardLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public NumKeyboardLayout(Context context) {
        this(context, null);
    }

    private void setNumberKey(int keyViewResId) {
        TextView textView = (TextView) findViewById(keyViewResId);
        textView.setAccessibilityDelegate(null);
        this.keys.add(textView);
        textView.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (this.numberKeyClickListner != null) {
            if (v == this.keyDelete) {
                this.numberKeyClickListner.onBackSpace();
            } else if (v == this.keyHide) {
                this.numberKeyClickListner.hide();
            } else if (v instanceof TextView) {
                this.numberKeyClickListner.numberInput(((TextView) v).getText().toString());
            }
        }
    }

    private void digRandomNumberKeys() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.setSeed(SystemClock.currentThreadTimeMillis());
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.keys);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 10) {
                ((TextView) arrayList.remove(secureRandom.nextInt(10 - i2))).setText(String.valueOf(i2));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void setOnNumberKeyClickListner(NumberKeyClickListner listner) {
        this.numberKeyClickListner = listner;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }
}
