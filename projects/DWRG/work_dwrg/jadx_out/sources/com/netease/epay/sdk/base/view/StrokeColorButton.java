package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.Button;
import com.netease.epay.sdk.base.core.SdkConfig;

/* loaded from: classes.dex */
public class StrokeColorButton extends Button {
    public StrokeColorButton(Context context) {
        super(context);
        init();
    }

    public StrokeColorButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    private void init() {
        setBackgroundDrawable(getCustomDrawableAllRadius(SdkConfig.getMainColor()));
        setTextColor(SdkConfig.getMainColor());
    }

    public GradientDrawable getCustomDrawableAllRadius(int color) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setStroke(2, color);
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(8.0f);
        return gradientDrawable;
    }
}
