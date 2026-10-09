package com.applovin.impl;

import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface kg {
    lg getAdEventTracker();

    String getOpenMeasurementContentUrl();

    String getOpenMeasurementCustomReferenceData();

    List<VerificationScriptResource> getOpenMeasurementVerificationScriptResources();

    boolean isOpenMeasurementEnabled();
}
