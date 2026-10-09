package com.onesignal.location.internal;

import android.content.pm.PackageManager;
import android.os.Build;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.preferences.IPreferencesService;
import com.onesignal.core.internal.preferences.PreferenceOneSignalKeys;
import com.onesignal.core.internal.preferences.PreferenceStores;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.location.BuildConfig;
import com.onesignal.location.ILocationManager;
import com.onesignal.location.internal.capture.ILocationCapturer;
import com.onesignal.location.internal.common.LocationConstants;
import com.onesignal.location.internal.common.LocationUtils;
import com.onesignal.location.internal.controller.ILocationController;
import com.onesignal.location.internal.permissions.ILocationPermissionChangedHandler;
import com.onesignal.location.internal.permissions.LocationPermissionController;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: LocationManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B-\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0019\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0010H\u0016J\u0011\u0010\u001c\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u001aH\u0016J\u0011\u0010\u001f\u001a\u00020\u001aH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00108V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lcom/onesignal/location/internal/LocationManager;", "Lcom/onesignal/location/ILocationManager;", "Lcom/onesignal/core/internal/startup/IStartableService;", "Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_capturer", "Lcom/onesignal/location/internal/capture/ILocationCapturer;", "_locationController", "Lcom/onesignal/location/internal/controller/ILocationController;", "_locationPermissionController", "Lcom/onesignal/location/internal/permissions/LocationPermissionController;", "_prefs", "Lcom/onesignal/core/internal/preferences/IPreferencesService;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/internal/capture/ILocationCapturer;Lcom/onesignal/location/internal/controller/ILocationController;Lcom/onesignal/location/internal/permissions/LocationPermissionController;Lcom/onesignal/core/internal/preferences/IPreferencesService;)V", "_isShared", "", "value", "isShared", "()Z", "setShared", "(Z)V", "backgroundLocationPermissionLogic", "fallbackToSettings", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onLocationPermissionChanged", "", "enabled", "requestPermission", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "start", "startGetLocation", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationManager implements ILocationManager, IStartableService, ILocationPermissionChangedHandler {
    private final IApplicationService _applicationService;
    private final ILocationCapturer _capturer;
    private boolean _isShared;
    private final ILocationController _locationController;
    private final LocationPermissionController _locationPermissionController;
    private final IPreferencesService _prefs;

    /* JADX INFO: renamed from: com.onesignal.location.internal.LocationManager$requestPermission$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocationManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.location.internal.LocationManager", f = "LocationManager.kt", i = {0}, l = {79}, m = "requestPermission", n = {"result"}, s = {"L$0"})
    static final class C02441 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02441(Continuation<? super C02441> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LocationManager.this.requestPermission(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.LocationManager$startGetLocation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocationManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.location.internal.LocationManager", f = "LocationManager.kt", i = {}, l = {195}, m = "startGetLocation", n = {}, s = {})
    static final class C02461 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02461(Continuation<? super C02461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LocationManager.this.startGetLocation(this);
        }
    }

    public LocationManager(IApplicationService _applicationService, ILocationCapturer _capturer, ILocationController _locationController, LocationPermissionController _locationPermissionController, IPreferencesService _prefs) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_capturer, "_capturer");
        Intrinsics.checkNotNullParameter(_locationController, "_locationController");
        Intrinsics.checkNotNullParameter(_locationPermissionController, "_locationPermissionController");
        Intrinsics.checkNotNullParameter(_prefs, "_prefs");
        this._applicationService = _applicationService;
        this._capturer = _capturer;
        this._locationController = _locationController;
        this._locationPermissionController = _locationPermissionController;
        this._prefs = _prefs;
        Boolean bool = _prefs.getBool(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_LOCATION_SHARED, false);
        Intrinsics.checkNotNull(bool);
        this._isShared = bool.booleanValue();
    }

    @Override // com.onesignal.location.ILocationManager
    /* JADX INFO: renamed from: isShared, reason: from getter */
    public boolean get_isShared() {
        return this._isShared;
    }

    @Override // com.onesignal.location.ILocationManager
    public void setShared(boolean z) {
        Logging.debug$default("LocationManager.setIsShared(value: " + z + ')', null, 2, null);
        this._prefs.saveBool(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_LOCATION_SHARED, Boolean.valueOf(z));
        this._isShared = z;
        onLocationPermissionChanged(z);
    }

    @Override // com.onesignal.core.internal.startup.IStartableService
    public void start() {
        this._locationPermissionController.subscribe((ILocationPermissionChangedHandler) this);
        if (LocationUtils.INSTANCE.hasLocationPermission(this._applicationService.getAppContext())) {
            ThreadUtilsKt.suspendifyOnThread$default(0, new C02451(null), 1, null);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.LocationManager$start$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LocationManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.location.internal.LocationManager$start$1", f = "LocationManager.kt", i = {}, l = {45}, m = "invokeSuspend", n = {}, s = {})
    static final class C02451 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        C02451(Continuation<? super C02451> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return LocationManager.this.new C02451(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02451) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (LocationManager.this.startGetLocation(this) == coroutine_suspended) {
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
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.LocationManager$onLocationPermissionChanged$1, reason: invalid class name */
    /* JADX INFO: compiled from: LocationManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.location.internal.LocationManager$onLocationPermissionChanged$1", f = "LocationManager.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return LocationManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (LocationManager.this.startGetLocation(this) == coroutine_suspended) {
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
    }

    @Override // com.onesignal.location.internal.permissions.ILocationPermissionChangedHandler
    public void onLocationPermissionChanged(boolean enabled) {
        if (enabled) {
            ThreadUtilsKt.suspendifyOnThread$default(0, new AnonymousClass1(null), 1, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.location.ILocationManager
    public Object requestPermission(Continuation<? super Boolean> continuation) {
        C02441 c02441;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof C02441) {
            c02441 = (C02441) continuation;
            if ((c02441.label & Integer.MIN_VALUE) != 0) {
                c02441.label -= Integer.MIN_VALUE;
            } else {
                c02441 = new C02441(continuation);
            }
        } else {
            c02441 = new C02441(continuation);
        }
        Object obj = c02441.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02441.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Logging.log(LogLevel.DEBUG, "LocationManager.requestPermission()");
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            MainCoroutineDispatcher main = Dispatchers.getMain();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(booleanRef2, null);
            c02441.L$0 = booleanRef2;
            c02441.label = 1;
            if (BuildersKt.withContext(main, anonymousClass2, c02441) == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) c02441.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    /* JADX INFO: renamed from: com.onesignal.location.internal.LocationManager$requestPermission$2, reason: invalid class name */
    /* JADX INFO: compiled from: LocationManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.location.internal.LocationManager$requestPermission$2", f = "LocationManager.kt", i = {}, l = {109, IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, 155, 158}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        final /* synthetic */ Ref.BooleanRef $result;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.BooleanRef booleanRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$result = booleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LocationManager.this.new AnonymousClass2(this.$result, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws PackageManager.NameNotFoundException {
            boolean zHasPermission;
            Object objBackgroundLocationPermissionLogic;
            Ref.BooleanRef booleanRef;
            Ref.BooleanRef booleanRef2;
            Object objPrompt;
            Ref.BooleanRef booleanRef3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            boolean zBooleanValue = true;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String str = null;
                if (!LocationManager.this.get_isShared()) {
                    Logging.warn$default("Requesting location permission, but location sharing must also be enabled by setting isShared to true", null, 2, null);
                }
                boolean zHasPermission2 = AndroidUtils.INSTANCE.hasPermission(LocationConstants.ANDROID_FINE_LOCATION_PERMISSION_STRING, true, LocationManager.this._applicationService);
                if (zHasPermission2) {
                    zHasPermission = false;
                } else {
                    zHasPermission = AndroidUtils.INSTANCE.hasPermission(LocationConstants.ANDROID_COARSE_LOCATION_PERMISSION_STRING, true, LocationManager.this._applicationService);
                    LocationManager.this._capturer.setLocationCoarse(true);
                }
                boolean zHasPermission3 = Build.VERSION.SDK_INT >= 29 ? AndroidUtils.INSTANCE.hasPermission(LocationConstants.ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING, true, LocationManager.this._applicationService) : false;
                if (Build.VERSION.SDK_INT < 23) {
                    if (zHasPermission2 || zHasPermission) {
                        this.label = 1;
                        if (LocationManager.this.startGetLocation(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        this.$result.element = true;
                    } else {
                        Logging.error$default("Location permissions not added on AndroidManifest file < M", null, 2, null);
                        return Boxing.boxBoolean(false);
                    }
                } else if (!zHasPermission2) {
                    List<String> listFilterManifestPermissions = AndroidUtils.INSTANCE.filterManifestPermissions(CollectionsKt.listOf((Object[]) new String[]{LocationConstants.ANDROID_FINE_LOCATION_PERMISSION_STRING, LocationConstants.ANDROID_COARSE_LOCATION_PERMISSION_STRING, LocationConstants.ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING}), LocationManager.this._applicationService);
                    if (listFilterManifestPermissions.contains(LocationConstants.ANDROID_FINE_LOCATION_PERMISSION_STRING)) {
                        str = LocationConstants.ANDROID_FINE_LOCATION_PERMISSION_STRING;
                    } else if (!listFilterManifestPermissions.contains(LocationConstants.ANDROID_COARSE_LOCATION_PERMISSION_STRING)) {
                        Logging.info$default("Location permissions not added on AndroidManifest file >= M", null, 2, null);
                    } else if (!zHasPermission) {
                        str = LocationConstants.ANDROID_COARSE_LOCATION_PERMISSION_STRING;
                    } else if (Build.VERSION.SDK_INT >= 29 && listFilterManifestPermissions.contains(LocationConstants.ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING)) {
                        str = LocationConstants.ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING;
                    }
                    booleanRef2 = this.$result;
                    if (str != null) {
                        this.L$0 = booleanRef2;
                        this.label = 2;
                        objPrompt = LocationManager.this._locationPermissionController.prompt(true, str, this);
                        if (objPrompt == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        booleanRef3 = booleanRef2;
                        zBooleanValue = ((Boolean) objPrompt).booleanValue();
                        booleanRef2 = booleanRef3;
                    } else if (!zHasPermission) {
                        zBooleanValue = false;
                    }
                    booleanRef2.element = zBooleanValue;
                } else if (Build.VERSION.SDK_INT >= 29 && !zHasPermission3) {
                    Ref.BooleanRef booleanRef4 = this.$result;
                    this.L$0 = booleanRef4;
                    this.label = 3;
                    objBackgroundLocationPermissionLogic = LocationManager.this.backgroundLocationPermissionLogic(true, this);
                    if (objBackgroundLocationPermissionLogic == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    booleanRef = booleanRef4;
                    booleanRef.element = ((Boolean) objBackgroundLocationPermissionLogic).booleanValue();
                } else {
                    this.$result.element = true;
                    this.label = 4;
                    if (LocationManager.this.startGetLocation(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i == 1) {
                ResultKt.throwOnFailure(obj);
                this.$result.element = true;
            } else if (i == 2) {
                booleanRef3 = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                objPrompt = obj;
                zBooleanValue = ((Boolean) objPrompt).booleanValue();
                booleanRef2 = booleanRef3;
                booleanRef2.element = zBooleanValue;
            } else if (i == 3) {
                booleanRef = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                objBackgroundLocationPermissionLogic = obj;
                booleanRef.element = ((Boolean) objBackgroundLocationPermissionLogic).booleanValue();
            } else {
                if (i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object backgroundLocationPermissionLogic(boolean z, Continuation<? super Boolean> continuation) {
        if (AndroidUtils.INSTANCE.hasPermission(LocationConstants.ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING, false, this._applicationService)) {
            return this._locationPermissionController.prompt(z, LocationConstants.ANDROID_BACKGROUND_LOCATION_PERMISSION_STRING, continuation);
        }
        return Boxing.boxBoolean(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object startGetLocation(Continuation<? super Unit> continuation) {
        C02461 c02461;
        if (continuation instanceof C02461) {
            c02461 = (C02461) continuation;
            if ((c02461.label & Integer.MIN_VALUE) != 0) {
                c02461.label -= Integer.MIN_VALUE;
            } else {
                c02461 = new C02461(continuation);
            }
        } else {
            c02461 = new C02461(continuation);
        }
        Object objStart = c02461.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02461.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objStart);
                if (!get_isShared()) {
                    return Unit.INSTANCE;
                }
                Logging.debug$default("LocationManager.startGetLocation()", null, 2, null);
                ILocationController iLocationController = this._locationController;
                c02461.label = 1;
                objStart = iLocationController.start(c02461);
                if (objStart == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objStart);
            }
            if (!((Boolean) objStart).booleanValue()) {
                Logging.warn$default("LocationManager.startGetLocation: not possible, no location dependency found", null, 2, null);
            }
        } catch (Throwable th) {
            Logging.warn("LocationManager.startGetLocation: Location permission exists but there was an error initializing: ", th);
        }
        return Unit.INSTANCE;
    }
}
