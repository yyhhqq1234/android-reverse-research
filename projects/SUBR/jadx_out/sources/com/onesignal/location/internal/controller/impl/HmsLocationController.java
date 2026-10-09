package com.onesignal.location.internal.controller.impl;

import android.location.Location;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.NotificationCompat;
import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.location.FusedLocationProviderClient;
import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.location.LocationResult;
import com.huawei.hms.location.LocationServices;
import com.onesignal.common.events.EventProducer;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.common.threading.Waiter;
import com.onesignal.common.threading.WaiterWithValue;
import com.onesignal.core.internal.application.IApplicationLifecycleHandler;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: HmsLocationController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0016J\u0011\u0010\u0017\u001a\u00020\tH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u001aH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0007H\u0016J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lcom/onesignal/location/internal/controller/impl/HmsLocationController;", "Lcom/onesignal/location/internal/controller/ILocationController;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "(Lcom/onesignal/core/internal/application/IApplicationService;)V", NotificationCompat.CATEGORY_EVENT, "Lcom/onesignal/common/events/EventProducer;", "Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;", "hasSubscribers", "", "getHasSubscribers", "()Z", "hmsFusedLocationClient", "Lcom/huawei/hms/location/FusedLocationProviderClient;", "lastLocation", "Landroid/location/Location;", "locationHandlerThread", "Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationHandlerThread;", "locationUpdateListener", "Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;", "startStopMutex", "Lkotlinx/coroutines/sync/Mutex;", "getLastLocation", "start", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stop", "", "subscribe", "handler", "unsubscribe", "LocationHandlerThread", "LocationUpdateListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HmsLocationController implements ILocationController {
    private final IApplicationService _applicationService;
    private final EventProducer<ILocationUpdatedHandler> event;
    private FusedLocationProviderClient hmsFusedLocationClient;
    private Location lastLocation;
    private final LocationHandlerThread locationHandlerThread;
    private LocationUpdateListener locationUpdateListener;
    private final Mutex startStopMutex;

    /* JADX INFO: renamed from: com.onesignal.location.internal.controller.impl.HmsLocationController$start$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HmsLocationController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.location.internal.controller.impl.HmsLocationController", f = "HmsLocationController.kt", i = {0}, l = {46}, m = "start", n = {"wasSuccessful"}, s = {"L$0"})
    static final class C02491 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02491(Continuation<? super C02491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return HmsLocationController.this.start(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.controller.impl.HmsLocationController$stop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HmsLocationController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.location.internal.controller.impl.HmsLocationController", f = "HmsLocationController.kt", i = {0, 0}, l = {229}, m = "stop", n = {"this", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1"})
    static final class C02501 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02501(Continuation<? super C02501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return HmsLocationController.this.stop(this);
        }
    }

    public HmsLocationController(IApplicationService _applicationService) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        this._applicationService = _applicationService;
        this.locationHandlerThread = new LocationHandlerThread();
        this.startStopMutex = MutexKt.Mutex$default(false, 1, null);
        this.event = new EventProducer<>();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onesignal.location.internal.controller.ILocationController
    public Object start(Continuation<? super Boolean> continuation) {
        C02491 c02491;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof C02491) {
            c02491 = (C02491) continuation;
            if ((c02491.label & Integer.MIN_VALUE) != 0) {
                c02491.label -= Integer.MIN_VALUE;
            } else {
                c02491 = new C02491(continuation);
            }
        } else {
            c02491 = new C02491(continuation);
        }
        Object obj = c02491.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02491.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = this;
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            CoroutineDispatcher io = Dispatchers.getIO();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(booleanRef2, objectRef, null);
            c02491.L$0 = booleanRef2;
            c02491.label = 1;
            if (BuildersKt.withContext(io, anonymousClass2, c02491) == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) c02491.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2, reason: invalid class name */
    /* JADX INFO: compiled from: HmsLocationController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.location.internal.controller.impl.HmsLocationController$start$2", f = "HmsLocationController.kt", i = {0, 1}, l = {229, 81}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<HmsLocationController> $self;
        final /* synthetic */ Ref.BooleanRef $wasSuccessful;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.BooleanRef booleanRef, Ref.ObjectRef<HmsLocationController> objectRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$wasSuccessful = booleanRef;
            this.$self = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HmsLocationController.this.new AnonymousClass2(this.$wasSuccessful, this.$self, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x00a1 A[Catch: all -> 0x0131, TryCatch #0 {all -> 0x0131, blocks: (B:18:0x0070, B:20:0x0076, B:24:0x009b, B:26:0x00a1, B:27:0x00b1, B:23:0x0087), top: B:42:0x0070, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:27:0x00b1 A[Catch: all -> 0x0131, TRY_LEAVE, TryCatch #0 {all -> 0x0131, blocks: (B:18:0x0070, B:20:0x0076, B:24:0x009b, B:26:0x00a1, B:27:0x00b1, B:23:0x0087), top: B:42:0x0070, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:29:0x00ef A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:30:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:33:0x0102 A[Catch: all -> 0x002a, TryCatch #2 {all -> 0x002a, blocks: (B:7:0x0025, B:31:0x00f6, B:33:0x0102, B:35:0x0128), top: B:45:0x0025 }] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v5, types: [T, com.onesignal.common.threading.WaiterWithValue] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Mutex mutex;
            Ref.BooleanRef booleanRef;
            final HmsLocationController hmsLocationController;
            Ref.ObjectRef<HmsLocationController> objectRef;
            Mutex mutex2;
            Throwable th;
            Object objWaitForWake;
            Ref.ObjectRef<HmsLocationController> objectRef2;
            Ref.BooleanRef booleanRef2;
            Ref.BooleanRef booleanRef3;
            final HmsLocationController hmsLocationController2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    mutex = HmsLocationController.this.startStopMutex;
                    HmsLocationController hmsLocationController3 = HmsLocationController.this;
                    Ref.BooleanRef booleanRef4 = this.$wasSuccessful;
                    Ref.ObjectRef<HmsLocationController> objectRef3 = this.$self;
                    this.L$0 = mutex;
                    this.L$1 = hmsLocationController3;
                    this.L$2 = booleanRef4;
                    this.L$3 = objectRef3;
                    this.label = 1;
                    if (mutex.lock(null, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    booleanRef = booleanRef4;
                    hmsLocationController = hmsLocationController3;
                    objectRef = objectRef3;
                } else {
                    if (i != 1) {
                        if (i == 2) {
                            booleanRef2 = (Ref.BooleanRef) this.L$4;
                            objectRef2 = (Ref.ObjectRef) this.L$3;
                            booleanRef3 = (Ref.BooleanRef) this.L$2;
                            hmsLocationController2 = (HmsLocationController) this.L$1;
                            mutex2 = (Mutex) this.L$0;
                            try {
                                ResultKt.throwOnFailure(obj);
                                booleanRef2.element = ((Boolean) obj).booleanValue();
                                if (booleanRef3.element) {
                                    hmsLocationController2.event.fire(new Function1<ILocationUpdatedHandler, Unit>() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$1$4
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
                                            Location location = hmsLocationController2.lastLocation;
                                            Intrinsics.checkNotNull(location);
                                            it.onLocationChanged(location);
                                        }
                                    });
                                    HmsLocationController hmsLocationController4 = objectRef2.element;
                                    IApplicationService iApplicationService = hmsLocationController2._applicationService;
                                    FusedLocationProviderClient fusedLocationProviderClient = hmsLocationController2.hmsFusedLocationClient;
                                    Intrinsics.checkNotNull(fusedLocationProviderClient);
                                    hmsLocationController2.locationUpdateListener = new LocationUpdateListener(hmsLocationController4, iApplicationService, fusedLocationProviderClient);
                                }
                                mutex = mutex2;
                                mutex2 = mutex;
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
                    hmsLocationController = (HmsLocationController) this.L$1;
                    Mutex mutex3 = (Mutex) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    mutex = mutex3;
                }
                if (hmsLocationController.hmsFusedLocationClient == null) {
                    try {
                        hmsLocationController.hmsFusedLocationClient = LocationServices.getFusedLocationProviderClient(hmsLocationController._applicationService.getAppContext());
                        if (hmsLocationController.lastLocation != null) {
                            hmsLocationController.event.fire(new Function1<ILocationUpdatedHandler, Unit>() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$1$1
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
                                    Location location = hmsLocationController.lastLocation;
                                    Intrinsics.checkNotNull(location);
                                    it.onLocationChanged(location);
                                }
                            });
                        } else {
                            final Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
                            objectRef4.element = new WaiterWithValue();
                            FusedLocationProviderClient fusedLocationProviderClient2 = hmsLocationController.hmsFusedLocationClient;
                            Intrinsics.checkNotNull(fusedLocationProviderClient2);
                            fusedLocationProviderClient2.getLastLocation().addOnSuccessListener(new OnSuccessListener() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$$ExternalSyntheticLambda0
                                public final void onSuccess(Object obj2) {
                                    HmsLocationController.AnonymousClass2.m462invokeSuspend$lambda2$lambda0(objectRef4, hmsLocationController, (Location) obj2);
                                }
                            }).addOnFailureListener(new OnFailureListener() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$$ExternalSyntheticLambda1
                                public final void onFailure(Exception exc) {
                                    HmsLocationController.AnonymousClass2.m463invokeSuspend$lambda2$lambda1(objectRef4, exc);
                                }
                            });
                            WaiterWithValue waiterWithValue = (WaiterWithValue) objectRef4.element;
                            this.L$0 = mutex;
                            this.L$1 = hmsLocationController;
                            this.L$2 = booleanRef;
                            this.L$3 = objectRef;
                            this.L$4 = booleanRef;
                            this.label = 2;
                            objWaitForWake = waiterWithValue.waitForWake(this);
                            if (objWaitForWake == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            mutex2 = mutex;
                            obj = objWaitForWake;
                            objectRef2 = objectRef;
                            booleanRef2 = booleanRef;
                            booleanRef3 = booleanRef2;
                            hmsLocationController2 = hmsLocationController;
                            booleanRef2.element = ((Boolean) obj).booleanValue();
                            if (booleanRef3.element) {
                                hmsLocationController2.event.fire(new Function1<ILocationUpdatedHandler, Unit>() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$1$4
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
                                        Location location = hmsLocationController2.lastLocation;
                                        Intrinsics.checkNotNull(location);
                                        it.onLocationChanged(location);
                                    }
                                });
                                HmsLocationController hmsLocationController5 = objectRef2.element;
                                IApplicationService iApplicationService2 = hmsLocationController2._applicationService;
                                FusedLocationProviderClient fusedLocationProviderClient3 = hmsLocationController2.hmsFusedLocationClient;
                                Intrinsics.checkNotNull(fusedLocationProviderClient3);
                                hmsLocationController2.locationUpdateListener = new LocationUpdateListener(hmsLocationController5, iApplicationService2, fusedLocationProviderClient3);
                            }
                            mutex = mutex2;
                        }
                    } catch (Exception e) {
                        Logging.error$default("Huawei LocationServices getFusedLocationProviderClient failed! " + e, null, 2, null);
                        booleanRef.element = false;
                    }
                } else if (hmsLocationController.lastLocation != null) {
                    hmsLocationController.event.fire(new Function1<ILocationUpdatedHandler, Unit>() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$1$1
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
                            Location location = hmsLocationController.lastLocation;
                            Intrinsics.checkNotNull(location);
                            it.onLocationChanged(location);
                        }
                    });
                } else {
                    final Ref.ObjectRef objectRef5 = new Ref.ObjectRef();
                    objectRef5.element = new WaiterWithValue();
                    FusedLocationProviderClient fusedLocationProviderClient4 = hmsLocationController.hmsFusedLocationClient;
                    Intrinsics.checkNotNull(fusedLocationProviderClient4);
                    fusedLocationProviderClient4.getLastLocation().addOnSuccessListener(new OnSuccessListener() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$$ExternalSyntheticLambda0
                        public final void onSuccess(Object obj2) {
                            HmsLocationController.AnonymousClass2.m462invokeSuspend$lambda2$lambda0(objectRef5, hmsLocationController, (Location) obj2);
                        }
                    }).addOnFailureListener(new OnFailureListener() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$$ExternalSyntheticLambda1
                        public final void onFailure(Exception exc) {
                            HmsLocationController.AnonymousClass2.m463invokeSuspend$lambda2$lambda1(objectRef5, exc);
                        }
                    });
                    WaiterWithValue waiterWithValue2 = (WaiterWithValue) objectRef5.element;
                    this.L$0 = mutex;
                    this.L$1 = hmsLocationController;
                    this.L$2 = booleanRef;
                    this.L$3 = objectRef;
                    this.L$4 = booleanRef;
                    this.label = 2;
                    objWaitForWake = waiterWithValue2.waitForWake(this);
                    if (objWaitForWake == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    mutex2 = mutex;
                    obj = objWaitForWake;
                    objectRef2 = objectRef;
                    booleanRef2 = booleanRef;
                    booleanRef3 = booleanRef2;
                    hmsLocationController2 = hmsLocationController;
                    booleanRef2.element = ((Boolean) obj).booleanValue();
                    if (booleanRef3.element) {
                        hmsLocationController2.event.fire(new Function1<ILocationUpdatedHandler, Unit>() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$start$2$1$4
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
                                Location location = hmsLocationController2.lastLocation;
                                Intrinsics.checkNotNull(location);
                                it.onLocationChanged(location);
                            }
                        });
                        HmsLocationController hmsLocationController6 = objectRef2.element;
                        IApplicationService iApplicationService3 = hmsLocationController2._applicationService;
                        FusedLocationProviderClient fusedLocationProviderClient5 = hmsLocationController2.hmsFusedLocationClient;
                        Intrinsics.checkNotNull(fusedLocationProviderClient5);
                        hmsLocationController2.locationUpdateListener = new LocationUpdateListener(hmsLocationController6, iApplicationService3, fusedLocationProviderClient5);
                    }
                    mutex = mutex2;
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

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: invokeSuspend$lambda-2$lambda-0, reason: not valid java name */
        public static final void m462invokeSuspend$lambda2$lambda0(Ref.ObjectRef objectRef, HmsLocationController hmsLocationController, Location location) {
            Logging.warn$default("Huawei LocationServices getLastLocation returned location: " + location, null, 2, null);
            if (location != null) {
                hmsLocationController.lastLocation = location;
                ((WaiterWithValue) objectRef.element).wake(true);
            } else {
                ((WaiterWithValue) objectRef.element).wake(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: invokeSuspend$lambda-2$lambda-1, reason: not valid java name */
        public static final void m463invokeSuspend$lambda2$lambda1(Ref.ObjectRef objectRef, Exception exc) {
            Logging.error("Huawei LocationServices getLastLocation failed!", exc);
            ((WaiterWithValue) objectRef.element).wake(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.location.internal.controller.ILocationController
    public Object stop(Continuation<? super Unit> continuation) {
        C02501 c02501;
        HmsLocationController hmsLocationController;
        Mutex mutex;
        if (continuation instanceof C02501) {
            c02501 = (C02501) continuation;
            if ((c02501.label & Integer.MIN_VALUE) != 0) {
                c02501.label -= Integer.MIN_VALUE;
            } else {
                c02501 = new C02501(continuation);
            }
        } else {
            c02501 = new C02501(continuation);
        }
        Object obj = c02501.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02501.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Mutex mutex2 = this.startStopMutex;
            c02501.L$0 = this;
            c02501.L$1 = mutex2;
            c02501.label = 1;
            if (mutex2.lock(null, c02501) == coroutine_suspended) {
                return coroutine_suspended;
            }
            hmsLocationController = this;
            mutex = mutex2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = (Mutex) c02501.L$1;
            hmsLocationController = (HmsLocationController) c02501.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            LocationUpdateListener locationUpdateListener = hmsLocationController.locationUpdateListener;
            if (locationUpdateListener != null) {
                Intrinsics.checkNotNull(locationUpdateListener);
                locationUpdateListener.close();
                hmsLocationController.locationUpdateListener = null;
            }
            if (hmsLocationController.hmsFusedLocationClient != null) {
                hmsLocationController.hmsFusedLocationClient = null;
            }
            hmsLocationController.lastLocation = null;
            Unit unit = Unit.INSTANCE;
            return Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onesignal.location.internal.controller.ILocationController
    public Location getLastLocation() {
        FusedLocationProviderClient fusedLocationProviderClient = this.hmsFusedLocationClient;
        if (fusedLocationProviderClient == null) {
            return null;
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ThreadUtilsKt.suspendifyOnThread$default(0, new AnonymousClass1(fusedLocationProviderClient, objectRef, null), 1, null);
        return (Location) objectRef.element;
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.controller.impl.HmsLocationController$getLastLocation$1, reason: invalid class name */
    /* JADX INFO: compiled from: HmsLocationController.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.location.internal.controller.impl.HmsLocationController$getLastLocation$1", f = "HmsLocationController.kt", i = {}, l = {139}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ FusedLocationProviderClient $locationClient;
        final /* synthetic */ Ref.ObjectRef<Location> $retVal;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FusedLocationProviderClient fusedLocationProviderClient, Ref.ObjectRef<Location> objectRef, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$locationClient = fusedLocationProviderClient;
            this.$retVal = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$locationClient, this.$retVal, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [T, com.onesignal.common.threading.Waiter] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = new Waiter();
                Task lastLocation = this.$locationClient.getLastLocation();
                final Ref.ObjectRef<Location> objectRef2 = this.$retVal;
                lastLocation.addOnSuccessListener(new OnSuccessListener() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$getLastLocation$1$$ExternalSyntheticLambda0
                    public final void onSuccess(Object obj2) throws Exception {
                        HmsLocationController.AnonymousClass1.m460invokeSuspend$lambda0(objectRef, objectRef2, (Location) obj2);
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.onesignal.location.internal.controller.impl.HmsLocationController$getLastLocation$1$$ExternalSyntheticLambda1
                    public final void onFailure(Exception exc) throws Exception {
                        HmsLocationController.AnonymousClass1.m461invokeSuspend$lambda1(objectRef, exc);
                    }
                });
                this.label = 1;
                if (((Waiter) objectRef.element).waitForWake(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: invokeSuspend$lambda-0, reason: not valid java name */
        public static final void m460invokeSuspend$lambda0(Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Location location) throws Exception {
            Logging.warn$default("Huawei LocationServices getLastLocation returned location: " + location, null, 2, null);
            if (location == 0) {
                ((Waiter) objectRef.element).wake();
            } else {
                objectRef2.element = location;
                ((Waiter) objectRef.element).wake();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: invokeSuspend$lambda-1, reason: not valid java name */
        public static final void m461invokeSuspend$lambda1(Ref.ObjectRef objectRef, Exception exc) throws Exception {
            Logging.error("Huawei LocationServices getLastLocation failed!", exc);
            ((Waiter) objectRef.element).wake();
        }
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

    /* JADX INFO: compiled from: HmsLocationController.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;", "Lcom/huawei/hms/location/LocationCallback;", "Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;", "Ljava/io/Closeable;", "_parent", "Lcom/onesignal/location/internal/controller/impl/HmsLocationController;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "huaweiFusedLocationProviderClient", "Lcom/huawei/hms/location/FusedLocationProviderClient;", "(Lcom/onesignal/location/internal/controller/impl/HmsLocationController;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/huawei/hms/location/FusedLocationProviderClient;)V", "hasExistingRequest", "", "close", "", "onFocus", "firedOnSubscribe", "onLocationResult", "locationResult", "Lcom/huawei/hms/location/LocationResult;", "onUnfocused", "refreshRequest", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class LocationUpdateListener extends LocationCallback implements IApplicationLifecycleHandler, Closeable {
        private final IApplicationService _applicationService;
        private final HmsLocationController _parent;
        private boolean hasExistingRequest;
        private final FusedLocationProviderClient huaweiFusedLocationProviderClient;

        public LocationUpdateListener(HmsLocationController _parent, IApplicationService _applicationService, FusedLocationProviderClient huaweiFusedLocationProviderClient) {
            Intrinsics.checkNotNullParameter(_parent, "_parent");
            Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
            Intrinsics.checkNotNullParameter(huaweiFusedLocationProviderClient, "huaweiFusedLocationProviderClient");
            this._parent = _parent;
            this._applicationService = _applicationService;
            this.huaweiFusedLocationProviderClient = huaweiFusedLocationProviderClient;
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
                this.huaweiFusedLocationProviderClient.removeLocationUpdates(this);
            }
        }

        public void onLocationResult(LocationResult locationResult) {
            Intrinsics.checkNotNullParameter(locationResult, "locationResult");
            Logging.debug$default("HMSLocationController onLocationResult: " + locationResult, null, 2, null);
            this._parent.lastLocation = locationResult.getLastLocation();
        }

        private final void refreshRequest() {
            if (this.hasExistingRequest) {
                this.huaweiFusedLocationProviderClient.removeLocationUpdates(this);
            }
            long j = this._applicationService.isInForeground() ? LocationConstants.FOREGROUND_UPDATE_TIME_MS : LocationConstants.BACKGROUND_UPDATE_TIME_MS;
            LocationRequest priority = LocationRequest.create().setFastestInterval(j).setInterval(j).setMaxWaitTime((long) (j * 1.5d)).setPriority(102);
            Logging.debug$default("HMSLocationController Huawei LocationServices requestLocationUpdates!", null, 2, null);
            this.huaweiFusedLocationProviderClient.requestLocationUpdates(priority, this, this._parent.locationHandlerThread.getLooper());
            this.hasExistingRequest = true;
        }
    }

    /* JADX INFO: compiled from: HmsLocationController.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationHandlerThread;", "Landroid/os/HandlerThread;", "()V", "mHandler", "Landroid/os/Handler;", "getMHandler", "()Landroid/os/Handler;", "setMHandler", "(Landroid/os/Handler;)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class LocationHandlerThread extends HandlerThread {
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
}
