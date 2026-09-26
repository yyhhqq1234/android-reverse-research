package com.netease.unisdk.gmbridge.view;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.floatwindow.BtnInfo;
import com.netease.unisdk.gmbridge.floatwindow.FloatWindowManager;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class ExpandItemView extends LinearLayout implements View.OnTouchListener {
    private BtnInfo mBtnInfo;
    private ImageView mIconIv;
    private TextView mNameTv;
    private int mPressTextColor;
    private ImageView mRedIv;
    private int mTextColor;

    public ExpandItemView(Context context, BtnInfo btnInfo) {
        super(context);
        this.mTextColor = context.getResources().getColor(ResIdReader.getColorId(context, "uni_gm_text_color"));
        this.mPressTextColor = context.getResources().getColor(ResIdReader.getColorId(context, "uni_gm_text_focus_color"));
        this.mBtnInfo = btnInfo;
        setOrientation(1);
        initViews();
        setOnTouchListener(this);
    }

    private void initViews() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        addView(frameLayout);
        this.mIconIv = new ImageView(getContext());
        this.mIconIv.setImageBitmap(this.mBtnInfo.iconBmp);
        this.mIconIv.setScaleType(ImageView.ScaleType.FIT_XY);
        FrameLayout.LayoutParams iconLayoutParams = new FrameLayout.LayoutParams(FloatWindowManager.ICON_WIDTH, FloatWindowManager.ICON_HEIGHT);
        iconLayoutParams.gravity = 17;
        frameLayout.addView(this.mIconIv, iconLayoutParams);
        this.mRedIv = new ImageView(getContext());
        this.mRedIv.setImageResource(ResIdReader.getDrawableId(getContext(), "uni_gm_f_red"));
        FrameLayout.LayoutParams redParams = new FrameLayout.LayoutParams(-2, -2);
        redParams.gravity = 53;
        frameLayout.addView(this.mRedIv, redParams);
        if (!FloatWindowManager.isRedMenu(this.mBtnInfo.id)) {
            this.mRedIv.setVisibility(8);
        }
        this.mNameTv = new TextView(getContext());
        this.mNameTv.setText(this.mBtnInfo.name);
        this.mNameTv.setTextColor(this.mTextColor);
        addView(this.mNameTv);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                if (Build.VERSION.SDK_INT >= 11) {
                    this.mIconIv.setAlpha(0.5f);
                }
                this.mNameTv.setTextColor(this.mPressTextColor);
                return true;
            case 1:
                if (Build.VERSION.SDK_INT >= 11) {
                    this.mIconIv.setAlpha(1.0f);
                }
                this.mNameTv.setTextColor(this.mTextColor);
                click();
                FloatWindowManager.hideExpandLayout();
                return true;
            case 2:
                return true;
            default:
                return false;
        }
    }

    private void click() {
        if ("close".equals(this.mBtnInfo.url)) {
            new ConfirmDialog(getContext()).show();
            return;
        }
        UnisdkNtGmBridge.ntOpenGMPage(this.mBtnInfo.url);
        this.mRedIv.setVisibility(8);
        FloatWindowManager.removeRedMenuIds(this.mBtnInfo.id);
    }

    public boolean isShowRed() {
        return this.mRedIv != null && this.mRedIv.getVisibility() == 0;
    }

    public void showRed() {
        this.mRedIv.setVisibility(0);
    }
}
