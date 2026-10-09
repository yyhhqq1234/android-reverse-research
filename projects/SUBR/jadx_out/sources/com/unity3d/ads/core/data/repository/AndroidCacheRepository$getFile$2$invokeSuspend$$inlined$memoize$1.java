package com.unity3d.ads.core.data.repository;

import com.google.android.gms.ads.RequestConfiguration;
import com.unity3d.ads.core.data.datasource.CacheDataSource;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.services.core.extensions.CoroutineExtensionsKt;
import java.io.File;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: compiled from: CoroutineExtensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¨\u0006\u0002"}, d2 = {RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;", "com/unity3d/services/core/extensions/CoroutineExtensionsKt$memoize$2", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1", f = "AndroidCacheRepository.kt", i = {0, 0}, l = {52, 45}, m = "invokeSuspend", n = {"$this$coroutineScope", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1"})
public final class AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CacheResult>, Object> {
    final /* synthetic */ String $filename$inlined;
    final /* synthetic */ Object $key;
    final /* synthetic */ int $priority$inlined;
    final /* synthetic */ String $url$inlined;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ AndroidCacheRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1(Object obj, Continuation continuation, AndroidCacheRepository androidCacheRepository, String str, String str2, int i) {
        super(2, continuation);
        this.$key = obj;
        this.this$0 = androidCacheRepository;
        this.$filename$inlined = str;
        this.$url$inlined = str2;
        this.$priority$inlined = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1 androidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1 = new AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1(this.$key, continuation, this.this$0, this.$filename$inlined, this.$url$inlined, this.$priority$inlined);
        androidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1.L$0 = obj;
        return androidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CacheResult> continuation) {
        return ((AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        Mutex mutex;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            coroutineScope = (CoroutineScope) this.L$0;
            Mutex mutex2 = CoroutineExtensionsKt.getMutex();
            Object obj3 = this.$key;
            this.L$0 = coroutineScope;
            this.L$1 = mutex2;
            this.L$2 = obj3;
            this.label = 1;
            if (mutex2.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = mutex2;
            obj2 = obj3;
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            obj2 = this.L$2;
            mutex = (Mutex) this.L$1;
            coroutineScope = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            LinkedHashMap<Object, Deferred<?>> deferreds = CoroutineExtensionsKt.getDeferreds();
            Deferred<?> deferredAsync$default = deferreds.get(obj2);
            if (deferredAsync$default == null) {
                deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new AnonymousClass1(null, this.this$0, this.$filename$inlined, this.$url$inlined, this.$priority$inlined), 3, null);
                deferreds.put(obj2, deferredAsync$default);
            }
            Deferred<?> deferred = deferredAsync$default;
            mutex.unlock(null);
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 2;
            Object objAwait = deferred.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: CoroutineExtensions.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¨\u0006\u0002"}, d2 = {RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;", "com/unity3d/services/core/extensions/CoroutineExtensionsKt$memoize$2$deferred$1$1$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1$1", f = "AndroidCacheRepository.kt", i = {}, l = {47}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CacheResult>, Object> {
        final /* synthetic */ String $filename$inlined;
        final /* synthetic */ int $priority$inlined;
        final /* synthetic */ String $url$inlined;
        int label;
        final /* synthetic */ AndroidCacheRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, AndroidCacheRepository androidCacheRepository, String str, String str2, int i) {
            super(2, continuation);
            this.this$0 = androidCacheRepository;
            this.$filename$inlined = str;
            this.$url$inlined = str2;
            this.$priority$inlined = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation, this.this$0, this.$filename$inlined, this.$url$inlined, this.$priority$inlined);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CacheResult> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CacheDataSource cacheDataSource = this.this$0.remoteCacheDataSource;
                File file = this.this$0.cacheDir;
                String str = this.$filename$inlined;
                String str2 = this.$url$inlined;
                Integer numBoxInt = Boxing.boxInt(this.$priority$inlined);
                this.label = 1;
                obj = cacheDataSource.getFile(file, str, str2, numBoxInt, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }
}
