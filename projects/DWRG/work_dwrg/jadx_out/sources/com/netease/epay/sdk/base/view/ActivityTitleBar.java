package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.SdkConfig;

/* loaded from: classes.dex */
public class ActivityTitleBar extends RelativeLayout {
    private int backVisibilityStatus;
    private int closeVisibilityStatus;
    private ImageView ivBack;
    private ImageView ivClose;
    private TextView tvDone;
    private TextView tvSubtitle;
    private TextView tvTitle;

    public ActivityTitleBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs);
    }

    private void init(AttributeSet attrs) {
        inflate(getContext(), R.layout.epaysdk_view_titlebar, this);
        setBackgroundColor(SdkConfig.TitleBarBackgroundColor);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.epaysdk_ActivityTitle, 0, 0);
        String string = obtainStyledAttributes.getString(R.styleable.epaysdk_ActivityTitle_epaysdk_main_title);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.epaysdk_ActivityTitle_epaysdk_isBackShow, true);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.epaysdk_ActivityTitle_epaysdk_isSubtitleShow, true);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.epaysdk_ActivityTitle_epaysdk_isDoneShow, false);
        boolean z4 = obtainStyledAttributes.getBoolean(R.styleable.epaysdk_ActivityTitle_epaysdk_isCloseShow, false);
        obtainStyledAttributes.recycle();
        this.tvTitle = (TextView) findViewById(R.id.tv_titlebar_title);
        setTitle(string);
        this.tvTitle.setTextColor(SdkConfig.TitleBarTextColor);
        this.tvSubtitle = (TextView) findViewById(R.id.tv_second_title);
        this.tvSubtitle.setTextColor(SdkConfig.TitleBarTextColor);
        setSubtitleShow(z2);
        this.ivBack = (ImageView) findViewById(R.id.ivBack);
        Drawable drawable = getResources().getDrawable(R.drawable.epaysdk_icon_blue_back);
        DrawableCompat.setTint(drawable, SdkConfig.TitleBarTextColor);
        this.ivBack.setImageDrawable(drawable);
        setBackShow(z);
        this.ivClose = (ImageView) findViewById(R.id.ivClose);
        Drawable drawable2 = getResources().getDrawable(R.drawable.epaysdk_ic_close_blue);
        DrawableCompat.setTint(drawable2, SdkConfig.TitleBarTextColor);
        this.ivClose.setImageDrawable(drawable2);
        setCloseShow(z4);
        this.tvDone = (TextView) findViewById(R.id.tv_titlebar_done);
        this.tvDone.setTextColor(SdkConfig.TitleBarTextColor);
        setDoneShow(z3);
    }

    public void setBackShow(boolean isShowBack) {
        this.ivBack.setVisibility(isShowBack ? 0 : 8);
    }

    public void setCloseShow(boolean isShowClose) {
        this.ivClose.setVisibility(isShowClose ? 0 : 8);
    }

    public void setTitle(String title) {
        this.tvTitle.setText(title);
    }

    public void setSubtitleShow(boolean isSubtitleShow) {
        this.tvSubtitle.setVisibility(isSubtitleShow ? 0 : 8);
    }

    public void setBackListener(View.OnClickListener listener) {
        this.ivBack.setOnClickListener(listener);
    }

    public void setCloseListener(View.OnClickListener listener) {
        this.ivClose.setOnClickListener(listener);
    }

    public void setDoneShow(boolean isDoneShow) {
        this.tvDone.setVisibility(isDoneShow ? 0 : 8);
    }

    public TextView getTvDone() {
        return this.tvDone;
    }

    public void setDoneListener(View.OnClickListener listener) {
        this.tvDone.setOnClickListener(listener);
    }

    public void saveActionMenuStates() {
        this.closeVisibilityStatus = this.ivClose.getVisibility();
        this.backVisibilityStatus = this.ivBack.getVisibility();
    }

    public void restoreActionMenuStatus() {
        this.ivClose.setVisibility(this.closeVisibilityStatus);
        this.ivBack.setVisibility(this.backVisibilityStatus);
    }
}
