package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.widget.AbsListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sina.weibo.sdk.utils.ResourceManager;

/* loaded from: classes.dex */
public class SelectCountryTitleView extends RelativeLayout {
    private TextView mTitleTv;

    public SelectCountryTitleView(Context context) {
        super(context);
        initView();
    }

    private void initView() {
        AbsListView.LayoutParams mlly = new AbsListView.LayoutParams(-1, ResourceManager.dp2px(getContext(), 24));
        setLayoutParams(mlly);
        setBackgroundDrawable(ResourceManager.getDrawable(getContext(), "tableview_sectionheader_background.png"));
        this.mTitleTv = new TextView(getContext());
        this.mTitleTv.setTextSize(14.0f);
        RelativeLayout.LayoutParams mTitleTvLp = new RelativeLayout.LayoutParams(-2, -2);
        mTitleTvLp.addRule(15);
        mTitleTvLp.leftMargin = ResourceManager.dp2px(getContext(), 10);
        this.mTitleTv.setLayoutParams(mTitleTvLp);
        this.mTitleTv.setGravity(3);
        this.mTitleTv.setTextColor(-7171438);
        this.mTitleTv.setGravity(16);
        addView(this.mTitleTv);
    }

    public void setTitle(String title) {
        this.mTitleTv.setText(title);
    }

    public void update(String title) {
        setTitle(title);
    }
}
