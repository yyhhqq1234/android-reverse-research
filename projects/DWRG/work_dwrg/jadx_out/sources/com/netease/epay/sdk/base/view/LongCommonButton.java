package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.Button;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.SdkConfig;

/* loaded from: classes.dex */
public class LongCommonButton extends Button {
    public LongCommonButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public LongCommonButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        setGravity(17);
        setBackgroundDrawable(getResources().getDrawable(R.drawable.epaysdk_bg_main_button));
        if (SdkConfig.btnColor == null) {
            SdkConfig.btnColor = getStateColor(SdkConfig.BTN_COLOR);
        }
        if (Build.VERSION.SDK_INT > 21) {
            ViewCompat.setBackgroundTintList(this, SdkConfig.btnColor);
        } else if (Build.VERSION.SDK_INT == 21) {
            setBackgroundColor(-1);
            ViewCompat.setBackgroundTintList(this, SdkConfig.btnColor);
        } else {
            setBackgroundDrawable(getStateDrawable(SdkConfig.btnColor));
        }
        if (SdkConfig.btnTextColor == null) {
            SdkConfig.btnTextColor = getStateColor(SdkConfig.BTN_TEXT_COLOR);
        }
        setTextColor(SdkConfig.btnTextColor);
    }

    private ColorStateList getStateColor(int[] target) {
        return new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[]{android.R.attr.state_enabled}, new int[0]}, new int[]{target[0], target[1], target[2]});
    }

    private StateListDrawable getStateDrawable(ColorStateList list) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        int[] iArr = {android.R.attr.state_pressed};
        int[] iArr2 = {android.R.attr.state_enabled};
        GradientDrawable customDrawableAllRadius = getCustomDrawableAllRadius(list.getColorForState(iArr, SdkConfig.BTN_COLOR[0]));
        GradientDrawable customDrawableAllRadius2 = getCustomDrawableAllRadius(list.getColorForState(iArr2, SdkConfig.BTN_COLOR[1]));
        GradientDrawable customDrawableAllRadius3 = getCustomDrawableAllRadius(list.getColorForState(new int[0], SdkConfig.BTN_COLOR[2]));
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, customDrawableAllRadius);
        stateListDrawable.addState(new int[]{android.R.attr.state_enabled}, customDrawableAllRadius2);
        stateListDrawable.addState(new int[0], customDrawableAllRadius3);
        return stateListDrawable;
    }

    private GradientDrawable getCustomDrawableAllRadius(int color) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(8.0f);
        return gradientDrawable;
    }
}
