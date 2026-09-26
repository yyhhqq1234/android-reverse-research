package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class MaxHeightRelativeLayout extends RelativeLayout {
    private int maxHeight;

    public MaxHeightRelativeLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(context, attrs);
    }

    public MaxHeightRelativeLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public MaxHeightRelativeLayout(Context context) {
        super(context);
        this.maxHeight = 0;
    }

    private void init(Context ctx, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = ctx.obtainStyledAttributes(attrs, R.styleable.epaysdk_MaxHeightRelativeLayout);
        this.maxHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.epaysdk_MaxHeightRelativeLayout_epaysdk_maxHeight, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(heightMeasureSpec);
        if (this.maxHeight > 0 && this.maxHeight < size) {
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.maxHeight, View.MeasureSpec.getMode(heightMeasureSpec));
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }
}
