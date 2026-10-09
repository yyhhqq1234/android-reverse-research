package com.onesignal.location.internal.controller.impl;

import android.location.Location;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.onesignal.debug.internal.logging.Logging;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: GmsLocationController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.onesignal.location.internal.controller.impl.GmsLocationController$start$2$1$2", f = "GmsLocationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class GmsLocationController$start$2$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<GmsLocationController> $self;
    final /* synthetic */ Ref.BooleanRef $wasSuccessful;
    int label;
    final /* synthetic */ GmsLocationController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GmsLocationController$start$2$1$2(Ref.ObjectRef<GmsLocationController> objectRef, GmsLocationController gmsLocationController, Ref.BooleanRef booleanRef, Continuation<? super GmsLocationController$start$2$1$2> continuation) {
        super(2, continuation);
        this.$self = objectRef;
        this.this$0 = gmsLocationController;
        this.$wasSuccessful = booleanRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GmsLocationController$start$2$1$2(this.$self, this.this$0, this.$wasSuccessful, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((GmsLocationController$start$2$1$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Location lastLocation;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        GmsLocationController.GoogleApiClientListener googleApiClientListener = new GmsLocationController.GoogleApiClientListener(this.$self.element);
        GoogleApiClient googleApiClient = new GoogleApiClient.Builder(this.this$0._applicationService.getAppContext()).addApi(LocationServices.API).addConnectionCallbacks(googleApiClientListener).addOnConnectionFailedListener(googleApiClientListener).setHandler(this.this$0.locationHandlerThread.getMHandler()).build();
        Intrinsics.checkNotNullExpressionValue(googleApiClient, "googleApiClient");
        GoogleApiClientCompatProxy googleApiClientCompatProxy = new GoogleApiClientCompatProxy(googleApiClient);
        ConnectionResult connectionResultBlockingConnect = googleApiClientCompatProxy.blockingConnect();
        boolean z = false;
        if (connectionResultBlockingConnect != null && connectionResultBlockingConnect.isSuccess()) {
            z = true;
        }
        if (z) {
            if (this.this$0.lastLocation == null && (lastLocation = this.this$0._fusedLocationApiWrapper.getLastLocation(googleApiClient)) != null) {
                this.this$0.setLocationAndFire(lastLocation);
            }
            this.$self.element.locationUpdateListener = new GmsLocationController.LocationUpdateListener(this.this$0._applicationService, this.$self.element, googleApiClientCompatProxy.getRealInstance(), this.this$0._fusedLocationApiWrapper);
            this.$self.element.googleApiClient = googleApiClientCompatProxy;
            this.$wasSuccessful.element = true;
        } else {
            StringBuilder sb = new StringBuilder("GMSLocationController connection to GoogleApiService failed: (");
            sb.append(connectionResultBlockingConnect != null ? Boxing.boxInt(connectionResultBlockingConnect.getErrorCode()) : null);
            sb.append(") ");
            sb.append(connectionResultBlockingConnect != null ? connectionResultBlockingConnect.getErrorMessage() : null);
            Logging.debug$default(sb.toString(), null, 2, null);
        }
        return Unit.INSTANCE;
    }
}
