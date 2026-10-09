package org.json.mediationsdk.adunit.adapter.internal.listener;

import org.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;

/* JADX INFO: loaded from: classes3.dex */
public interface AdapterAdListener {
    void onAdClicked();

    void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str);

    void onAdLoadSuccess();

    void onAdOpened();
}
