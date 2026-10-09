package com.onesignal.inAppMessages.internal.triggers.impl;

import com.onesignal.common.events.EventProducer;
import com.onesignal.common.events.IEventNotifier;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.internal.Trigger;
import com.onesignal.inAppMessages.internal.state.InAppStateService;
import com.onesignal.inAppMessages.internal.triggers.ITriggerHandler;
import com.onesignal.session.internal.session.ISessionService;
import java.util.ArrayList;
import java.util.List;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DynamicTriggerController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017J \u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0018\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0002H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController;", "Lcom/onesignal/common/events/IEventNotifier;", "Lcom/onesignal/inAppMessages/internal/triggers/ITriggerHandler;", "_state", "Lcom/onesignal/inAppMessages/internal/state/InAppStateService;", "_session", "Lcom/onesignal/session/internal/session/ISessionService;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/inAppMessages/internal/state/InAppStateService;Lcom/onesignal/session/internal/session/ISessionService;Lcom/onesignal/core/internal/time/ITime;)V", "events", "Lcom/onesignal/common/events/EventProducer;", "getEvents", "()Lcom/onesignal/common/events/EventProducer;", "hasSubscribers", "", "getHasSubscribers", "()Z", "scheduledMessages", "", "", "dynamicTriggerShouldFire", "trigger", "Lcom/onesignal/inAppMessages/internal/Trigger;", "evaluateTimeIntervalWithOperator", "timeInterval", "", "currentTimeInterval", "operator", "Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerOperator;", "roughlyEqual", "left", "right", "subscribe", "", "handler", "unsubscribe", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DynamicTriggerController implements IEventNotifier<ITriggerHandler> {
    private static final long DEFAULT_LAST_IN_APP_TIME_AGO = 999999;
    private static final double REQUIRED_ACCURACY = 0.3d;
    private final ISessionService _session;
    private final InAppStateService _state;
    private final ITime _time;
    private final EventProducer<ITriggerHandler> events;
    private final List<String> scheduledMessages;

    /* JADX INFO: compiled from: DynamicTriggerController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Trigger.OSTriggerKind.values().length];
            iArr[Trigger.OSTriggerKind.SESSION_TIME.ordinal()] = 1;
            iArr[Trigger.OSTriggerKind.TIME_SINCE_LAST_IN_APP.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Trigger.OSTriggerOperator.values().length];
            iArr2[Trigger.OSTriggerOperator.LESS_THAN.ordinal()] = 1;
            iArr2[Trigger.OSTriggerOperator.LESS_THAN_OR_EQUAL_TO.ordinal()] = 2;
            iArr2[Trigger.OSTriggerOperator.GREATER_THAN.ordinal()] = 3;
            iArr2[Trigger.OSTriggerOperator.GREATER_THAN_OR_EQUAL_TO.ordinal()] = 4;
            iArr2[Trigger.OSTriggerOperator.EQUAL_TO.ordinal()] = 5;
            iArr2[Trigger.OSTriggerOperator.NOT_EQUAL_TO.ordinal()] = 6;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public DynamicTriggerController(InAppStateService _state, ISessionService _session, ITime _time) {
        Intrinsics.checkNotNullParameter(_state, "_state");
        Intrinsics.checkNotNullParameter(_session, "_session");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._state = _state;
        this._session = _session;
        this._time = _time;
        this.events = new EventProducer<>();
        this.scheduledMessages = new ArrayList();
    }

    public final EventProducer<ITriggerHandler> getEvents() {
        return this.events;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0089 A[Catch: all -> 0x00be, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0014, B:11:0x001e, B:27:0x0062, B:29:0x0089, B:36:0x00a1, B:40:0x00ab, B:16:0x0033, B:20:0x003d, B:23:0x0049, B:25:0x0060, B:24:0x0054), top: B:46:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0097  */
    /* JADX WARN: Code duplicated, block: B:34:0x009f A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1 A[Catch: all -> 0x00be, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0014, B:11:0x001e, B:27:0x0062, B:29:0x0089, B:36:0x00a1, B:40:0x00ab, B:16:0x0033, B:20:0x003d, B:23:0x0049, B:25:0x0060, B:24:0x0054), top: B:46:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:40:0x00ab A[Catch: all -> 0x00be, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0014, B:11:0x001e, B:27:0x0062, B:29:0x0089, B:36:0x00a1, B:40:0x00ab, B:16:0x0033, B:20:0x003d, B:23:0x0049, B:25:0x0060, B:24:0x0054), top: B:46:0x0014 }] */
    public final boolean dynamicTriggerShouldFire(Trigger trigger) {
        long currentTimeMillis;
        long startTime;
        long j;
        long j2;
        final String triggerId;
        long jDoubleValue;
        long j3;
        Intrinsics.checkNotNullParameter(trigger, "trigger");
        if (trigger.getValue() == null) {
            return false;
        }
        synchronized (this.scheduledMessages) {
            if (!(trigger.getValue() instanceof Number)) {
                return false;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[trigger.getKind().ordinal()];
            if (i == 1) {
                currentTimeMillis = this._time.getCurrentTimeMillis();
                startTime = this._session.getStartTime();
            } else {
                if (i != 2) {
                    j2 = 0;
                } else {
                    if (this._state.getInAppMessageIdShowing() != null) {
                        return false;
                    }
                    Long lastTimeInAppDismissed = this._state.getLastTimeInAppDismissed();
                    if (lastTimeInAppDismissed == null) {
                        j = DEFAULT_LAST_IN_APP_TIME_AGO;
                    } else {
                        currentTimeMillis = this._time.getCurrentTimeMillis();
                        startTime = lastTimeInAppDismissed.longValue();
                    }
                    j2 = j;
                }
                triggerId = trigger.getTriggerId();
                Number number = (Number) trigger.getValue();
                Intrinsics.checkNotNull(number);
                jDoubleValue = (long) (number.doubleValue() * ((double) 1000));
                if (evaluateTimeIntervalWithOperator(jDoubleValue, j2, trigger.getOperatorType())) {
                    this.events.fire(new Function1<ITriggerHandler, Unit>() { // from class: com.onesignal.inAppMessages.internal.triggers.impl.DynamicTriggerController$dynamicTriggerShouldFire$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ITriggerHandler iTriggerHandler) {
                            invoke2(iTriggerHandler);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ITriggerHandler it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            it.onTriggerCompleted(triggerId);
                        }
                    });
                    return true;
                }
                j3 = jDoubleValue - j2;
                if (j3 <= 0) {
                    return false;
                }
                if (this.scheduledMessages.contains(triggerId)) {
                    return false;
                }
                DynamicTriggerTimer.INSTANCE.scheduleTrigger(new TimerTask() { // from class: com.onesignal.inAppMessages.internal.triggers.impl.DynamicTriggerController$dynamicTriggerShouldFire$1$2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        this.this$0.scheduledMessages.remove(triggerId);
                        EventProducer<ITriggerHandler> events = this.this$0.getEvents();
                        final String str = triggerId;
                        events.fire(new Function1<ITriggerHandler, Unit>() { // from class: com.onesignal.inAppMessages.internal.triggers.impl.DynamicTriggerController$dynamicTriggerShouldFire$1$2$run$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(ITriggerHandler iTriggerHandler) {
                                invoke2(iTriggerHandler);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(ITriggerHandler it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                it.onTriggerConditionChanged(str);
                            }
                        });
                    }
                }, triggerId, j3);
                this.scheduledMessages.add(triggerId);
                return false;
            }
            j = currentTimeMillis - startTime;
            j2 = j;
            triggerId = trigger.getTriggerId();
            Number number2 = (Number) trigger.getValue();
            Intrinsics.checkNotNull(number2);
            jDoubleValue = (long) (number2.doubleValue() * ((double) 1000));
            if (evaluateTimeIntervalWithOperator(jDoubleValue, j2, trigger.getOperatorType())) {
                this.events.fire(new Function1<ITriggerHandler, Unit>() { // from class: com.onesignal.inAppMessages.internal.triggers.impl.DynamicTriggerController$dynamicTriggerShouldFire$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ITriggerHandler iTriggerHandler) {
                        invoke2(iTriggerHandler);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(ITriggerHandler it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        it.onTriggerCompleted(triggerId);
                    }
                });
                return true;
            }
            j3 = jDoubleValue - j2;
            if (j3 <= 0) {
                return false;
            }
            if (this.scheduledMessages.contains(triggerId)) {
                return false;
            }
            DynamicTriggerTimer.INSTANCE.scheduleTrigger(new TimerTask() { // from class: com.onesignal.inAppMessages.internal.triggers.impl.DynamicTriggerController$dynamicTriggerShouldFire$1$2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    this.this$0.scheduledMessages.remove(triggerId);
                    EventProducer<ITriggerHandler> events = this.this$0.getEvents();
                    final String str = triggerId;
                    events.fire(new Function1<ITriggerHandler, Unit>() { // from class: com.onesignal.inAppMessages.internal.triggers.impl.DynamicTriggerController$dynamicTriggerShouldFire$1$2$run$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ITriggerHandler iTriggerHandler) {
                            invoke2(iTriggerHandler);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ITriggerHandler it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            it.onTriggerConditionChanged(str);
                        }
                    });
                }
            }, triggerId, j3);
            this.scheduledMessages.add(triggerId);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:5:0x0020 A[ORIG_RETURN, RETURN] */
    private final boolean evaluateTimeIntervalWithOperator(double timeInterval, double currentTimeInterval, Trigger.OSTriggerOperator operator) {
        switch (WhenMappings.$EnumSwitchMapping$1[operator.ordinal()]) {
            case 1:
                if (currentTimeInterval < timeInterval) {
                    return true;
                }
                return false;
            case 2:
                if (currentTimeInterval <= timeInterval || roughlyEqual(timeInterval, currentTimeInterval)) {
                    return true;
                }
                return false;
            case 3:
                if (currentTimeInterval >= timeInterval) {
                    return true;
                }
                return false;
            case 4:
                if (currentTimeInterval >= timeInterval || roughlyEqual(timeInterval, currentTimeInterval)) {
                    return true;
                }
                return false;
            case 5:
                return roughlyEqual(timeInterval, currentTimeInterval);
            case 6:
                if (roughlyEqual(timeInterval, currentTimeInterval)) {
                    return false;
                }
                return true;
            default:
                Logging.error$default("Attempted to apply an invalid operator on a time-based in-app-message trigger: " + operator, null, 2, null);
                return false;
        }
    }

    private final boolean roughlyEqual(double left, double right) {
        return Math.abs(left - right) < REQUIRED_ACCURACY;
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void subscribe(ITriggerHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.events.subscribe(handler);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void unsubscribe(ITriggerHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.events.unsubscribe(handler);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public boolean getHasSubscribers() {
        return this.events.getHasSubscribers();
    }
}
