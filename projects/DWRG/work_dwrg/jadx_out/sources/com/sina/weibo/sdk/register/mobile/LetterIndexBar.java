package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.sina.weibo.sdk.utils.ResourceManager;

/* loaded from: classes.dex */
public class LetterIndexBar extends View {
    public static final int INDEX_COUNT_DEFAULT = 27;
    public static final String SEARCH_ICON_LETTER = "";
    private int count;
    private int mIndex;
    private String[] mIndexLetter;
    private int mItemHeight;
    private int mItemPadding;
    private OnIndexChangeListener mListener;
    private boolean[] mNeedIndex;
    private int mOrgTextSzie;
    private Paint mPaint;
    private RectF mRect;
    private Drawable mSeatchIcon;
    private boolean mTouching;

    /* loaded from: classes.dex */
    public interface OnIndexChangeListener {
        void onIndexChange(int i);
    }

    public LetterIndexBar(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.count = 27;
        init();
    }

    public LetterIndexBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mPaint = new Paint();
        this.count = 27;
        init();
    }

    public LetterIndexBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPaint = new Paint();
        this.count = 27;
        init();
    }

    private void init() {
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(-10658467);
        this.mOrgTextSzie = ResourceManager.dp2px(getContext(), 13);
    }

    public void setIndexMark(boolean[] mark) {
        if (mark != null) {
            this.mNeedIndex = mark;
            invalidate();
        }
    }

    public void setIndexLetter(String[] letter) {
        if (letter != null) {
            this.mIndexLetter = letter;
            this.count = this.mIndexLetter.length;
            this.mIndex = -1;
            invalidate();
        }
    }

    public void setIndexChangeListener(OnIndexChangeListener listener) {
        this.mListener = listener;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int textSize;
        String title;
        super.onDraw(canvas);
        if (this.mTouching) {
            int color = this.mPaint.getColor();
            this.mPaint.setColor(-2005436536);
            canvas.drawRoundRect(this.mRect, getMeasuredWidth() / 2, getMeasuredWidth() / 2, this.mPaint);
            this.mPaint.setColor(color);
        }
        int textSize2 = this.mOrgTextSzie;
        if (textSize2 > this.mItemHeight) {
            textSize = this.mItemHeight;
        } else {
            textSize = this.mOrgTextSzie;
        }
        this.mPaint.setTextSize(textSize);
        if (this.mIndexLetter == null) {
            char letter = 'A';
            for (int i = 0; i < this.count; i++) {
                int top = (this.mItemHeight * i) + getPaddingTop() + textSize + this.mItemPadding;
                if (this.mNeedIndex == null || this.mNeedIndex[i]) {
                    if (i == this.count - 1) {
                        title = "#";
                    } else {
                        title = String.valueOf(letter);
                        letter = (char) (letter + 1);
                    }
                    int textWidth = (int) this.mPaint.measureText(title);
                    canvas.drawText(title, (getMeasuredWidth() - textWidth) / 2, top, this.mPaint);
                }
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            int top2 = (this.mItemHeight * i2) + getPaddingTop() + textSize + this.mItemPadding;
            if (this.mNeedIndex == null || this.mNeedIndex[i2]) {
                String title2 = this.mIndexLetter[i2];
                if (title2.equals("")) {
                    int textWidth2 = (int) this.mPaint.measureText("M");
                    int left = (getMeasuredWidth() - textWidth2) / 2;
                    this.mSeatchIcon.setBounds(left, top2 - left, textWidth2 + left, (textWidth2 + top2) - left);
                    this.mSeatchIcon.draw(canvas);
                } else {
                    canvas.drawText(title2, (getMeasuredWidth() - ((int) this.mPaint.measureText(title2))) / 2, top2, this.mPaint);
                }
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int height = View.MeasureSpec.getSize(heightMeasureSpec);
        this.mItemHeight = ((height - getPaddingTop()) - getPaddingBottom()) / this.count;
        this.mItemPadding = (int) ((this.mItemHeight - this.mPaint.getTextSize()) / 2.0f);
        int width = this.mOrgTextSzie + getPaddingLeft() + getPaddingRight();
        setMeasuredDimension(width, heightMeasureSpec);
        this.mRect = new RectF(0.0f, getPaddingTop(), getMeasuredWidth(), (height - getPaddingTop()) - getPaddingBottom());
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getAction();
        switch (action) {
            case 0:
            case 2:
                this.mTouching = true;
                int y = (int) event.getY();
                int index = (y - getPaddingTop()) / this.mItemHeight;
                if (index != this.mIndex && ((this.mNeedIndex == null || this.mNeedIndex[index]) && index < this.count && index >= 0)) {
                    this.mIndex = index;
                    if (this.mListener != null) {
                        this.mListener.onIndexChange(this.mIndex);
                        break;
                    }
                }
                break;
            case 1:
            case 3:
            case 4:
                this.mTouching = false;
                break;
        }
        invalidate();
        return true;
    }
}
