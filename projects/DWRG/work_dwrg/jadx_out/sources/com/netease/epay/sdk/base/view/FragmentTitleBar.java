package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class FragmentTitleBar extends RelativeLayout {
    private TextView tvSubtitle;
    private TextView tvTitle;
    private View vBack;
    private View vClose;

    public FragmentTitleBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs);
    }

    private void init(AttributeSet attrs) {
        inflate(getContext(), R.layout.epaysdk_frag_title_bar, this);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.epaysdk_FragmentTitle, 0, 0);
        String string = obtainStyledAttributes.getString(R.styleable.epaysdk_FragmentTitle_epaysdk_title);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.epaysdk_FragmentTitle_epaysdk_isShowBack, true);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.epaysdk_FragmentTitle_epaysdk_isShowClose, true);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.epaysdk_FragmentTitle_epaysdk_isShowSubtitle, true);
        obtainStyledAttributes.recycle();
        this.tvTitle = (TextView) findViewById(R.id.tv_frag_title_x);
        setTitle(string);
        this.tvSubtitle = (TextView) findViewById(R.id.tv_second_title);
        setSubtitleShow(z3);
        this.tvSubtitle.setVisibility(z3 ? 0 : 8);
        this.vClose = findViewById(R.id.iv_frag_close_c);
        setCloseShow(z2);
        this.vBack = findViewById(R.id.iv_frag_back_c);
        setBackShow(z);
    }

    public void setCloseShow(boolean isShowClose) {
        this.vClose.setVisibility(isShowClose ? 0 : 8);
    }

    public void setBackShow(boolean isShowBack) {
        this.vBack.setVisibility(isShowBack ? 0 : 8);
    }

    public void setTitle(String title) {
        this.tvTitle.setText(title);
    }

    public void setSubtitleShow(boolean isSubtitleShow) {
        this.tvSubtitle.setVisibility(isSubtitleShow ? 0 : 8);
    }

    public void setCloseListener(View.OnClickListener listener) {
        this.vClose.setOnClickListener(listener);
    }

    public void setBackListener(View.OnClickListener listener) {
        this.vBack.setOnClickListener(listener);
    }
}
