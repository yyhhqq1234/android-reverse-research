package com.netease.epay.sdk.base.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.EditText;

/* loaded from: classes.dex */
public class CleanUpEditText extends EditText {
    public CleanUpEditText(Context context) {
        super(context);
    }

    public CleanUpEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CleanUpEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 1:
                if (getCompoundDrawables()[2] != null && event.getX() >= (getWidth() - r0.getBounds().width()) - getPaddingRight()) {
                    setText("");
                    return true;
                }
                break;
            default:
                return super.onTouchEvent(event);
        }
    }
}
