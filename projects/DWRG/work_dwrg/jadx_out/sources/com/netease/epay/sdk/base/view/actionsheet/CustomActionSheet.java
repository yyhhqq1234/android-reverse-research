package com.netease.epay.sdk.base.view.actionsheet;

import android.R;
import android.app.Activity;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class CustomActionSheet extends View implements View.OnClickListener {
    private static final int ALPHA_DURATION = 300;
    public static final int BG_VIEW_ID = 1200;
    private static final int TRANSLATE_DURATION = 200;
    private final Activity actv;
    private View bgView;
    private View contentView;
    private ViewGroup decorView;
    private boolean isShow;
    private FrameLayout wholeView;

    public CustomActionSheet(Activity actv) {
        super(actv);
        this.isShow = false;
        this.actv = actv;
    }

    public void show(View sheetContentView) {
        if (!this.isShow) {
            this.isShow = true;
            dismissInputMethod();
            this.wholeView = createView(sheetContentView);
            this.decorView = (ViewGroup) this.actv.getWindow().getDecorView().findViewById(R.id.content);
            this.decorView.addView(this.wholeView);
            this.bgView.startAnimation(AnimationUtil.createAlphaInAnimation(ALPHA_DURATION));
            this.contentView.startAnimation(AnimationUtil.createTranslationInAnimation(200));
        }
    }

    void dismissInputMethod() {
        View currentFocus;
        if (this.actv != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.actv.getSystemService("input_method");
            if (inputMethodManager.isActive() && (currentFocus = this.actv.getCurrentFocus()) != null) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
        }
    }

    FrameLayout createView(View content) {
        FrameLayout frameLayout = new FrameLayout(this.actv);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.bgView = new View(this.actv);
        this.bgView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.bgView.setBackgroundColor(Color.argb(136, 0, 0, 0));
        this.bgView.setOnClickListener(this);
        this.bgView.setId(BG_VIEW_ID);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        content.setLayoutParams(layoutParams);
        this.contentView = content;
        frameLayout.addView(this.bgView);
        frameLayout.addView(content);
        return frameLayout;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == 1200) {
            dismiss();
        }
    }

    public void dismiss() {
        if (this.isShow) {
            this.isShow = false;
            if (this.contentView != null) {
                this.contentView.startAnimation(AnimationUtil.createTranslationOutAnimation(200));
                this.bgView.startAnimation(AnimationUtil.createAlphaOutAnimation(ALPHA_DURATION));
                this.wholeView.postDelayed(new Runnable() { // from class: com.netease.epay.sdk.base.view.actionsheet.CustomActionSheet.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CustomActionSheet.this.wholeView.removeAllViews();
                        CustomActionSheet.this.decorView.removeView(CustomActionSheet.this.wholeView);
                    }
                }, 300L);
            }
        }
    }

    public boolean isShow() {
        return this.isShow;
    }
}
