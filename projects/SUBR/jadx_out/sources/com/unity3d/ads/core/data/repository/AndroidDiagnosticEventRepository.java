package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import com.unity3d.ads.core.utils.CoroutineTimer;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AndroidDiagnosticEventRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\nH\u0016J\b\u0010 \u001a\u00020\u001eH\u0016J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020\u001eH\u0016R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u000b\u001a&\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r \u000e*\u0012\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r\u0018\u00010\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u0013\u001a&\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r \u000e*\u0012\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r\u0018\u00010\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0017X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "flushTimer", "Lcom/unity3d/ads/core/utils/CoroutineTimer;", "getDiagnosticEventRequest", "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;", "(Lcom/unity3d/ads/core/utils/CoroutineTimer;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;)V", "_diagnosticEvents", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;", "allowedEvents", "", "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "kotlin.jvm.PlatformType", "", "batch", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "blockedEvents", "configured", "", "diagnosticEvents", "Lkotlinx/coroutines/flow/SharedFlow;", "getDiagnosticEvents", "()Lkotlinx/coroutines/flow/SharedFlow;", "enabled", "maxBatchSize", "", "addDiagnosticEvent", "", "diagnosticEvent", "clear", "configure", "diagnosticsEventsConfiguration", "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "flush", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidDiagnosticEventRepository implements DiagnosticEventRepository {
    private final MutableSharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> _diagnosticEvents;
    private final Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> allowedEvents;
    private final MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> batch;
    private final Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> blockedEvents;
    private final MutableStateFlow<Boolean> configured;
    private final SharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> diagnosticEvents;
    private final MutableStateFlow<Boolean> enabled;
    private final CoroutineTimer flushTimer;
    private final GetDiagnosticEventRequest getDiagnosticEventRequest;
    private int maxBatchSize;

    public AndroidDiagnosticEventRepository(CoroutineTimer flushTimer, GetDiagnosticEventRequest getDiagnosticEventRequest) {
        Intrinsics.checkNotNullParameter(flushTimer, "flushTimer");
        Intrinsics.checkNotNullParameter(getDiagnosticEventRequest, "getDiagnosticEventRequest");
        this.flushTimer = flushTimer;
        this.getDiagnosticEventRequest = getDiagnosticEventRequest;
        List listSynchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(listSynchronizedList, "synchronizedList(mutableListOf())");
        this.batch = StateFlowKt.MutableStateFlow(listSynchronizedList);
        this.maxBatchSize = Integer.MAX_VALUE;
        this.allowedEvents = Collections.synchronizedSet(new LinkedHashSet());
        this.blockedEvents = Collections.synchronizedSet(new LinkedHashSet());
        this.enabled = StateFlowKt.MutableStateFlow(false);
        this.configured = StateFlowKt.MutableStateFlow(false);
        MutableSharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> MutableSharedFlow = SharedFlowKt.MutableSharedFlow(10, 10, BufferOverflow.DROP_OLDEST);
        this._diagnosticEvents = MutableSharedFlow;
        this.diagnosticEvents = FlowKt.asSharedFlow(MutableSharedFlow);
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public SharedFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> getDiagnosticEvents() {
        return this.diagnosticEvents;
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void addDiagnosticEvent(DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent) {
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value;
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list;
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value2;
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list2;
        Intrinsics.checkNotNullParameter(diagnosticEvent, "diagnosticEvent");
        if (!this.configured.getValue().booleanValue()) {
            MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow = this.batch;
            do {
                value2 = mutableStateFlow.getValue();
                list2 = value2;
                list2.add(diagnosticEvent);
            } while (!mutableStateFlow.compareAndSet(value2, list2));
            return;
        }
        if (this.enabled.getValue().booleanValue()) {
            MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow2 = this.batch;
            do {
                value = mutableStateFlow2.getValue();
                list = value;
                list.add(diagnosticEvent);
            } while (!mutableStateFlow2.compareAndSet(value, list));
            if (this.batch.getValue().size() >= this.maxBatchSize) {
                flush();
            }
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void flush() {
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value;
        MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow = this.batch;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, new ArrayList()));
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> list = SequencesKt.toList(SequencesKt.filter(SequencesKt.filter(SequencesKt.map(CollectionsKt.asSequence(value), new Function1<DiagnosticEventRequestOuterClass.DiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEvent>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$events$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DiagnosticEventRequestOuterClass.DiagnosticEvent invoke(DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent) {
                return diagnosticEvent == null ? this.this$0.getDiagnosticEventRequest.invoke("null_diagnostic_event", null, null, null, null, null, null, null) : diagnosticEvent;
            }
        }), new Function1<DiagnosticEventRequestOuterClass.DiagnosticEvent, Boolean>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$events$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(DiagnosticEventRequestOuterClass.DiagnosticEvent it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(this.this$0.allowedEvents.isEmpty() || this.this$0.allowedEvents.contains(it.getEventType()));
            }
        }), new Function1<DiagnosticEventRequestOuterClass.DiagnosticEvent, Boolean>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$events$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(DiagnosticEventRequestOuterClass.DiagnosticEvent it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!this.this$0.blockedEvents.contains(it.getEventType()));
            }
        }));
        if (!list.isEmpty()) {
            DeviceLog.debug("Unity Ads Sending diagnostic batch enabled: " + this.enabled.getValue().booleanValue() + " size: " + list.size() + " :: " + list);
            this._diagnosticEvents.tryEmit(list);
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void clear() {
        MutableStateFlow<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> mutableStateFlow = this.batch;
        while (!mutableStateFlow.compareAndSet(mutableStateFlow.getValue(), new ArrayList())) {
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void configure(NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticsEventsConfiguration) {
        Intrinsics.checkNotNullParameter(diagnosticsEventsConfiguration, "diagnosticsEventsConfiguration");
        this.configured.setValue(true);
        this.enabled.setValue(Boolean.valueOf(diagnosticsEventsConfiguration.getEnabled()));
        if (!this.enabled.getValue().booleanValue()) {
            clear();
            return;
        }
        this.maxBatchSize = diagnosticsEventsConfiguration.getMaxBatchSize();
        Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> set = this.allowedEvents;
        List<DiagnosticEventRequestOuterClass.DiagnosticEventType> allowedEventsList = diagnosticsEventsConfiguration.getAllowedEventsList();
        Intrinsics.checkNotNullExpressionValue(allowedEventsList, "diagnosticsEventsConfiguration.allowedEventsList");
        set.addAll(allowedEventsList);
        Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> set2 = this.blockedEvents;
        List<DiagnosticEventRequestOuterClass.DiagnosticEventType> blockedEventsList = diagnosticsEventsConfiguration.getBlockedEventsList();
        Intrinsics.checkNotNullExpressionValue(blockedEventsList, "diagnosticsEventsConfiguration.blockedEventsList");
        set2.addAll(blockedEventsList);
        this.flushTimer.start(0L, diagnosticsEventsConfiguration.getMaxBatchIntervalMs(), new Function0<Unit>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository.configure.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AndroidDiagnosticEventRepository.this.flush();
            }
        });
    }
}
