package com.sina.weibo.sdk.component.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes.dex */
public class LoadingBar extends TextView {
    private static final int MAX_PROGRESS = 100;
    private Handler mHander;
    private Paint mPaint;
    private int mProgress;
    private int mProgressColor;
    private Runnable mRunnable;

    public LoadingBar(Context context) {
        super(context);
        this.mRunnable = new Runnable() { // from class: com.sina.weibo.sdk.component.view.LoadingBar.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingBar.this.mProgress++;
                LoadingBar.this.drawProgress(LoadingBar.this.mProgress);
            }
        };
        init(context);
    }

    public LoadingBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mRunnable = new Runnable() { // from class: com.sina.weibo.sdk.component.view.LoadingBar.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingBar.this.mProgress++;
                LoadingBar.this.drawProgress(LoadingBar.this.mProgress);
            }
        };
        init(context);
    }

    public LoadingBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mRunnable = new Runnable() { // from class: com.sina.weibo.sdk.component.view.LoadingBar.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingBar.this.mProgress++;
                LoadingBar.this.drawProgress(LoadingBar.this.mProgress);
            }
        };
        init(context);
    }

    private void init(Context context) {
        this.mHander = new Handler();
        this.mPaint = new Paint();
        initSkin();
    }

    public void initSkin() {
        this.mProgressColor = -11693826;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mPaint.setColor(this.mProgressColor);
        Rect r = getRect();
        canvas.drawRect(r, this.mPaint);
    }

    private Rect getRect() {
        int left = getLeft();
        int top = getTop();
        int right = getLeft() + (((getRight() - getLeft()) * this.mProgress) / 100);
        int bottom = getBottom();
        return new Rect(0, 0, right - left, bottom - top);
    }

    public void drawProgress(int progress) {
        if (progress < 7) {
            this.mHander.postDelayed(this.mRunnable, 70L);
        } else {
            this.mHander.removeCallbacks(this.mRunnable);
            this.mProgress = progress;
        }
        invalidate();
    }
}
