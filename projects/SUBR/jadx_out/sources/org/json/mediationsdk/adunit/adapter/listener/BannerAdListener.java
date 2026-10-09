package org.json.mediationsdk.adunit.adapter.listener;

import android.view.View;
import android.widget.FrameLayout;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener;

/* JADX INFO: loaded from: classes3.dex */
public interface BannerAdListener extends AdapterAdViewListener {
    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    void onAdLoadSuccess(View view, FrameLayout.LayoutParams layoutParams);
}
