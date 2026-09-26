package com.netease.epay.sdk.base.view.gridpwd;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.util.AES;
import com.netease.epay.sdk.base.util.UiUtil;
import java.nio.charset.Charset;
import java.security.SecureRandom;

/* loaded from: classes.dex */
public class GridPasswordView extends LinearLayout implements PasswordView {
    private static final int DEFAULT_GRIDCOLOR = -1;
    private static final int DEFAULT_LINECOLOR = -1433892728;
    private static final int DEFAULT_PASSWORDLENGTH = 6;
    private static final int DEFAULT_TEXTSIZE = 14;
    private static final String DEFAULT_TRANSFORMATION = "●";
    private int gridColor;
    private String key;
    private int lineColor;
    private Drawable lineDrawable;
    private int lineWidth;
    private OnPasswordChangedListener listener;
    private NumKeyBoard numKeyBoard;
    private View.OnClickListener onClickListener;
    private Drawable outerLineDrawable;
    private byte[][] passwordArr;
    private int passwordLength;
    private String passwordTransformation;
    private int textSize;
    private PasswordTransformationMethod transformationMethod;
    private TextView[] viewArr;

    public GridPasswordView(Context context) {
        this(context, null);
    }

    public GridPasswordView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.textSize = 14;
        this.key = null;
        this.onClickListener = new View.OnClickListener() { // from class: com.netease.epay.sdk.base.view.gridpwd.GridPasswordView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                GridPasswordView.this.numKeyBoard.showKeyboard();
            }
        };
        this.numKeyBoard = new NumKeyBoard(this);
        initAttrs(context, attrs);
        initViews(context);
    }

    private void initAttrs(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.epaysdk_gridPasswordView, 0, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.epaysdk_gridPasswordView_epaysdk_textSize, -1);
        if (dimensionPixelSize != -1) {
            this.textSize = UiUtil.px2dp(context, dimensionPixelSize);
        }
        this.lineWidth = (int) obtainStyledAttributes.getDimension(R.styleable.epaysdk_gridPasswordView_epaysdk_lineWidth, UiUtil.dp2px(getContext(), 1));
        this.lineColor = obtainStyledAttributes.getColor(R.styleable.epaysdk_gridPasswordView_epaysdk_lineColor, DEFAULT_LINECOLOR);
        this.gridColor = obtainStyledAttributes.getColor(R.styleable.epaysdk_gridPasswordView_epaysdk_gridColor, -1);
        this.lineDrawable = obtainStyledAttributes.getDrawable(R.styleable.epaysdk_gridPasswordView_epaysdk_lineColor);
        if (this.lineDrawable == null) {
            this.lineDrawable = new ColorDrawable(this.lineColor);
        }
        this.outerLineDrawable = generateBackgroundDrawable();
        this.passwordLength = obtainStyledAttributes.getInt(R.styleable.epaysdk_gridPasswordView_epaysdk_passwordLength, 6);
        this.passwordTransformation = obtainStyledAttributes.getString(R.styleable.epaysdk_gridPasswordView_epaysdk_passwordTransformation);
        if (TextUtils.isEmpty(this.passwordTransformation)) {
            this.passwordTransformation = DEFAULT_TRANSFORMATION;
        }
        obtainStyledAttributes.recycle();
        this.passwordArr = new byte[this.passwordLength];
        this.viewArr = new TextView[this.passwordLength];
    }

    private void initViews(Context context) {
        super.setBackgroundDrawable(this.outerLineDrawable);
        setOrientation(0);
        this.transformationMethod = new CustomPasswordTransformationMethod(this.passwordTransformation);
        inflaterViews(context);
        this.numKeyBoard.viewInit();
    }

    private void inflaterViews(Context context) {
        LayoutInflater from = LayoutInflater.from(context);
        for (int i = 0; i < this.passwordLength; i++) {
            if (i > 0) {
                View inflate = from.inflate(R.layout.epaysdk_view_gpv_divider, (ViewGroup) null);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.lineWidth, -1);
                inflate.setBackgroundDrawable(this.lineDrawable);
                addView(inflate, layoutParams);
            }
            TextView textView = (TextView) from.inflate(R.layout.epaysdk_view_gpv_textview, (ViewGroup) null);
            setCustomAttr(textView);
            addView(textView, new LinearLayout.LayoutParams(0, -1, 1.0f));
            this.viewArr[i] = textView;
        }
        setOnClickListener(this.onClickListener);
    }

    private void setCustomAttr(TextView view) {
        view.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        view.setTextSize(1, this.textSize);
        view.setInputType(18);
        view.setTransformationMethod(this.transformationMethod);
    }

    private GradientDrawable generateBackgroundDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.gridColor);
        gradientDrawable.setStroke(this.lineWidth, this.lineColor);
        gradientDrawable.setCornerRadius(10.0f);
        return gradientDrawable;
    }

    private void notifyTextChanged() {
        if (this.listener != null && this.passwordArr[this.passwordLength - 1] != null) {
            this.numKeyBoard.hideKeyboard();
            this.listener.onMaxLength(getPassWord(getSecureKey()));
        }
    }

    @Override // com.netease.epay.sdk.base.view.gridpwd.PasswordView
    public String getPassWord(String randomKey) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.passwordArr.length; i++) {
            if (this.passwordArr[i] != null) {
                sb.append(AES.decode(this.passwordArr[i], randomKey));
            }
        }
        return sb.toString();
    }

    @Override // com.netease.epay.sdk.base.view.gridpwd.PasswordView
    public void clearPassword() {
        for (int i = 0; i < this.passwordArr.length; i++) {
            this.passwordArr[i] = null;
            this.viewArr[i].setText((CharSequence) null);
        }
    }

    @Override // com.netease.epay.sdk.base.view.gridpwd.PasswordView
    public void setPasswordVisibility(boolean visible) {
        for (TextView textView : this.viewArr) {
            textView.setTransformationMethod(visible ? null : this.transformationMethod);
        }
    }

    @Override // com.netease.epay.sdk.base.view.gridpwd.PasswordView
    public void togglePasswordVisibility() {
        setPasswordVisibility(!getPassWordVisibility());
    }

    private boolean getPassWordVisibility() {
        return this.viewArr[0].getTransformationMethod() == null;
    }

    @Override // com.netease.epay.sdk.base.view.gridpwd.PasswordView
    public void setOnPasswordChangedListener(OnPasswordChangedListener listener) {
        this.listener = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onKey(String num) {
        int i = 0;
        while (true) {
            if (i >= this.passwordLength) {
                break;
            }
            if (this.passwordArr[i] != null) {
                i++;
            } else {
                this.passwordArr[i] = AES.encode(num, getSecureKey());
                this.viewArr[i].setText(DEFAULT_TRANSFORMATION);
                break;
            }
        }
        notifyTextChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void backSpace() {
        if (this.passwordArr[0] != null) {
            for (int i = this.passwordLength - 1; i >= 0; i--) {
                if (this.passwordArr[i] != null) {
                    this.passwordArr[i] = null;
                    this.viewArr[i].setText((CharSequence) null);
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.numKeyBoard.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.numKeyBoard.onDetachedFromWindow();
    }

    public void showKeyBoard() {
        this.numKeyBoard.showKeyboard();
    }

    private String getSecureKey() {
        if (TextUtils.isEmpty(this.key)) {
            String randomKey16Byte = this.listener != null ? this.listener.randomKey16Byte() : null;
            if (randomKey16Byte == null || randomKey16Byte.getBytes().length != 16) {
                byte[] bArr = new byte[16];
                new SecureRandom().nextBytes(bArr);
                this.key = new String(bArr, Charset.defaultCharset());
                return this.key;
            }
            return randomKey16Byte;
        }
        return this.key;
    }

    public void screenOrientationChange() {
        this.numKeyBoard.screenOrientationChange();
    }
}
