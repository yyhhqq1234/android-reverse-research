package com.onesignal.common.services;

import com.google.android.gms.ads.RequestConfiguration;
import com.onesignal.core.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: ServiceRegistration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\b¨\u0006\f"}, d2 = {"Lcom/onesignal/common/services/ServiceRegistrationLambda;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/onesignal/common/services/ServiceRegistration;", "create", "Lkotlin/Function1;", "Lcom/onesignal/common/services/IServiceProvider;", "(Lkotlin/jvm/functions/Function1;)V", "obj", "Ljava/lang/Object;", "resolve", "", IronSourceConstants.EVENTS_PROVIDER, BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ServiceRegistrationLambda<T> extends ServiceRegistration<T> {
    private final Function1<IServiceProvider, T> create;
    private T obj;

    /* JADX WARN: Multi-variable type inference failed */
    public ServiceRegistrationLambda(Function1<? super IServiceProvider, ? extends T> create) {
        Intrinsics.checkNotNullParameter(create, "create");
        this.create = create;
    }

    @Override // com.onesignal.common.services.ServiceRegistration
    public Object resolve(IServiceProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        T t = this.obj;
        if (t != null) {
            return t;
        }
        T tInvoke = this.create.invoke(provider);
        this.obj = tInvoke;
        return tInvoke;
    }
}
