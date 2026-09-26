package com.netease.epay.sdk.base.view.actionsheet;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;

/* loaded from: classes.dex */
class AnimationUtil {
    AnimationUtil() {
    }

    public static Animation createTranslationInAnimation(int duration) {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
        translateAnimation.setDuration(duration);
        return translateAnimation;
    }

    public static Animation createAlphaInAnimation(int duration) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(duration);
        return alphaAnimation;
    }

    public static Animation createTranslationOutAnimation(int duration) {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, 1.0f);
        translateAnimation.setDuration(duration);
        translateAnimation.setFillAfter(true);
        return translateAnimation;
    }

    public static Animation createAlphaOutAnimation(int duration) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(duration);
        alphaAnimation.setFillAfter(true);
        return alphaAnimation;
    }
}
