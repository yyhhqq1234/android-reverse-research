package org.json.mediationsdk.adunit.adapter.internal;

import android.app.Activity;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;

/* JADX INFO: loaded from: classes3.dex */
public interface AdapterAdFullScreenInterface<Listener extends AdapterAdListener> {
    boolean isAdAvailable(AdData adData);

    void loadAd(AdData adData, Activity activity, Listener listener);

    void showAd(AdData adData, Listener listener);
}
