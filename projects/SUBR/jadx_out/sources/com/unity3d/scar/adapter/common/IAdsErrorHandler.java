package com.unity3d.scar.adapter.common;

import com.unity3d.scar.adapter.common.IUnityAdsError;

/* JADX INFO: loaded from: classes3.dex */
public interface IAdsErrorHandler<T extends IUnityAdsError> {
    void handleError(T t);
}
