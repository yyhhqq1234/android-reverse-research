package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.repository.CacheRepository;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeSource;
import org.json.JSONArray;

/* JADX INFO: compiled from: CommonCacheFile.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J3\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/unity3d/ads/core/domain/CommonCacheFile;", "Lcom/unity3d/ads/core/domain/CacheFile;", "cacheRepository", "Lcom/unity3d/ads/core/data/repository/CacheRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "(Lcom/unity3d/ads/core/data/repository/CacheRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "invoke", "Lcom/unity3d/ads/core/data/model/CacheResult;", "url", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "headers", "Lorg/json/JSONArray;", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "", "(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lorg/json/JSONArray;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CommonCacheFile implements CacheFile {
    private final CacheRepository cacheRepository;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.CommonCacheFile$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonCacheFile.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.CommonCacheFile", f = "CommonCacheFile.kt", i = {0, 0, 0, 0}, l = {28}, m = "invoke", n = {"this", "url", "adObject", "startTime"}, s = {"L$0", "L$1", "L$2", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonCacheFile.this.invoke(null, null, null, 0, this);
        }
    }

    public CommonCacheFile(CacheRepository cacheRepository, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.cacheRepository = cacheRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    @Override // com.unity3d.ads.core.domain.CacheFile
    public Object invoke(String str, AdObject adObject, JSONArray jSONArray, int i, Continuation<? super CacheResult> continuation) {
        AnonymousClass1 anonymousClass1;
        long jM2066markNowz9LOYto;
        String str2;
        Object file;
        CommonCacheFile commonCacheFile;
        AdObject adObject2;
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
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass2.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            jM2066markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m2066markNowz9LOYto();
            CacheRepository cacheRepository = this.cacheRepository;
            String iSO8859String = ProtobufExtensionsKt.toISO8859String(adObject.getOpportunityId());
            anonymousClass2.L$0 = this;
            str2 = str;
            anonymousClass2.L$1 = str2;
            anonymousClass2.L$2 = adObject;
            anonymousClass2.J$0 = jM2066markNowz9LOYto;
            anonymousClass2.label = 1;
            file = cacheRepository.getFile(str, iSO8859String, jSONArray, i, anonymousClass2);
            if (file == coroutine_suspended) {
                return coroutine_suspended;
            }
            commonCacheFile = this;
            adObject2 = adObject;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            long j = anonymousClass2.J$0;
            AdObject adObject3 = (AdObject) anonymousClass2.L$2;
            String str3 = (String) anonymousClass2.L$1;
            commonCacheFile = (CommonCacheFile) anonymousClass2.L$0;
            ResultKt.throwOnFailure(obj);
            jM2066markNowz9LOYto = j;
            adObject2 = adObject3;
            file = obj;
            str2 = str3;
        }
        CacheResult cacheResult = (CacheResult) file;
        if (cacheResult instanceof CacheResult.Success) {
            CacheResult.Success success = (CacheResult.Success) cacheResult;
            commonCacheFile.sendDiagnosticEvent.invoke("native_load_cache_success_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(jM2066markNowz9LOYto))), MapsKt.mapOf(TuplesKt.to("cache_source", success.getSource().toString()), TuplesKt.to("url", str2), TuplesKt.to("protocol", success.getCachedFile().getProtocol())), MapsKt.mapOf(TuplesKt.to("size_kb", Boxing.boxInt((int) (success.getCachedFile().getContentLength() / ((long) 1024))))), adObject2);
        } else if (cacheResult instanceof CacheResult.Failure) {
            CacheResult.Failure failure = (CacheResult.Failure) cacheResult;
            SendDiagnosticEvent.DefaultImpls.invoke$default(commonCacheFile.sendDiagnosticEvent, "native_load_cache_failure_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(jM2066markNowz9LOYto))), MapsKt.mapOf(TuplesKt.to("cache_source", failure.getSource().toString()), TuplesKt.to("url", str2), TuplesKt.to("reason", failure.getError().toString())), null, adObject2, 8, null);
        }
        return cacheResult;
    }
}
