package com.onesignal.location.internal.controller.impl;

import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.onesignal.common.events.EventProducer;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.internal.application.IApplicationLifecycleHandler;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.internal.prompt.InAppMessagePromptTypes;
import com.onesignal.location.BuildConfig;
import com.onesignal.location.internal.common.LocationConstants;
import com.onesignal.location.internal.controller.ILocationController;
import com.onesignal.location.internal.controller.ILocationUpdatedHandler;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: GmsLocationController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0004\"#$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0011H\u0002J\u0011\u0010\u001c\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001dJ\u0011\u0010\u001e\u001a\u00020\u001aH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\tH\u0016J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"Lcom/onesignal/location/internal/controller/impl/GmsLocationController;", "Lcom/onesignal/location/internal/controller/ILocationController;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_fusedLocationApiWrapper", "Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;)V", NotificationCompat.CATEGORY_EVENT, "Lcom/onesignal/common/events/EventProducer;", "Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;", "googleApiClient", "Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;", "hasSubscribers", "", "getHasSubscribers", "()Z", "lastLocation", "Landroid/location/Location;", "locationHandlerThread", "Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;", "locationUpdateListener", "Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;", "startStopMutex", "Lkotlinx/coroutines/sync/Mutex;", "getLastLocation", "setLocationAndFire", "", InAppMessagePromptTypes.LOCATION_PROMPT_KEY, "start", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stop", "subscribe", "handler", "unsubscribe", "Companion", "GoogleApiClientListener", "LocationHandlerThread", "LocationUpdateListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GmsLocationController implements ILocationController {
    private final IApplicationService _applicationService;
    private final IFusedLocationApiWrapper _fusedLocationApiWrapper;
    private final EventProducer<ILocationUpdatedHandler> event;
    private GoogleApiClientCompatProxy googleApiClient;
    private Location lastLocation;
    private final LocationHandlerThread locationHandlerThread;
    private LocationUpdateListener locationUpdateListener;
    private final Mutex startStopMutex;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int API_FALLBACK_TIME = 30000;

    /* JADX INFO: renamed from: com.onesignal.location.internal.controller.impl.GmsLocationController$start$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GmsLocationController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.location.internal.controller.impl.GmsLocationController", f = "GmsLocationController.kt", i = {0}, l = {48}, m = "start", n = {"wasSuccessful"}, s = {"L$0"})
    static final class C02471 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02471(Continuation<? super C02471> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GmsLocationController.this.start(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.controller.impl.GmsLocationController$stop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GmsLocationController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.location.internal.controller.impl.GmsLocationController", f = "GmsLocationController.kt", i = {0, 0}, l = {IronSourceConstants.INTERSTITIAL_DAILY_CAPPED}, m = "stop", n = {"this", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1"})
    static final class C02481 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02481(Continuation<? super C02481> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GmsLocationController.this.stop(this);
        }
    }

    public GmsLocationController(IApplicationService _applicationService, IFusedLocationApiWrapper _fusedLocationApiWrapper) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_fusedLocationApiWrapper, "_fusedLocationApiWrapper");
        this._applicationService = _applicationService;
        this._fusedLocationApiWrapper = _fusedLocationApiWrapper;
        this.locationHandlerThread = new LocationHandlerThread();
        this.startStopMutex = MutexKt.Mutex$default(false, 1, null);
        this.event = new EventProducer<>();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onesignal.location.internal.controller.ILocationController
    public Object start(Continuation<? super Boolean> continuation) {
        C02471 c02471;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof C02471) {
            c02471 = (C02471) continuation;
            if ((c02471.label & Integer.MIN_VALUE) != 0) {
                c02471.label -= Integer.MIN_VALUE;
            } else {
                c02471 = new C02471(continuation);
            }
        } else {
            c02471 = new C02471(continuation);
        }
        Object obj = c02471.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02471.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = this;
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            CoroutineDispatcher io = Dispatchers.getIO();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(booleanRef2, objectRef, null);
            c02471.L$0 = booleanRef2;
            c02471.label = 1;
            if (BuildersKt.withContext(io, anonymousClass2, c02471) == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) c02471.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.controller.impl.GmsLocationController$start$2, reason: invalid class name */
    /* JADX INFO: compiled from: GmsLocationController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.location.internal.controller.impl.GmsLocationController$start$2", f = "GmsLocationController.kt", i = {0, 1}, l = {IronSourceConstants.INTERSTITIAL_DAILY_CAPPED, 62}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<GmsLocationController> $self;
        final /* synthetic */ Ref.BooleanRef $wasSuccessful;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.BooleanRef booleanRef, Ref.ObjectRef<GmsLocationController> objectRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$wasSuccessful = booleanRef;
            this.$self = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GmsLocationController.this.new AnonymousClass2(this.$wasSuccessful, this.$self, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Mutex mutex;
            final GmsLocationController gmsLocationController;
            Ref.BooleanRef booleanRef;
            Ref.ObjectRef<GmsLocationController> objectRef;
            Mutex mutex2;
            Throwable th;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    mutex = GmsLocationController.this.startStopMutex;
                    gmsLocationController = GmsLocationController.this;
                    booleanRef = this.$wasSuccessful;
                    objectRef = this.$self;
                    this.L$0 = mutex;
                    this.L$1 = gmsLocationController;
                    this.L$2 = booleanRef;
                    this.L$3 = objectRef;
                    this.label = 1;
                    if (mutex.lock(null, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        if (i == 2) {
                            mutex2 = (Mutex) this.L$0;
                            try {
                                try {
                                    ResultKt.throwOnFailure(obj);
                                } catch (TimeoutCancellationException unused) {
                                    Logging.warn$default("Location permission exists but GoogleApiClient timed out. Maybe related to mismatch google-play aar versions.", null, 2, null);
                                }
                                Unit unit = Unit.INSTANCE;
                                mutex2.unlock(null);
                                return Unit.INSTANCE;
                            } catch (Throwable th2) {
                                th = th2;
                                mutex2.unlock(null);
                                throw th;
                            }
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    objectRef = (Ref.ObjectRef) this.L$3;
                    booleanRef = (Ref.BooleanRef) this.L$2;
                    gmsLocationController = (GmsLocationController) this.L$1;
                    Mutex mutex3 = (Mutex) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    mutex = mutex3;
                }
                if (gmsLocationController.googleApiClient != null) {
                    if (gmsLocationController.lastLocation != null) {
                        gmsLocationController.event.fire(new Function1<ILocationUpdatedHandler, Unit>() { // from class: com.onesignal.location.internal.controller.impl.GmsLocationController$start$2$1$1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(ILocationUpdatedHandler iLocationUpdatedHandler) {
                                invoke2(iLocationUpdatedHandler);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(ILocationUpdatedHandler it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                Location location = gmsLocationController.lastLocation;
                                Intrinsics.checkNotNull(location);
                                it.onLocationChanged(location);
                            }
                        });
                    } else {
                        Location lastLocation = gmsLocationController.getLastLocation();
                        if (lastLocation != null) {
                            gmsLocationController.setLocationAndFire(lastLocation);
                        }
                    }
                    booleanRef.element = true;
                } else {
                    try {
                        long api_fallback_time = GmsLocationController.INSTANCE.getAPI_FALLBACK_TIME();
                        GmsLocationController$start$2$1$2 gmsLocationController$start$2$1$2 = new GmsLocationController$start$2$1$2(objectRef, gmsLocationController, booleanRef, null);
                        this.L$0 = mutex;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 2;
                        if (TimeoutKt.withTimeout(api_fallback_time, gmsLocationController$start$2$1$2, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } catch (TimeoutCancellationException unused2) {
                        mutex2 = mutex;
                        Logging.warn$default("Location permission exists but GoogleApiClient timed out. Maybe related to mismatch google-play aar versions.", null, 2, null);
                    }
                }
                mutex2 = mutex;
                Unit unit2 = Unit.INSTANCE;
                mutex2.unlock(null);
                return Unit.INSTANCE;
            } catch (Throwable th3) {
                mutex2 = mutex;
                th = th3;
                mutex2.unlock(null);
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.location.internal.controller.ILocationController
    public Object stop(Continuation<? super Unit> continuation) {
        C02481 c02481;
        GmsLocationController gmsLocationController;
        Mutex mutex;
        if (continuation instanceof C02481) {
            c02481 = (C02481) continuation;
            if ((c02481.label & Integer.MIN_VALUE) != 0) {
                c02481.label -= Integer.MIN_VALUE;
            } else {
                c02481 = new C02481(continuation);
            }
        } else {
            c02481 = new C02481(continuation);
        }
        Object obj = c02481.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02481.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.startStopMutex;
            c02481.L$0 = this;
            c02481.L$1 = mutex2;
            c02481.label = 1;
            if (mutex2.lock(null, c02481) == coroutine_suspended) {
                return coroutine_suspended;
            }
            gmsLocationController = this;
            mutex = mutex2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = (Mutex) c02481.L$1;
            gmsLocationController = (GmsLocationController) c02481.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            LocationUpdateListener locationUpdateListener = gmsLocationController.locationUpdateListener;
            if (locationUpdateListener != null) {
                Intrinsics.checkNotNull(locationUpdateListener);
                locationUpdateListener.close();
                gmsLocationController.locationUpdateListener = null;
            }
            GoogleApiClientCompatProxy googleApiClientCompatProxy = gmsLocationController.googleApiClient;
            if (googleApiClientCompatProxy != null) {
                Intrinsics.checkNotNull(googleApiClientCompatProxy);
                googleApiClientCompatProxy.disconnect();
                gmsLocationController.googleApiClient = null;
            }
            gmsLocationController.lastLocation = null;
            Unit unit = Unit.INSTANCE;
            return Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // com.onesignal.location.internal.controller.ILocationController
    public Location getLastLocation() {
        GoogleApiClient realInstance;
        GoogleApiClientCompatProxy googleApiClientCompatProxy = this.googleApiClient;
        if (googleApiClientCompatProxy == null || (realInstance = googleApiClientCompatProxy.getRealInstance()) == null) {
            return null;
        }
        return this._fusedLocationApiWrapper.getLastLocation(realInstance);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void subscribe(ILocationUpdatedHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.event.subscribe(handler);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void unsubscribe(ILocationUpdatedHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.event.unsubscribe(handler);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public boolean getHasSubscribers() {
        return this.event.getHasSubscribers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setLocationAndFire(final Location location) {
        Logging.debug$default("GMSLocationController lastLocation: " + this.lastLocation, null, 2, null);
        this.lastLocation = location;
        this.event.fire(new Function1<ILocationUpdatedHandler, Unit>() { // from class: com.onesignal.location.internal.controller.impl.GmsLocationController.setLocationAndFire.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ILocationUpdatedHandler iLocationUpdatedHandler) {
                invoke2(iLocationUpdatedHandler);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ILocationUpdatedHandler it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onLocationChanged(location);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: GmsLocationController.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/onesignal/location/internal/controller/impl/GmsLocationController$GoogleApiClientListener;", "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;", "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;", "_parent", "Lcom/onesignal/location/internal/controller/impl/GmsLocationController;", "(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)V", "onConnected", "", "bundle", "Landroid/os/Bundle;", "onConnectionFailed", "connectionResult", "Lcom/google/android/gms/common/ConnectionResult;", "onConnectionSuspended", "i", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    static final class GoogleApiClientListener implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private final GmsLocationController _parent;

        public GoogleApiClientListener(GmsLocationController _parent) {
            Intrinsics.checkNotNullParameter(_parent, "_parent");
            this._parent = _parent;
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            Logging.debug$default("GMSLocationController GoogleApiClientListener onConnected", null, 2, null);
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            Logging.debug$default("GMSLocationController GoogleApiClientListener onConnectionSuspended i: " + i, null, 2, null);
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            Intrinsics.checkNotNullParameter(connectionResult, "connectionResult");
            Logging.debug$default("GMSLocationController GoogleApiClientListener onConnectionSuspended connectionResult: " + connectionResult, null, 2, null);
            ThreadUtilsKt.suspendifyOnThread$default(0, new GmsLocationController$GoogleApiClientListener$onConnectionFailed$1(this, null), 1, null);
        }
    }

    /* JADX INFO: compiled from: GmsLocationController.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0010H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;", "Lcom/google/android/gms/location/LocationListener;", "Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;", "Ljava/io/Closeable;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_parent", "Lcom/onesignal/location/internal/controller/impl/GmsLocationController;", "googleApiClient", "Lcom/google/android/gms/common/api/GoogleApiClient;", "_fusedLocationApiWrapper", "Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/internal/controller/impl/GmsLocationController;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;)V", "hasExistingRequest", "", "close", "", "onFocus", "firedOnSubscribe", "onLocationChanged", InAppMessagePromptTypes.LOCATION_PROMPT_KEY, "Landroid/location/Location;", "onUnfocused", "refreshRequest", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class LocationUpdateListener implements LocationListener, IApplicationLifecycleHandler, Closeable {
        private final IApplicationService _applicationService;
        private final IFusedLocationApiWrapper _fusedLocationApiWrapper;
        private final GmsLocationController _parent;
        private final GoogleApiClient googleApiClient;
        private boolean hasExistingRequest;

        public LocationUpdateListener(IApplicationService _applicationService, GmsLocationController _parent, GoogleApiClient googleApiClient, IFusedLocationApiWrapper _fusedLocationApiWrapper) throws Exception {
            Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
            Intrinsics.checkNotNullParameter(_parent, "_parent");
            Intrinsics.checkNotNullParameter(googleApiClient, "googleApiClient");
            Intrinsics.checkNotNullParameter(_fusedLocationApiWrapper, "_fusedLocationApiWrapper");
            this._applicationService = _applicationService;
            this._parent = _parent;
            this.googleApiClient = googleApiClient;
            this._fusedLocationApiWrapper = _fusedLocationApiWrapper;
            if (!googleApiClient.isConnected()) {
                throw new Exception("googleApiClient not connected, cannot listen!");
            }
            _applicationService.addApplicationLifecycleHandler(this);
            refreshRequest();
        }

        @Override // com.onesignal.core.internal.application.IApplicationLifecycleHandler
        public void onFocus(boolean firedOnSubscribe) {
            Logging.log(LogLevel.DEBUG, "LocationUpdateListener.onFocus()");
            refreshRequest();
        }

        @Override // com.onesignal.core.internal.application.IApplicationLifecycleHandler
        public void onUnfocused() {
            Logging.log(LogLevel.DEBUG, "LocationUpdateListener.onUnfocused()");
            refreshRequest();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this._applicationService.removeApplicationLifecycleHandler(this);
            if (this.hasExistingRequest) {
                this._fusedLocationApiWrapper.cancelLocationUpdates(this.googleApiClient, this);
            }
        }

        private final void refreshRequest() {
            if (!this.googleApiClient.isConnected()) {
                Logging.warn$default("Attempt to refresh location request but not currently connected!", null, 2, null);
                return;
            }
            if (this.hasExistingRequest) {
                this._fusedLocationApiWrapper.cancelLocationUpdates(this.googleApiClient, this);
            }
            long j = this._applicationService.isInForeground() ? LocationConstants.FOREGROUND_UPDATE_TIME_MS : LocationConstants.BACKGROUND_UPDATE_TIME_MS;
            LocationRequest locationRequest = LocationRequest.create().setFastestInterval(j).setInterval(j).setMaxWaitTime((long) (j * 1.5d)).setPriority(102);
            Logging.debug$default("GMSLocationController GoogleApiClient requestLocationUpdates!", null, 2, null);
            IFusedLocationApiWrapper iFusedLocationApiWrapper = this._fusedLocationApiWrapper;
            GoogleApiClient googleApiClient = this.googleApiClient;
            Intrinsics.checkNotNullExpressionValue(locationRequest, "locationRequest");
            iFusedLocationApiWrapper.requestLocationUpdates(googleApiClient, locationRequest, this);
            this.hasExistingRequest = true;
        }

        public void onLocationChanged(Location location) {
            Intrinsics.checkNotNullParameter(location, "location");
            Logging.debug$default("GMSLocationController onLocationChanged: " + location, null, 2, null);
            this._parent.setLocationAndFire(location);
        }
    }

    /* JADX INFO: compiled from: GmsLocationController.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0004\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;", "Landroid/os/HandlerThread;", "()V", "mHandler", "Landroid/os/Handler;", "getMHandler", "()Landroid/os/Handler;", "setMHandler", "(Landroid/os/Handler;)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    protected static final class LocationHandlerThread extends HandlerThread {
        private Handler mHandler;

        public LocationHandlerThread() {
            super("OSH_LocationHandlerThread");
            start();
            this.mHandler = new Handler(getLooper());
        }

        public final Handler getMHandler() {
            return this.mHandler;
        }

        public final void setMHandler(Handler handler) {
            Intrinsics.checkNotNullParameter(handler, "<set-?>");
            this.mHandler = handler;
        }
    }

    /* JADX INFO: compiled from: GmsLocationController.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/onesignal/location/internal/controller/impl/GmsLocationController$Companion;", "", "()V", "API_FALLBACK_TIME", "", "getAPI_FALLBACK_TIME", "()I", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getAPI_FALLBACK_TIME() {
            return GmsLocationController.API_FALLBACK_TIME;
        }
    }
}
