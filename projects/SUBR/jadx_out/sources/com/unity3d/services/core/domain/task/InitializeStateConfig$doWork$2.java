package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.properties.SdkProperties;
import com.unity3d.services.core.request.NetworkIOException;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: InitializeStateConfig.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/Result;", "Lcom/unity3d/services/core/configuration/Configuration;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateConfig$doWork$2", f = "InitializeStateConfig.kt", i = {0}, l = {32}, m = "invokeSuspend", n = {"configuration"}, s = {"L$0"})
final class InitializeStateConfig$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateConfig.Params $params;
    Object L$0;
    int label;
    final /* synthetic */ InitializeStateConfig this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InitializeStateConfig$doWork$2(InitializeStateConfig.Params params, InitializeStateConfig initializeStateConfig, Continuation<? super InitializeStateConfig$doWork$2> continuation) {
        super(2, continuation);
        this.$params = params;
        this.this$0 = initializeStateConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new InitializeStateConfig$doWork$2(this.$params, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Configuration>> continuation) {
        return ((InitializeStateConfig$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM601constructorimpl;
        Object objMo520invokegIAlus;
        Configuration configuration = "Unity Ads init: load configuration from ";
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    InitializeStateConfig.Params params = this.$params;
                    InitializeStateConfig initializeStateConfig = this.this$0;
                    Result.Companion companion = Result.INSTANCE;
                    DeviceLog.info("Unity Ads init: load configuration from " + SdkProperties.getConfigUrl());
                    Configuration configuration2 = new Configuration(SdkProperties.getConfigUrl(), params.getConfig().getExperimentsReader());
                    InitializeStateConfigWithLoader initializeStateConfigWithLoader = initializeStateConfig.initializeStateConfigWithLoader;
                    InitializeStateConfigWithLoader.Params params2 = new InitializeStateConfigWithLoader.Params(configuration2);
                    this.L$0 = configuration2;
                    this.label = 1;
                    objMo520invokegIAlus = initializeStateConfigWithLoader.mo520invokegIAlus((BaseParams) params2, (Continuation<? super Result<? extends Configuration>>) this);
                    configuration = configuration2;
                    if (objMo520invokegIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Configuration configuration3 = (Configuration) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    objMo520invokegIAlus = ((Result) obj).getValue();
                    configuration = configuration3;
                }
                ResultKt.throwOnFailure(objMo520invokegIAlus);
                objM601constructorimpl = Result.m601constructorimpl((Configuration) objMo520invokegIAlus);
            } catch (NetworkIOException e) {
                throw new InitializationException(ErrorState.NetworkConfigRequest, e, configuration);
            }
        } catch (CancellationException e2) {
            throw e2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m608isSuccessimpl(objM601constructorimpl)) {
            Result.Companion companion3 = Result.INSTANCE;
            objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
        } else {
            Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
            if (thM604exceptionOrNullimpl != null) {
                Result.Companion companion4 = Result.INSTANCE;
                objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
            }
        }
        return Result.m600boximpl(objM601constructorimpl);
    }
}
