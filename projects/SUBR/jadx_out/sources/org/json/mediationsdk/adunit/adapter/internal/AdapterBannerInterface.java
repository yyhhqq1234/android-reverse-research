package org.json.mediationsdk.adunit.adapter.internal;

import android.app.Activity;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;

/* JADX INFO: loaded from: classes3.dex */
public interface AdapterBannerInterface<Listener extends AdapterAdListener> {
    void destroyAd(AdData adData);

    void loadAd(AdData adData, Activity activity, ISBannerSize iSBannerSize, Listener listener);
}
