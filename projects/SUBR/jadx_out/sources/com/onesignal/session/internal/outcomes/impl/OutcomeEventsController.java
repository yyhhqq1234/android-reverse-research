package com.onesignal.session.internal.outcomes.impl;

import androidx.core.app.NotificationCompat;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.session.internal.influence.IInfluenceManager;
import com.onesignal.session.internal.influence.Influence;
import com.onesignal.session.internal.influence.InfluenceChannel;
import com.onesignal.session.internal.influence.InfluenceType;
import com.onesignal.session.internal.outcomes.IOutcomeEventsController;
import com.onesignal.session.internal.session.ISessionLifecycleHandler;
import com.onesignal.session.internal.session.ISessionService;
import com.onesignal.user.internal.backend.SubscriptionObjectType;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.subscriptions.ISubscriptionManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: OutcomeEventsController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BU\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J/\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u001b2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020#H\u0016J\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\u0019\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010,J\u0010\u0010-\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0002J\b\u0010.\u001a\u00020#H\u0002J\u0010\u0010/\u001a\u00020#2\u0006\u0010*\u001a\u00020+H\u0002J9\u00100\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020&2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u00105J\u001b\u00106\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001bH\u0096@ø\u0001\u0000¢\u0006\u0002\u00107J#\u00108\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u00102\u001a\u000203H\u0096@ø\u0001\u0000¢\u0006\u0002\u00109J\u0019\u0010:\u001a\u00020#2\u0006\u0010;\u001a\u00020+H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010,J\u0011\u0010<\u001a\u00020#H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010=J\u001b\u0010>\u001a\u0004\u0018\u0001012\u0006\u0010%\u001a\u00020&H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010?J\u001b\u0010@\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001bH\u0096@ø\u0001\u0000¢\u0006\u0002\u00107J)\u0010@\u001a\u0004\u0018\u0001012\u0006\u0010\u001f\u001a\u00020\u001b2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010!J\u0018\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u001e2\u0006\u0010E\u001a\u00020CH\u0002J\b\u0010F\u001a\u00020#H\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006G"}, d2 = {"Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsController;", "Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;", "Lcom/onesignal/core/internal/startup/IStartableService;", "Lcom/onesignal/session/internal/session/ISessionLifecycleHandler;", "_session", "Lcom/onesignal/session/internal/session/ISessionService;", "_influenceManager", "Lcom/onesignal/session/internal/influence/IInfluenceManager;", "_outcomeEventsCache", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsRepository;", "_outcomeEventsPreferences", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsPreferences;", "_outcomeEventsBackend", "Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsBackendService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "_subscriptionManager", "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/session/internal/session/ISessionService;Lcom/onesignal/session/internal/influence/IInfluenceManager;Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsRepository;Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsPreferences;Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsBackendService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/core/internal/time/ITime;)V", "unattributedUniqueOutcomeEventsSentOnSession", "", "", "getUniqueIds", "", "Lcom/onesignal/session/internal/influence/Influence;", "name", "influences", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSessionActive", "", "onSessionEnded", IronSourceConstants.EVENTS_DURATION, "", "onSessionStarted", "removeDisabledInfluences", "requestMeasureOutcomeEvent", "eventParams", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;", "(Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveAttributedUniqueOutcomeNotifications", "saveUnattributedUniqueOutcomeEvents", "saveUniqueOutcome", "sendAndCreateOutcomeEvent", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEvent;", "weight", "", "sessionTime", "(Ljava/lang/String;FJLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendOutcomeEvent", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendOutcomeEventWithValue", "(Ljava/lang/String;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendSavedOutcomeEvent", NotificationCompat.CATEGORY_EVENT, "sendSavedOutcomes", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendSessionEndOutcomeEvent", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendUniqueOutcomeEvent", "sessionInfluences", "setSourceChannelIds", "Lcom/onesignal/session/internal/outcomes/impl/OutcomeSourceBody;", "influence", "sourceBody", "start", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OutcomeEventsController implements IOutcomeEventsController, IStartableService, ISessionLifecycleHandler {
    private final ConfigModelStore _configModelStore;
    private final IDeviceService _deviceService;
    private final IdentityModelStore _identityModelStore;
    private final IInfluenceManager _influenceManager;
    private final IOutcomeEventsBackendService _outcomeEventsBackend;
    private final IOutcomeEventsRepository _outcomeEventsCache;
    private final IOutcomeEventsPreferences _outcomeEventsPreferences;
    private final ISessionService _session;
    private final ISubscriptionManager _subscriptionManager;
    private final ITime _time;
    private Set<String> unattributedUniqueOutcomeEventsSentOnSession;

    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[InfluenceType.values().length];
            iArr[InfluenceType.DIRECT.ordinal()] = 1;
            iArr[InfluenceType.INDIRECT.ordinal()] = 2;
            iArr[InfluenceType.UNATTRIBUTED.ordinal()] = 3;
            iArr[InfluenceType.DISABLED.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[InfluenceChannel.values().length];
            iArr2[InfluenceChannel.IAM.ordinal()] = 1;
            iArr2[InfluenceChannel.NOTIFICATION.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$getUniqueIds$1, reason: invalid class name */
    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {}, l = {295}, m = "getUniqueIds", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.this.getUniqueIds(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$sendAndCreateOutcomeEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 0, 0, 0}, l = {216, 230}, m = "sendAndCreateOutcomeEvent", n = {"this", "name", "eventParams", "timestampSeconds"}, s = {"L$0", "L$1", "L$2", "J$0"})
    static final class C03111 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03111(Continuation<? super C03111> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.this.sendAndCreateOutcomeEvent(null, 0.0f, 0L, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$sendSavedOutcomeEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 0, 1}, l = {74, 76}, m = "sendSavedOutcomeEvent", n = {"this", NotificationCompat.CATEGORY_EVENT, NotificationCompat.CATEGORY_EVENT}, s = {"L$0", "L$1", "L$0"})
    static final class C03121 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03121(Continuation<? super C03121> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.this.sendSavedOutcomeEvent(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$sendSavedOutcomes$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 1}, l = {66, 68}, m = "sendSavedOutcomes", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C03131 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03131(Continuation<? super C03131> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.this.sendSavedOutcomes(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$sendUniqueOutcomeEvent$2, reason: invalid class name */
    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController", f = "OutcomeEventsController.kt", i = {0, 0, 0}, l = {IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, 153, 169}, m = "sendUniqueOutcomeEvent", n = {"this", "name", "influences"}, s = {"L$0", "L$1", "L$2"})
    static final class AnonymousClass2 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OutcomeEventsController.this.sendUniqueOutcomeEvent(null, null, this);
        }
    }

    @Override // com.onesignal.session.internal.session.ISessionLifecycleHandler
    public void onSessionActive() {
    }

    @Override // com.onesignal.session.internal.session.ISessionLifecycleHandler
    public void onSessionEnded(long duration) {
    }

    public OutcomeEventsController(ISessionService _session, IInfluenceManager _influenceManager, IOutcomeEventsRepository _outcomeEventsCache, IOutcomeEventsPreferences _outcomeEventsPreferences, IOutcomeEventsBackendService _outcomeEventsBackend, ConfigModelStore _configModelStore, IdentityModelStore _identityModelStore, ISubscriptionManager _subscriptionManager, IDeviceService _deviceService, ITime _time) {
        LinkedHashSet mutableSet;
        Intrinsics.checkNotNullParameter(_session, "_session");
        Intrinsics.checkNotNullParameter(_influenceManager, "_influenceManager");
        Intrinsics.checkNotNullParameter(_outcomeEventsCache, "_outcomeEventsCache");
        Intrinsics.checkNotNullParameter(_outcomeEventsPreferences, "_outcomeEventsPreferences");
        Intrinsics.checkNotNullParameter(_outcomeEventsBackend, "_outcomeEventsBackend");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_identityModelStore, "_identityModelStore");
        Intrinsics.checkNotNullParameter(_subscriptionManager, "_subscriptionManager");
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._session = _session;
        this._influenceManager = _influenceManager;
        this._outcomeEventsCache = _outcomeEventsCache;
        this._outcomeEventsPreferences = _outcomeEventsPreferences;
        this._outcomeEventsBackend = _outcomeEventsBackend;
        this._configModelStore = _configModelStore;
        this._identityModelStore = _identityModelStore;
        this._subscriptionManager = _subscriptionManager;
        this._deviceService = _deviceService;
        this._time = _time;
        this.unattributedUniqueOutcomeEventsSentOnSession = new LinkedHashSet();
        Set<String> unattributedUniqueOutcomeEventsSentByChannel = _outcomeEventsPreferences.getUnattributedUniqueOutcomeEventsSentByChannel();
        this.unattributedUniqueOutcomeEventsSentOnSession = (unattributedUniqueOutcomeEventsSentByChannel == null || (mutableSet = CollectionsKt.toMutableSet(unattributedUniqueOutcomeEventsSentByChannel)) == null) ? new LinkedHashSet() : mutableSet;
        _session.subscribe(this);
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$start$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$start$1", f = "OutcomeEventsController.kt", i = {}, l = {45, 46}, m = "invokeSuspend", n = {}, s = {})
    static final class C03141 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        C03141(Continuation<? super C03141> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return OutcomeEventsController.this.new C03141(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C03141) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (OutcomeEventsController.this.sendSavedOutcomes(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            this.label = 2;
            if (OutcomeEventsController.this._outcomeEventsCache.cleanCachedUniqueOutcomeEventNotifications(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.core.internal.startup.IStartableService
    public void start() {
        ThreadUtilsKt.suspendifyOnThread$default(0, new C03141(null), 1, null);
    }

    @Override // com.onesignal.session.internal.session.ISessionLifecycleHandler
    public void onSessionStarted() {
        Logging.debug$default("OutcomeEventsController.sessionStarted: Cleaning outcomes for new session", null, 2, null);
        this.unattributedUniqueOutcomeEventsSentOnSession = new LinkedHashSet();
        saveUnattributedUniqueOutcomeEvents();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code duplicated, block: B:29:0x0076 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:? A[LOOP:0: B:21:0x005e->B:31:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object sendSavedOutcomes(Continuation<? super Unit> continuation) {
        C03131 c03131;
        OutcomeEventsController outcomeEventsController;
        OutcomeEventsController outcomeEventsController2;
        Iterator it;
        OutcomeEventParams outcomeEventParams;
        if (continuation instanceof C03131) {
            c03131 = (C03131) continuation;
            if ((c03131.label & Integer.MIN_VALUE) != 0) {
                c03131.label -= Integer.MIN_VALUE;
            } else {
                c03131 = new C03131(continuation);
            }
        } else {
            c03131 = new C03131(continuation);
        }
        Object allEventsToSend = c03131.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03131.label;
        if (i == 0) {
            ResultKt.throwOnFailure(allEventsToSend);
            IOutcomeEventsRepository iOutcomeEventsRepository = this._outcomeEventsCache;
            c03131.L$0 = this;
            c03131.label = 1;
            allEventsToSend = iOutcomeEventsRepository.getAllEventsToSend(c03131);
            if (allEventsToSend == coroutine_suspended) {
                return coroutine_suspended;
            }
            outcomeEventsController = this;
        } else {
            if (i == 1) {
                outcomeEventsController = (OutcomeEventsController) c03131.L$0;
                ResultKt.throwOnFailure(allEventsToSend);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) c03131.L$1;
                outcomeEventsController2 = (OutcomeEventsController) c03131.L$0;
                ResultKt.throwOnFailure(allEventsToSend);
            }
            while (it.hasNext()) {
                outcomeEventParams = (OutcomeEventParams) it.next();
                c03131.L$0 = outcomeEventsController2;
                c03131.L$1 = it;
                c03131.label = 2;
                if (outcomeEventsController2.sendSavedOutcomeEvent(outcomeEventParams, c03131) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
        outcomeEventsController2 = outcomeEventsController;
        it = ((List) allEventsToSend).iterator();
        while (it.hasNext()) {
            outcomeEventParams = (OutcomeEventParams) it.next();
            c03131.L$0 = outcomeEventsController2;
            c03131.L$1 = it;
            c03131.label = 2;
            if (outcomeEventsController2.sendSavedOutcomeEvent(outcomeEventParams, c03131) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object sendSavedOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) {
        C03121 c03121;
        OutcomeEventsController outcomeEventsController;
        if (continuation instanceof C03121) {
            c03121 = (C03121) continuation;
            if ((c03121.label & Integer.MIN_VALUE) != 0) {
                c03121.label -= Integer.MIN_VALUE;
            } else {
                c03121 = new C03121(continuation);
            }
        } else {
            c03121 = new C03121(continuation);
        }
        Object obj = c03121.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03121.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                c03121.L$0 = this;
                c03121.L$1 = outcomeEventParams;
                c03121.label = 1;
                if (requestMeasureOutcomeEvent(outcomeEventParams, c03121) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                outcomeEventsController = this;
            } else {
                if (i == 1) {
                    outcomeEventParams = (OutcomeEventParams) c03121.L$1;
                    outcomeEventsController = (OutcomeEventsController) c03121.L$0;
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            IOutcomeEventsRepository iOutcomeEventsRepository = outcomeEventsController._outcomeEventsCache;
            c03121.L$0 = outcomeEventParams;
            c03121.L$1 = null;
            c03121.label = 2;
            if (iOutcomeEventsRepository.deleteOldOutcomeEvent(outcomeEventParams, c03121) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } catch (BackendException e) {
            Logging.warn$default("OutcomeEventsController.sendSavedOutcomeEvent: Sending outcome with name: " + outcomeEventParams.getOutcomeId() + " failed with status code: " + e.getStatusCode() + " and response: " + e.getResponse() + "\nOutcome event was cached and will be reattempted on app cold start", null, 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // com.onesignal.session.internal.outcomes.IOutcomeEventsController
    public Object sendSessionEndOutcomeEvent(long j, Continuation<? super OutcomeEvent> continuation) {
        List<Influence> influences = this._influenceManager.getInfluences();
        Iterator<Influence> it = influences.iterator();
        while (it.hasNext()) {
            if (it.next().getIds() != null) {
                return sendAndCreateOutcomeEvent("os__session_duration", 0.0f, j, influences, continuation);
            }
        }
        return null;
    }

    @Override // com.onesignal.session.internal.outcomes.IOutcomeEventsController
    public Object sendUniqueOutcomeEvent(String str, Continuation<? super OutcomeEvent> continuation) {
        return sendUniqueOutcomeEvent(str, this._influenceManager.getInfluences(), continuation);
    }

    @Override // com.onesignal.session.internal.outcomes.IOutcomeEventsController
    public Object sendOutcomeEvent(String str, Continuation<? super OutcomeEvent> continuation) {
        return sendAndCreateOutcomeEvent(str, 0.0f, 0L, this._influenceManager.getInfluences(), continuation);
    }

    @Override // com.onesignal.session.internal.outcomes.IOutcomeEventsController
    public Object sendOutcomeEventWithValue(String str, float f, Continuation<? super OutcomeEvent> continuation) {
        return sendAndCreateOutcomeEvent(str, f, 0L, this._influenceManager.getInfluences(), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x009d  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x009d, please report this as an issue */
    public final Object sendUniqueOutcomeEvent(String str, List<Influence> list, Continuation<? super OutcomeEvent> continuation) {
        AnonymousClass2 anonymousClass2;
        boolean z;
        OutcomeEventsController outcomeEventsController;
        String str2;
        List<Influence> list2;
        List<Influence> list3;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(continuation);
        }
        AnonymousClass2 anonymousClass3 = anonymousClass2;
        Object objSendAndCreateOutcomeEvent = anonymousClass3.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass3.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objSendAndCreateOutcomeEvent);
            List<Influence> listRemoveDisabledInfluences = removeDisabledInfluences(list);
            if (listRemoveDisabledInfluences.isEmpty()) {
                Logging.debug$default("OutcomeEventsController.sendUniqueOutcomeEvent: Unique Outcome disabled for current session", null, 2, null);
                return null;
            }
            Iterator<Influence> it = listRemoveDisabledInfluences.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (it.next().getInfluenceType().isAttributed()) {
                    z = true;
                    break;
                }
            }
            if (z) {
                anonymousClass3.L$0 = this;
                anonymousClass3.L$1 = str;
                anonymousClass3.L$2 = listRemoveDisabledInfluences;
                anonymousClass3.label = 1;
                objSendAndCreateOutcomeEvent = getUniqueIds(str, listRemoveDisabledInfluences, anonymousClass3);
                if (objSendAndCreateOutcomeEvent == coroutine_suspended) {
                    return coroutine_suspended;
                }
                outcomeEventsController = this;
                str2 = str;
                list2 = listRemoveDisabledInfluences;
                list3 = (List) objSendAndCreateOutcomeEvent;
                if (list3 == null) {
                    Logging.debug$default(StringsKt.trimIndent("\n                    Measure endpoint will not send because unique outcome already sent for: \n                    SessionInfluences: " + list2 + "\n                    Outcome name: " + str2 + "\n                    "), null, 2, null);
                    return null;
                }
                anonymousClass3.L$0 = null;
                anonymousClass3.L$1 = null;
                anonymousClass3.L$2 = null;
                anonymousClass3.label = 2;
                objSendAndCreateOutcomeEvent = outcomeEventsController.sendAndCreateOutcomeEvent(str2, 0.0f, 0L, list3, anonymousClass3);
                if (objSendAndCreateOutcomeEvent == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (this.unattributedUniqueOutcomeEventsSentOnSession.contains(str)) {
                    Logging.debug$default(StringsKt.trimIndent("\n                    Measure endpoint will not send because unique outcome already sent for: \n                    Session: " + InfluenceType.UNATTRIBUTED + "\n                    Outcome name: " + str + "\n                    "), null, 2, null);
                    return null;
                }
                this.unattributedUniqueOutcomeEventsSentOnSession.add(str);
                anonymousClass3.label = 3;
                objSendAndCreateOutcomeEvent = sendAndCreateOutcomeEvent(str, 0.0f, 0L, listRemoveDisabledInfluences, anonymousClass3);
                return objSendAndCreateOutcomeEvent == coroutine_suspended ? coroutine_suspended : objSendAndCreateOutcomeEvent;
            }
        } else if (i == 1) {
            list2 = (List) anonymousClass3.L$2;
            str2 = (String) anonymousClass3.L$1;
            outcomeEventsController = (OutcomeEventsController) anonymousClass3.L$0;
            ResultKt.throwOnFailure(objSendAndCreateOutcomeEvent);
            list3 = (List) objSendAndCreateOutcomeEvent;
            if (list3 == null) {
                Logging.debug$default(StringsKt.trimIndent("\n                    Measure endpoint will not send because unique outcome already sent for: \n                    SessionInfluences: " + list2 + "\n                    Outcome name: " + str2 + "\n                    "), null, 2, null);
                return null;
            }
            anonymousClass3.L$0 = null;
            anonymousClass3.L$1 = null;
            anonymousClass3.L$2 = null;
            anonymousClass3.label = 2;
            objSendAndCreateOutcomeEvent = outcomeEventsController.sendAndCreateOutcomeEvent(str2, 0.0f, 0L, list3, anonymousClass3);
            if (objSendAndCreateOutcomeEvent == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 2) {
                if (i == 3) {
                    ResultKt.throwOnFailure(objSendAndCreateOutcomeEvent);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objSendAndCreateOutcomeEvent);
        }
        return objSendAndCreateOutcomeEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:59:0x0154 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:60:0x0155 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object sendAndCreateOutcomeEvent(String str, float f, long j, List<Influence> list, Continuation<? super OutcomeEvent> continuation) {
        C03111 c03111;
        String str2;
        BackendException backendException;
        OutcomeEventsController outcomeEventsController;
        OutcomeEventParams outcomeEventParams;
        long j2;
        OutcomeEventsController outcomeEventsController2;
        String str3;
        IOutcomeEventsRepository iOutcomeEventsRepository;
        if (continuation instanceof C03111) {
            c03111 = (C03111) continuation;
            if ((c03111.label & Integer.MIN_VALUE) != 0) {
                c03111.label -= Integer.MIN_VALUE;
            } else {
                c03111 = new C03111(continuation);
            }
        } else {
            c03111 = new C03111(continuation);
        }
        Object obj = c03111.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03111.label;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return null;
            }
            j2 = c03111.J$0;
            outcomeEventParams = (OutcomeEventParams) c03111.L$2;
            str3 = (String) c03111.L$1;
            outcomeEventsController2 = (OutcomeEventsController) c03111.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (BackendException e) {
                String str4 = str3;
                backendException = e;
                outcomeEventsController = outcomeEventsController2;
                str2 = str4;
                Logging.warn$default("OutcomeEventsController.sendAndCreateOutcomeEvent: Sending outcome with name: " + str2 + " failed with status code: " + backendException.getStatusCode() + " and response: " + backendException.getResponse() + "\nOutcome event was cached and will be reattempted on app cold start", null, 2, null);
                outcomeEventParams.setTimestamp(j2);
                iOutcomeEventsRepository = outcomeEventsController._outcomeEventsCache;
                c03111.L$0 = null;
                c03111.L$1 = null;
                c03111.L$2 = null;
                c03111.label = 2;
                if (iOutcomeEventsRepository.saveOutcomeEvent(outcomeEventParams, c03111) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return null;
            }
        } else {
            ResultKt.throwOnFailure(obj);
            long currentTimeMillis = this._time.getCurrentTimeMillis() / ((long) 1000);
            boolean z = false;
            OutcomeSourceBody sourceChannelIds = null;
            OutcomeSourceBody sourceChannelIds2 = null;
            for (Influence influence : list) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[influence.getInfluenceType().ordinal()];
                if (i2 == 1) {
                    if (sourceChannelIds == null) {
                        sourceChannelIds = new OutcomeSourceBody(null, null, 3, null);
                    }
                    sourceChannelIds = setSourceChannelIds(influence, sourceChannelIds);
                } else if (i2 == 2) {
                    if (sourceChannelIds2 == null) {
                        sourceChannelIds2 = new OutcomeSourceBody(null, null, 3, null);
                    }
                    sourceChannelIds2 = setSourceChannelIds(influence, sourceChannelIds2);
                } else if (i2 == 3) {
                    z = true;
                } else if (i2 == 4) {
                    Logging.verbose$default("OutcomeEventsController.sendAndCreateOutcomeEvent: Outcomes disabled for channel: " + influence.getInfluenceChannel(), null, 2, null);
                }
            }
            if (sourceChannelIds == null && sourceChannelIds2 == null && !z) {
                Logging.verbose$default("OutcomeEventsController.sendAndCreateOutcomeEvent: Outcomes disabled for all channels", null, 2, null);
                return null;
            }
            OutcomeEventParams outcomeEventParams2 = new OutcomeEventParams(str, new OutcomeSource(sourceChannelIds, sourceChannelIds2), f, j, 0L);
            try {
                c03111.L$0 = this;
                str2 = str;
                try {
                    c03111.L$1 = str2;
                    c03111.L$2 = outcomeEventParams2;
                    c03111.J$0 = currentTimeMillis;
                    c03111.label = 1;
                    if (requestMeasureOutcomeEvent(outcomeEventParams2, c03111) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    outcomeEventsController2 = this;
                    outcomeEventParams = outcomeEventParams2;
                    j2 = currentTimeMillis;
                    str3 = str2;
                } catch (BackendException e2) {
                    e = e2;
                    backendException = e;
                    outcomeEventsController = this;
                    outcomeEventParams = outcomeEventParams2;
                    j2 = currentTimeMillis;
                    Logging.warn$default("OutcomeEventsController.sendAndCreateOutcomeEvent: Sending outcome with name: " + str2 + " failed with status code: " + backendException.getStatusCode() + " and response: " + backendException.getResponse() + "\nOutcome event was cached and will be reattempted on app cold start", null, 2, null);
                    outcomeEventParams.setTimestamp(j2);
                    iOutcomeEventsRepository = outcomeEventsController._outcomeEventsCache;
                    c03111.L$0 = null;
                    c03111.L$1 = null;
                    c03111.L$2 = null;
                    c03111.label = 2;
                    if (iOutcomeEventsRepository.saveOutcomeEvent(outcomeEventParams, c03111) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return null;
                }
            } catch (BackendException e3) {
                e = e3;
                str2 = str;
            }
        }
        outcomeEventsController2.saveUniqueOutcome(outcomeEventParams);
        return OutcomeEvent.INSTANCE.fromOutcomeEventParamstoOutcomeEvent(outcomeEventParams);
    }

    private final OutcomeSourceBody setSourceChannelIds(Influence influence, OutcomeSourceBody sourceBody) {
        int i = WhenMappings.$EnumSwitchMapping$1[influence.getInfluenceChannel().ordinal()];
        if (i == 1) {
            sourceBody.setInAppMessagesIds(influence.getIds());
        } else if (i == 2) {
            sourceBody.setNotificationIds(influence.getIds());
        }
        return sourceBody;
    }

    private final List<Influence> removeDisabledInfluences(List<Influence> influences) {
        List<Influence> mutableList = CollectionsKt.toMutableList((Collection) influences);
        for (Influence influence : influences) {
            if (influence.getInfluenceType().isDisabled()) {
                Logging.debug$default("OutcomeEventsController.removeDisabledInfluences: Outcomes disabled for channel: " + influence.getInfluenceChannel(), null, 2, null);
                mutableList.remove(influence);
            }
        }
        return mutableList;
    }

    private final void saveUniqueOutcome(OutcomeEventParams eventParams) {
        if (eventParams.isUnattributed()) {
            saveUnattributedUniqueOutcomeEvents();
        } else {
            saveAttributedUniqueOutcomeNotifications(eventParams);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$saveAttributedUniqueOutcomeNotifications$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OutcomeEventsController.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.outcomes.impl.OutcomeEventsController$saveAttributedUniqueOutcomeNotifications$1", f = "OutcomeEventsController.kt", i = {}, l = {276}, m = "invokeSuspend", n = {}, s = {})
    static final class C03101 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ OutcomeEventParams $eventParams;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03101(OutcomeEventParams outcomeEventParams, Continuation<? super C03101> continuation) {
            super(1, continuation);
            this.$eventParams = outcomeEventParams;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return OutcomeEventsController.this.new C03101(this.$eventParams, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C03101) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (OutcomeEventsController.this._outcomeEventsCache.saveUniqueOutcomeEventParams(this.$eventParams, this) == coroutine_suspended) {
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

    private final void saveAttributedUniqueOutcomeNotifications(OutcomeEventParams eventParams) {
        ThreadUtilsKt.suspendifyOnThread(10, new C03101(eventParams, null));
    }

    private final void saveUnattributedUniqueOutcomeEvents() {
        this._outcomeEventsPreferences.setUnattributedUniqueOutcomeEventsSentByChannel(this.unattributedUniqueOutcomeEventsSentOnSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getUniqueIds(String str, List<Influence> list, Continuation<? super List<Influence>> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object notCachedUniqueInfluencesForOutcome = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(notCachedUniqueInfluencesForOutcome);
            IOutcomeEventsRepository iOutcomeEventsRepository = this._outcomeEventsCache;
            anonymousClass1.label = 1;
            notCachedUniqueInfluencesForOutcome = iOutcomeEventsRepository.getNotCachedUniqueInfluencesForOutcome(str, list, anonymousClass1);
            if (notCachedUniqueInfluencesForOutcome == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(notCachedUniqueInfluencesForOutcome);
        }
        List list2 = (List) notCachedUniqueInfluencesForOutcome;
        if (list2.isEmpty()) {
            return null;
        }
        return list2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object requestMeasureOutcomeEvent(OutcomeEventParams outcomeEventParams, Continuation<? super Unit> continuation) throws BackendException {
        Boolean boolBoxBoolean;
        String appId = this._configModelStore.getModel().getAppId();
        String id = this._subscriptionManager.getSubscriptions().getPush().getId();
        String value = SubscriptionObjectType.INSTANCE.fromDeviceType(this._deviceService.getDeviceType()).getValue();
        if (!(id.length() == 0)) {
            if (!(value.length() == 0)) {
                OutcomeEvent outcomeEventFromOutcomeEventParamstoOutcomeEvent = OutcomeEvent.INSTANCE.fromOutcomeEventParamstoOutcomeEvent(outcomeEventParams);
                int i = WhenMappings.$EnumSwitchMapping$0[outcomeEventFromOutcomeEventParamstoOutcomeEvent.getSession().ordinal()];
                if (i == 1) {
                    boolBoxBoolean = Boxing.boxBoolean(true);
                } else {
                    boolBoxBoolean = i != 2 ? null : Boxing.boxBoolean(false);
                }
                Object objSendOutcomeEvent = this._outcomeEventsBackend.sendOutcomeEvent(appId, this._identityModelStore.getModel().getOnesignalId(), id, value, boolBoxBoolean, outcomeEventFromOutcomeEventParamstoOutcomeEvent, continuation);
                return objSendOutcomeEvent == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSendOutcomeEvent : Unit.INSTANCE;
            }
        }
        throw new BackendException(0, null, null, 6, null);
    }
}
