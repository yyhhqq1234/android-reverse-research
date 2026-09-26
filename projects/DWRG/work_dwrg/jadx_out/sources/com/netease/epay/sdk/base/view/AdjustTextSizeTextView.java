package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class AdjustTextSizeTextView extends TextView {
    private Rect bounds;
    private int maxTextSize;
    private int minTextSize;

    public AdjustTextSizeTextView(Context context) {
        super(context);
    }

    public AdjustTextSizeTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        parseAttributes(context.obtainStyledAttributes(attrs, R.styleable.epaysdk_AdjustTextSizeTextView));
    }

    private void parseAttributes(TypedArray a) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.maxTextSize = (int) TypedValue.applyDimension(1, this.maxTextSize, displayMetrics);
        this.minTextSize = (int) TypedValue.applyDimension(1, this.minTextSize, displayMetrics);
        this.maxTextSize = (int) a.getDimension(R.styleable.epaysdk_AdjustTextSizeTextView_epaysdk_maxTextSize, this.maxTextSize);
        this.minTextSize = (int) a.getDimension(R.styleable.epaysdk_AdjustTextSizeTextView_epaysdk_minTextSize, this.minTextSize);
        a.recycle();
        this.bounds = new Rect();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int paddingTop = this.maxTextSize + getPaddingTop() + getPaddingBottom() + 8;
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (mode != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        for (int i = this.maxTextSize; i >= this.minTextSize; i--) {
            paint.setTextSize(i);
            paint.getTextBounds(getText().toString(), 0, getText().toString().length(), this.bounds);
            Paint.FontMetrics fontMetrics = paint.getFontMetrics();
            if (this.bounds.width() <= getWidth()) {
                canvas.drawText(getText().toString(), getCompoundPaddingLeft(), (getMeasuredHeight() - getPaddingBottom()) - fontMetrics.descent, paint);
                return;
            }
            if (i == this.minTextSize) {
                for (int length = getText().toString().length() - 1; length >= 0; length--) {
                    paint.getTextBounds(getText().toString().substring(0, length) + "...", 0, length + 3, this.bounds);
                    if (this.bounds.width() <= getWidth()) {
                        canvas.drawText(getText().toString().substring(0, length) + "...", getCompoundPaddingLeft(), (getMeasuredHeight() - getPaddingBottom()) - fontMetrics.descent, paint);
                        return;
                    }
                }
            }
        }
    }
}
