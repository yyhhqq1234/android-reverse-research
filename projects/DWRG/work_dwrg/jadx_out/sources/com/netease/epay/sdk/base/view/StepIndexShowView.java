package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.SdkConfig;

/* loaded from: classes.dex */
public class StepIndexShowView extends View {
    private static final int COLOR_BBBBBB = Color.parseColor("#bbbbbb");
    private int count;
    private int index;
    private float marginSelf_3DP;
    private Paint paint;

    public StepIndexShowView(Context context) {
        super(context);
        this.count = 3;
        this.index = 0;
        this.marginSelf_3DP = 6.0f;
    }

    public StepIndexShowView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.count = 3;
        this.index = 0;
        this.marginSelf_3DP = 6.0f;
        init(context, attrs);
    }

    public StepIndexShowView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.count = 3;
        this.index = 0;
        this.marginSelf_3DP = 6.0f;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.epaysdk_StepIndexShowView, 0, 0);
        this.marginSelf_3DP = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.epaysdk_StepIndexShowView_epaysdk_stepMargin, 6);
        this.count = obtainStyledAttributes.getInteger(R.styleable.epaysdk_StepIndexShowView_epaysdk_stepCount, 3);
        this.index = obtainStyledAttributes.getInteger(R.styleable.epaysdk_StepIndexShowView_epaysdk_stepIndex, 0);
        if (this.index >= this.count) {
            this.index = this.count - 1;
        }
        obtainStyledAttributes.recycle();
        this.paint = new Paint();
        this.paint.setColor(COLOR_BBBBBB);
        this.paint.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float width = (getWidth() - ((this.count - 1) * this.marginSelf_3DP)) / this.count;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.count) {
                if (i2 <= this.index) {
                    this.paint.setColor(SdkConfig.getMainColor());
                } else {
                    this.paint.setColor(COLOR_BBBBBB);
                }
                canvas.drawRect((this.marginSelf_3DP + width) * i2, 0.0f, (i2 * this.marginSelf_3DP) + ((i2 + 1) * width), getHeight(), this.paint);
                i = i2 + 1;
            } else {
                super.onDraw(canvas);
                return;
            }
        }
    }
}
