package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.TranslateAnimation;

/* loaded from: classes.dex */
public class EpayWebView extends BaseWebView {
    boolean isNeedAnimation;
    boolean isclampedY;
    boolean isnewClampedY;
    private Rect normal;
    float preY;

    public EpayWebView(Context context) {
        super(context);
        this.normal = new Rect();
        this.isNeedAnimation = false;
    }

    public EpayWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.normal = new Rect();
        this.isNeedAnimation = false;
    }

    public EpayWebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.normal = new Rect();
        this.isNeedAnimation = false;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                this.preY = event.getY();
                this.isnewClampedY = this.isclampedY;
                break;
            case 1:
                if (this.isnewClampedY || this.isNeedAnimation) {
                    animation();
                }
                this.isnewClampedY = getScrollY() == 0;
                break;
            case 2:
                float y = event.getY();
                int i = (int) (y - this.preY);
                if (this.isnewClampedY && (i > 0 || this.isNeedAnimation)) {
                    this.preY = y;
                    if (isNeedMove()) {
                        this.isNeedAnimation = true;
                        if (getTop() + (i / 2) < this.normal.top) {
                            i = (this.normal.top - getTop()) * 2;
                        }
                        layout(getLeft(), getTop() + (i / 2), getRight(), (i / 2) + getBottom());
                        break;
                    }
                }
                break;
        }
        return super.onTouchEvent(event);
    }

    public boolean isNeedMove() {
        return getScrollY() == 0 && getTop() >= this.normal.top;
    }

    public void animation() {
        this.isNeedAnimation = false;
        if (getTop() != this.normal.top) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, getTop() - this.normal.top, 0.0f);
            translateAnimation.setDuration(200L);
            startAnimation(translateAnimation);
            layout(this.normal.left, this.normal.top, this.normal.right, this.normal.bottom);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        if (this.isNeedAnimation && t > 0 && oldt == 0) {
            scrollTo(oldl, oldt);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        this.isclampedY = clampedY;
        super.onOverScrolled(scrollX, scrollY, clampedX, clampedY);
    }

    @Override // android.widget.AbsoluteLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (this.normal.isEmpty()) {
            this.normal.set(getLeft(), getTop(), getRight(), getBottom());
        }
    }
}
