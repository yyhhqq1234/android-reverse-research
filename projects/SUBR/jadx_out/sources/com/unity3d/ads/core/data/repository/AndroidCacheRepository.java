package com.unity3d.ads.core.data.repository;

import android.content.Context;
import com.unity3d.ads.core.data.datasource.CacheDataSource;
import com.unity3d.ads.core.data.model.CacheError;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.CacheSource;
import com.unity3d.ads.core.data.model.CachedFile;
import com.unity3d.ads.core.domain.CreateFile;
import com.unity3d.ads.core.domain.GetCacheDirectory;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.extensions.FileExtensionsKt;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.NonCancellable;
import org.json.JSONArray;
import org.json.jc;

/* JADX INFO: compiled from: AndroidCacheRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0012H\u0002J\u0011\u0010\u001d\u001a\u00020\u001bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0011H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\"J\b\u0010#\u001a\u00020\u000eH\u0002J\b\u0010$\u001a\u00020\u0011H\u0002J\u0011\u0010%\u001a\u00020&H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ3\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u00112\b\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010/J\u0010\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\u0011H\u0002J\u000e\u00102\u001a\u00020\u00112\u0006\u0010)\u001a\u00020\u0011J\b\u00103\u001a\u00020\u000eH\u0002J\u0010\u00104\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u0012H\u0016J\u0010\u00105\u001a\u00020(2\u0006\u0010!\u001a\u00020\u0011H\u0016R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00160\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;", "Lcom/unity3d/ads/core/data/repository/CacheRepository;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getCacheDirectory", "Lcom/unity3d/ads/core/domain/GetCacheDirectory;", "createFile", "Lcom/unity3d/ads/core/domain/CreateFile;", "remoteCacheDataSource", "Lcom/unity3d/ads/core/data/datasource/CacheDataSource;", "context", "Landroid/content/Context;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetCacheDirectory;Lcom/unity3d/ads/core/domain/CreateFile;Lcom/unity3d/ads/core/data/datasource/CacheDataSource;Landroid/content/Context;)V", "cacheDir", "Ljava/io/File;", "cachedFiles", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/unity3d/ads/core/data/model/CachedFile;", "getCachedFiles", "()Ljava/util/concurrent/ConcurrentHashMap;", "neededFiles", "", "getNeededFiles", "scope", "Lkotlinx/coroutines/CoroutineScope;", "addFileToCache", "", "cachedFile", "clearCache", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "doesFileExist", "", jc.c.b, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCacheDirBase", "getCacheDirPath", "getCacheSize", "", "getFile", "Lcom/unity3d/ads/core/data/model/CacheResult;", "url", "objectId", "headers", "Lorg/json/JSONArray;", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "", "(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFilePath", "filename", "getFilename", "initCacheDir", "removeFile", "retrieveFile", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidCacheRepository implements CacheRepository {
    private final File cacheDir;
    private final ConcurrentHashMap<String, CachedFile> cachedFiles;
    private final Context context;
    private final CreateFile createFile;
    private final GetCacheDirectory getCacheDirectory;
    private final ConcurrentHashMap<String, Set<String>> neededFiles;
    private final CacheDataSource remoteCacheDataSource;
    private final CoroutineScope scope;

    private final String getCacheDirPath() {
        return UnityAdsConstants.DefaultUrls.CACHE_DIR_NAME;
    }

    public AndroidCacheRepository(CoroutineDispatcher ioDispatcher, GetCacheDirectory getCacheDirectory, CreateFile createFile, CacheDataSource remoteCacheDataSource, Context context) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(getCacheDirectory, "getCacheDirectory");
        Intrinsics.checkNotNullParameter(createFile, "createFile");
        Intrinsics.checkNotNullParameter(remoteCacheDataSource, "remoteCacheDataSource");
        Intrinsics.checkNotNullParameter(context, "context");
        this.getCacheDirectory = getCacheDirectory;
        this.createFile = createFile;
        this.remoteCacheDataSource = remoteCacheDataSource;
        this.context = context;
        this.scope = CoroutineScopeKt.plus(CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(ioDispatcher), new CoroutineName("CacheRepository")), NonCancellable.INSTANCE);
        this.cachedFiles = new ConcurrentHashMap<>();
        this.neededFiles = new ConcurrentHashMap<>();
        this.cacheDir = initCacheDir();
    }

    public final ConcurrentHashMap<String, CachedFile> getCachedFiles() {
        return this.cachedFiles;
    }

    public final ConcurrentHashMap<String, Set<String>> getNeededFiles() {
        return this.neededFiles;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFile$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/unity3d/ads/core/data/model/CacheResult;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFile$2", f = "AndroidCacheRepository.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
    static final class C03692 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CacheResult>, Object> {
        final /* synthetic */ String $objectId;
        final /* synthetic */ int $priority;
        final /* synthetic */ String $url;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03692(String str, String str2, int i, Continuation<? super C03692> continuation) {
            super(2, continuation);
            this.$url = str;
            this.$objectId = str2;
            this.$priority = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidCacheRepository.this.new C03692(this.$url, this.$objectId, this.$priority, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CacheResult> continuation) {
            return ((C03692) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String filename = AndroidCacheRepository.this.getFilename(this.$url);
                try {
                    AndroidCacheRepository.this.createFile.invoke(AndroidCacheRepository.this.getFilePath(filename)).createNewFile();
                    String str = this.$url;
                    this.label = 1;
                    obj = CoroutineScopeKt.coroutineScope(new AndroidCacheRepository$getFile$2$invokeSuspend$$inlined$memoize$1(str, null, AndroidCacheRepository.this, filename, str, this.$priority), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (IOException unused) {
                    return new CacheResult.Failure(CacheError.FILE_IO_CREATE, null, 2, null);
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CacheResult cacheResult = (CacheResult) obj;
            if (cacheResult instanceof CacheResult.Success) {
                CachedFile cachedFile = ((CacheResult.Success) cacheResult).getCachedFile();
                AndroidCacheRepository.this.addFileToCache(cachedFile.copy((254 & 1) != 0 ? cachedFile.objectId : this.$objectId, (254 & 2) != 0 ? cachedFile.url : null, (254 & 4) != 0 ? cachedFile.name : null, (254 & 8) != 0 ? cachedFile.file : null, (254 & 16) != 0 ? cachedFile.extension : null, (254 & 32) != 0 ? cachedFile.contentLength : 0L, (254 & 64) != 0 ? cachedFile.protocol : null, (254 & 128) != 0 ? cachedFile.priority : 0));
            }
            return cacheResult;
        }
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object getFile(String str, String str2, JSONArray jSONArray, int i, Continuation<? super CacheResult> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C03692(str, str2, i, null), continuation);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public CacheResult retrieveFile(String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        CachedFile cachedFile = this.cachedFiles.get(fileName);
        if (cachedFile != null) {
            return new CacheResult.Success(cachedFile, CacheSource.LOCAL);
        }
        return new CacheResult.Failure(CacheError.FILE_NOT_FOUND, CacheSource.LOCAL);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public boolean removeFile(CachedFile cachedFile) {
        Intrinsics.checkNotNullParameter(cachedFile, "cachedFile");
        this.cachedFiles.remove(cachedFile.getName());
        Set<String> set = this.neededFiles.get(cachedFile.getName());
        if (set != null) {
            set.remove(cachedFile.getObjectId());
        }
        File file = cachedFile.getFile();
        if (file != null) {
            if (!file.exists()) {
                file = null;
            }
            if (file != null) {
                return file.delete();
            }
        }
        return false;
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object doesFileExist(String str, Continuation<? super Boolean> continuation) {
        return Boxing.boxBoolean(this.cachedFiles.containsKey(str));
    }

    public final String getFilename(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return StringExtensionsKt.getSHA256Hash(url);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$clearCache$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$clearCache$2", f = "AndroidCacheRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidCacheRepository.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                File[] fileArrListFiles = AndroidCacheRepository.this.cacheDir.listFiles();
                if (fileArrListFiles == null) {
                    return null;
                }
                for (File file : fileArrListFiles) {
                    file.delete();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object clearCache(Continuation<? super Unit> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new AnonymousClass2(null), continuation);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getCacheSize$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getCacheSize$2", f = "AndroidCacheRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03682 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Long>, Object> {
        int label;

        C03682(Continuation<? super C03682> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidCacheRepository.this.new C03682(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Long> continuation) {
            return ((C03682) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return Boxing.boxLong(FileExtensionsKt.getDirectorySize(AndroidCacheRepository.this.cacheDir));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object getCacheSize(Continuation<? super Long> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C03682(null), continuation);
    }

    private final File initCacheDir() {
        File fileInvoke = this.getCacheDirectory.invoke(getCacheDirBase(), getCacheDirPath());
        fileInvoke.mkdirs();
        return fileInvoke;
    }

    private final File getCacheDirBase() {
        File cacheDir = this.context.getCacheDir();
        Intrinsics.checkNotNullExpressionValue(cacheDir, "context.cacheDir");
        return cacheDir;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getFilePath(String filename) {
        return this.cacheDir.getAbsolutePath() + File.separator + filename;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addFileToCache(CachedFile cachedFile) {
        this.cachedFiles.put(cachedFile.getName(), cachedFile);
        LinkedHashSet linkedHashSet = this.neededFiles.get(cachedFile.getName());
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
        }
        linkedHashSet.add(cachedFile.getObjectId());
        this.neededFiles.put(cachedFile.getName(), linkedHashSet);
    }
}
