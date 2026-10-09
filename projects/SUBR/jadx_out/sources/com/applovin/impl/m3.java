package com.applovin.impl;

import com.applovin.sdk.AppLovinSdkConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class m3 {
    private final AppLovinSdkConfiguration.ConsentFlowUserGeography a;

    public String toString() {
        return "CmpAdapterParameters(debugUserGeography=" + a() + ")";
    }

    protected boolean a(Object obj) {
        return obj instanceof m3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m3)) {
            return false;
        }
        m3 m3Var = (m3) obj;
        if (!m3Var.a(this)) {
            return false;
        }
        AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeographyA = a();
        AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeographyA2 = m3Var.a();
        return consentFlowUserGeographyA != null ? consentFlowUserGeographyA.equals(consentFlowUserGeographyA2) : consentFlowUserGeographyA2 == null;
    }

    public int hashCode() {
        AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeographyA = a();
        return (consentFlowUserGeographyA == null ? 43 : consentFlowUserGeographyA.hashCode()) + 59;
    }

    public m3(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography) {
        this.a = consentFlowUserGeography;
    }

    public AppLovinSdkConfiguration.ConsentFlowUserGeography a() {
        return this.a;
    }
}
