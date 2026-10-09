package org.json.mediationsdk.adunit.adapter.internal;

import android.content.Context;
import org.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;

/* JADX INFO: loaded from: classes3.dex */
public interface AdapterBaseInterface {
    String getAdapterVersion();

    String getNetworkSDKVersion();

    void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener);
}
