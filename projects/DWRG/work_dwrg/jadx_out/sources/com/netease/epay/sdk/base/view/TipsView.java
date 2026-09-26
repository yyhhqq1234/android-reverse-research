package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ImageView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.ui.ImageMessageFragment;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.ui.TitleMessageFragment;
import com.netease.epay.sdk.base.util.LogicUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class TipsView extends ImageView {
    public static final int CVV = 5;
    public static final int EXPIRE = 6;
    public static final int NAME = 4;
    public static final int PHONE = 0;
    private FragmentActivity activity;
    private int type;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TipsType {
    }

    public TipsView(Context context) {
        super(context);
        init(null);
    }

    public TipsView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs);
    }

    public TipsView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(attrs);
    }

    private void init(AttributeSet attrs) {
        setScaleType(ImageView.ScaleType.CENTER);
        setImageResource(R.drawable.epaysdk_icon_tips);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.epaysdk_TipsView, 0, 0);
            this.type = obtainStyledAttributes.getInt(R.styleable.epaysdk_TipsView_epaysdk_tipsType, 4);
            obtainStyledAttributes.recycle();
        }
        if (getContext() instanceof FragmentActivity) {
            this.activity = (FragmentActivity) getContext();
        } else if (getContext() instanceof ContextThemeWrapper) {
            this.activity = (FragmentActivity) ((ContextThemeWrapper) getContext()).getBaseContext();
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.base.view.TipsView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (TipsView.this.activity != null) {
                    SdkFragment sdkFragment = null;
                    switch (TipsView.this.type) {
                        case 0:
                            sdkFragment = TitleMessageFragment.getInstance(TipsView.this.getResources().getString(R.string.epaysdk_phone), TipsView.this.getResources().getString(R.string.epaysdk_phone_desc));
                            break;
                        case 4:
                            sdkFragment = TitleMessageFragment.getInstance(TipsView.this.getResources().getString(R.string.epaysdk_account), new SpannableString(TipsView.this.getResources().getString(R.string.epaysdk_account_desc, BaseData.getSerivcePhone())));
                            break;
                        case 5:
                            sdkFragment = ImageMessageFragment.getInstance(TipsView.this.getResources().getString(R.string.epaysdk_cvv), TipsView.this.getResources().getString(R.string.epaysdk_cvv_desc), R.drawable.epaysdk_img_cvv);
                            break;
                        case 6:
                            sdkFragment = ImageMessageFragment.getInstance(TipsView.this.getResources().getString(R.string.epaysdk_expire), TipsView.this.getResources().getString(R.string.epaysdk_expire_desc), R.drawable.epaysdk_img_expire);
                            break;
                    }
                    LogicUtil.showFragmentInActivity(sdkFragment, TipsView.this.activity);
                }
            }
        });
    }

    public void setType(int type) {
        this.type = type;
    }
}
