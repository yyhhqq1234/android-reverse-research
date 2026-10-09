package com.applovin.impl.sdk.nativeAd;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.tp;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinOptionsView extends FrameLayout implements View.OnClickListener {
    private final Uri privacyDestinationUri;
    private final j sdk;

    public AppLovinOptionsView(AppLovinNativeAdImpl appLovinNativeAdImpl, j jVar, Context context) {
        super(context);
        this.sdk = jVar;
        this.privacyDestinationUri = appLovinNativeAdImpl.getPrivacyDestinationUri();
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        Uri privacyIconUri = appLovinNativeAdImpl.getPrivacyIconUri();
        if (privacyIconUri != null) {
            ImageViewUtils.setImageUri(imageView, privacyIconUri, jVar);
        } else {
            imageView.setImageResource(R.drawable.applovin_ic_privacy_icon_layered_list);
        }
        addView(imageView);
        setOnClickListener(this);
    }

    public void destroy() {
        setOnClickListener(null);
        removeAllViews();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        tp.a(this.privacyDestinationUri, j.m(), this.sdk);
    }
}
