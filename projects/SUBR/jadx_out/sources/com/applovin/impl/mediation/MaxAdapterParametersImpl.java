package com.applovin.impl.mediation;

import android.os.Bundle;
import com.applovin.impl.fe;
import com.applovin.impl.oe;
import com.applovin.impl.zj;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MaxAdapterParametersImpl implements MaxAdapterResponseParameters, MaxAdapterSignalCollectionParameters, MaxAdapterInitializationParameters {
    private String a;
    private Map b;
    private Bundle c;
    private Bundle d;
    private Boolean e;
    private Boolean f;
    private String g;
    private boolean h;
    private String i;
    private String j;
    private long k;
    private MaxAdFormat l;

    private MaxAdapterParametersImpl() {
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters
    public MaxAdFormat getAdFormat() {
        return this.l;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public String getAdUnitId() {
        return this.a;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public long getBidExpirationMillis() {
        return this.k;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getBidResponse() {
        return this.j;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public String getConsentString() {
        return this.g;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getCustomParameters() {
        return this.d;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Map<String, Object> getLocalExtraParameters() {
        return this.b;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getServerParameters() {
        return this.c;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getThirdPartyAdPlacementId() {
        return this.i;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean hasUserConsent() {
        return this.e;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean isAgeRestrictedUser() {
        return null;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean isDoNotSell() {
        return this.f;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean isTesting() {
        return this.h;
    }

    static MaxAdapterParametersImpl a(fe feVar) {
        MaxAdapterParametersImpl maxAdapterParametersImplA = a((oe) feVar);
        maxAdapterParametersImplA.i = feVar.T();
        maxAdapterParametersImplA.j = feVar.D();
        maxAdapterParametersImplA.k = feVar.C();
        return maxAdapterParametersImplA;
    }

    static MaxAdapterParametersImpl a(zj zjVar, String str, MaxAdFormat maxAdFormat) {
        MaxAdapterParametersImpl maxAdapterParametersImplA = a(zjVar);
        maxAdapterParametersImplA.a = str;
        maxAdapterParametersImplA.l = maxAdFormat;
        return maxAdapterParametersImplA;
    }

    static MaxAdapterParametersImpl a(oe oeVar) {
        MaxAdapterParametersImpl maxAdapterParametersImpl = new MaxAdapterParametersImpl();
        maxAdapterParametersImpl.a = oeVar.getAdUnitId();
        maxAdapterParametersImpl.e = oeVar.n();
        maxAdapterParametersImpl.f = oeVar.o();
        maxAdapterParametersImpl.g = oeVar.d();
        maxAdapterParametersImpl.b = oeVar.i();
        maxAdapterParametersImpl.c = oeVar.l();
        maxAdapterParametersImpl.d = oeVar.f();
        maxAdapterParametersImpl.h = oeVar.p();
        return maxAdapterParametersImpl;
    }
}
