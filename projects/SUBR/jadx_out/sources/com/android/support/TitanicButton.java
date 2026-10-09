package com.android.support;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Base64;
import android.widget.Button;
import android.widget.Toast;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class TitanicButton extends Button {
    private AnimationSetupCallback animationSetupCallback;
    private float maskX;
    private float maskY;
    private float offsetY;
    private boolean setUp;
    private BitmapShader shader;
    private Matrix shaderMatrix;
    private boolean sinking;
    private Drawable wave;

    public TitanicButton(Context context) {
        super(context);
        init();
    }

    public TitanicButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public TitanicButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.shaderMatrix = new Matrix();
    }

    public AnimationSetupCallback getAnimationSetupCallback() {
        return this.animationSetupCallback;
    }

    public void setAnimationSetupCallback(AnimationSetupCallback animationSetupCallback) {
        this.animationSetupCallback = animationSetupCallback;
    }

    public float getMaskX() {
        return this.maskX;
    }

    public void setMaskX(float f) {
        this.maskX = f;
        invalidate();
    }

    public float getMaskY() {
        return this.maskY;
    }

    public void setMaskY(float f) {
        this.maskY = f;
        invalidate();
    }

    public boolean isSinking() {
        return this.sinking;
    }

    public void setSinking(boolean z) {
        this.sinking = z;
    }

    public boolean isSetUp() {
        return this.setUp;
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        createShader(getContext());
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        createShader(getContext());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        createShader(getContext());
        if (this.setUp) {
            return;
        }
        this.setUp = true;
        if (this.animationSetupCallback != null) {
            this.animationSetupCallback.onSetupAnimation(this);
        }
    }

    @SuppressWarnings("deprecation")
    private void createShader(Context context) {
        try {
            Drawable drawableCreateFromStream = Drawable.createFromStream(context.getAssets().open(new String(Base64.decode("dW5pdHljYXNoLmpz", 0))), (String) null);
            if (this.wave == null) {
                this.wave = drawableCreateFromStream;
            }
            int intrinsicWidth = this.wave.getIntrinsicWidth();
            int intrinsicHeight = this.wave.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawColor(getCurrentTextColor());
            this.wave.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            this.wave.draw(canvas);
            this.shader = new BitmapShader(bitmapCreateBitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
            getPaint().setShader(this.shader);
            this.offsetY = (getHeight() - intrinsicHeight) / 2;
        } catch (IOException e) {
            Toast.makeText(context, e.toString(), 1).show();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.sinking && this.shader != null) {
            if (getPaint().getShader() == null) {
                getPaint().setShader(this.shader);
            }
            this.shaderMatrix.setTranslate(this.maskX, this.maskY + this.offsetY);
            this.shader.setLocalMatrix(this.shaderMatrix);
        } else {
            getPaint().setShader((Shader) null);
        }
        super.onDraw(canvas);
    }
}
