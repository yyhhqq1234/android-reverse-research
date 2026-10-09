package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.ads.gatewayclient.RequestPolicy;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidTriggerInitializationCompletedRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0011\u0010\u000b\u001a\u00020\fH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\rR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidTriggerInitializationCompletedRequest;", "Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;", "getInitializationCompletedRequest", "Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "invoke", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidTriggerInitializationCompletedRequest implements TriggerInitializationCompletedRequest {
    private final GatewayClient gatewayClient;
    private final GetInitializationCompletedRequest getInitializationCompletedRequest;
    private final GetRequestPolicy getRequestPolicy;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidTriggerInitializationCompletedRequest$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidTriggerInitializationCompletedRequest.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidTriggerInitializationCompletedRequest", f = "AndroidTriggerInitializationCompletedRequest.kt", i = {0, 0, 1, 1}, l = {32, 34}, m = "invoke", n = {"this", "startTime", "this", "startTime"}, s = {"L$0", "J$0", "L$0", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidTriggerInitializationCompletedRequest.this.invoke(this);
        }
    }

    public AndroidTriggerInitializationCompletedRequest(GetInitializationCompletedRequest getInitializationCompletedRequest, GetRequestPolicy getRequestPolicy, GatewayClient gatewayClient, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(getInitializationCompletedRequest, "getInitializationCompletedRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.getInitializationCompletedRequest = getInitializationCompletedRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.gatewayClient = gatewayClient;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cd A[Catch: Exception -> 0x0113, TRY_LEAVE, TryCatch #5 {Exception -> 0x0113, blocks: (B:36:0x00c5, B:38:0x00cd), top: B:65:0x00c5 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0158  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    @Override // com.unity3d.ads.core.domain.TriggerInitializationCompletedRequest
    public Object invoke(Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        long jM2066markNowz9LOYto;
        char c;
        char c2;
        long j;
        AndroidTriggerInitializationCompletedRequest androidTriggerInitializationCompletedRequest;
        AndroidTriggerInitializationCompletedRequest androidTriggerInitializationCompletedRequest2;
        long j2;
        AndroidTriggerInitializationCompletedRequest androidTriggerInitializationCompletedRequest3;
        long j3;
        String message;
        UniversalResponseOuterClass.UniversalResponse universalResponse;
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object objInvoke = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objInvoke);
            jM2066markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m2066markNowz9LOYto();
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_initialization_completed_started", null, null, null, null, 30, null);
            try {
                GetInitializationCompletedRequest getInitializationCompletedRequest = this.getInitializationCompletedRequest;
                anonymousClass2.L$0 = this;
                anonymousClass2.J$0 = jM2066markNowz9LOYto;
                anonymousClass2.label = 1;
                objInvoke = getInitializationCompletedRequest.invoke(anonymousClass2);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                androidTriggerInitializationCompletedRequest2 = this;
                j2 = jM2066markNowz9LOYto;
                UniversalRequestOuterClass.UniversalRequest universalRequest = (UniversalRequestOuterClass.UniversalRequest) objInvoke;
                RequestPolicy requestPolicyInvoke = androidTriggerInitializationCompletedRequest2.getRequestPolicy.invoke();
                GatewayClient gatewayClient = androidTriggerInitializationCompletedRequest2.gatewayClient;
                OperationType operationType = OperationType.INITIALIZATION_COMPLETED;
                anonymousClass2.L$0 = androidTriggerInitializationCompletedRequest2;
                anonymousClass2.J$0 = j2;
                anonymousClass2.label = 2;
                androidTriggerInitializationCompletedRequest3 = androidTriggerInitializationCompletedRequest2;
                j3 = j2;
                c = 1;
                c2 = 2;
                objInvoke = GatewayClient.DefaultImpls.request$default(gatewayClient, null, universalRequest, requestPolicyInvoke, operationType, anonymousClass2, 1, null);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                androidTriggerInitializationCompletedRequest = androidTriggerInitializationCompletedRequest3;
                j = j3;
                universalResponse = (UniversalResponseOuterClass.UniversalResponse) objInvoke;
                if (universalResponse.hasError()) {
                    SendDiagnosticEvent sendDiagnosticEvent = androidTriggerInitializationCompletedRequest.sendDiagnosticEvent;
                    Double dBoxDouble = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j)));
                    Pair[] pairArr = new Pair[3];
                    pairArr[0] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
                    pairArr[c] = TuplesKt.to("reason", "gateway");
                    pairArr[c2] = TuplesKt.to("reason_debug", universalResponse.getError().getErrorText());
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_initialize_completed_task_failure_time", dBoxDouble, MapsKt.mapOf(pairArr), null, null, 24, null);
                }
            } catch (Exception e) {
                e = e;
                c = 1;
                c2 = 2;
                j = jM2066markNowz9LOYto;
                androidTriggerInitializationCompletedRequest = this;
            }
        } else {
            if (i == 1) {
                jM2066markNowz9LOYto = anonymousClass2.J$0;
                androidTriggerInitializationCompletedRequest2 = (AndroidTriggerInitializationCompletedRequest) anonymousClass2.L$0;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    j2 = jM2066markNowz9LOYto;
                    try {
                        UniversalRequestOuterClass.UniversalRequest universalRequest2 = (UniversalRequestOuterClass.UniversalRequest) objInvoke;
                        RequestPolicy requestPolicyInvoke2 = androidTriggerInitializationCompletedRequest2.getRequestPolicy.invoke();
                        GatewayClient gatewayClient2 = androidTriggerInitializationCompletedRequest2.gatewayClient;
                        OperationType operationType2 = OperationType.INITIALIZATION_COMPLETED;
                        anonymousClass2.L$0 = androidTriggerInitializationCompletedRequest2;
                        anonymousClass2.J$0 = j2;
                        anonymousClass2.label = 2;
                        androidTriggerInitializationCompletedRequest3 = androidTriggerInitializationCompletedRequest2;
                        j3 = j2;
                        c = 1;
                        c2 = 2;
                        try {
                            objInvoke = GatewayClient.DefaultImpls.request$default(gatewayClient2, null, universalRequest2, requestPolicyInvoke2, operationType2, anonymousClass2, 1, null);
                            if (objInvoke == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            androidTriggerInitializationCompletedRequest = androidTriggerInitializationCompletedRequest3;
                            j = j3;
                            universalResponse = (UniversalResponseOuterClass.UniversalResponse) objInvoke;
                            if (universalResponse.hasError()) {
                                SendDiagnosticEvent sendDiagnosticEvent2 = androidTriggerInitializationCompletedRequest.sendDiagnosticEvent;
                                Double dBoxDouble2 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j)));
                                Pair[] pairArr2 = new Pair[3];
                                pairArr2[0] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
                                pairArr2[c] = TuplesKt.to("reason", "gateway");
                                pairArr2[c2] = TuplesKt.to("reason_debug", universalResponse.getError().getErrorText());
                                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, "native_initialize_completed_task_failure_time", dBoxDouble2, MapsKt.mapOf(pairArr2), null, null, 24, null);
                            }
                        } catch (Exception e2) {
                            e = e2;
                            androidTriggerInitializationCompletedRequest = androidTriggerInitializationCompletedRequest3;
                            j = j3;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        androidTriggerInitializationCompletedRequest3 = androidTriggerInitializationCompletedRequest2;
                        j3 = j2;
                        c = 1;
                        c2 = 2;
                    }
                } catch (Exception e4) {
                    e = e4;
                    j = jM2066markNowz9LOYto;
                    androidTriggerInitializationCompletedRequest = androidTriggerInitializationCompletedRequest2;
                    c = 1;
                    c2 = 2;
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = anonymousClass2.J$0;
                androidTriggerInitializationCompletedRequest = (AndroidTriggerInitializationCompletedRequest) anonymousClass2.L$0;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    c = 1;
                    c2 = 2;
                    try {
                        universalResponse = (UniversalResponseOuterClass.UniversalResponse) objInvoke;
                        if (universalResponse.hasError()) {
                            SendDiagnosticEvent sendDiagnosticEvent3 = androidTriggerInitializationCompletedRequest.sendDiagnosticEvent;
                            Double dBoxDouble3 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j)));
                            Pair[] pairArr3 = new Pair[3];
                            pairArr3[0] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
                            pairArr3[c] = TuplesKt.to("reason", "gateway");
                            pairArr3[c2] = TuplesKt.to("reason_debug", universalResponse.getError().getErrorText());
                            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent3, "native_initialize_completed_task_failure_time", dBoxDouble3, MapsKt.mapOf(pairArr3), null, null, 24, null);
                        }
                    } catch (Exception e5) {
                        e = e5;
                        SendDiagnosticEvent sendDiagnosticEvent4 = androidTriggerInitializationCompletedRequest.sendDiagnosticEvent;
                        Double dBoxDouble4 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j)));
                        Pair[] pairArr4 = new Pair[3];
                        pairArr4[0] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
                        pairArr4[c] = TuplesKt.to("reason", "uncaught_exception");
                        message = e.getMessage();
                        if (message == null) {
                            message = "unknown";
                        }
                        pairArr4[c2] = TuplesKt.to("reason_debug", message);
                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent4, "native_initialize_completed_task_failure_time", dBoxDouble4, MapsKt.mapOf(pairArr4), null, null, 24, null);
                    }
                } catch (Exception e6) {
                    e = e6;
                    c = 1;
                    c2 = 2;
                }
            }
            c = 1;
            c2 = 2;
            SendDiagnosticEvent sendDiagnosticEvent5 = androidTriggerInitializationCompletedRequest.sendDiagnosticEvent;
            Double dBoxDouble5 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j)));
            Pair[] pairArr5 = new Pair[3];
            pairArr5[0] = TuplesKt.to("operation", OperationType.INITIALIZATION_COMPLETED.toString());
            pairArr5[c] = TuplesKt.to("reason", "uncaught_exception");
            message = e.getMessage();
            if (message == null) {
                message = "unknown";
            }
            pairArr5[c2] = TuplesKt.to("reason_debug", message);
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent5, "native_initialize_completed_task_failure_time", dBoxDouble5, MapsKt.mapOf(pairArr5), null, null, 24, null);
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(androidTriggerInitializationCompletedRequest.sendDiagnosticEvent, "native_initialize_completed_task_success_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j))), null, null, null, 28, null);
        return Unit.INSTANCE;
    }
}
