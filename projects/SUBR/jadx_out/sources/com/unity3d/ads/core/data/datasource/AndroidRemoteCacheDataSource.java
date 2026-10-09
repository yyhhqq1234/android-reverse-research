package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.core.data.model.CacheError;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.CacheSource;
import com.unity3d.ads.core.data.model.CachedFile;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.HttpResponseKt;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.jc;
import org.json.y8;

/* JADX INFO: compiled from: AndroidRemoteCacheDataSource.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J+\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\rJ5\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidRemoteCacheDataSource;", "Lcom/unity3d/ads/core/data/datasource/CacheDataSource;", "httpClient", "Lcom/unity3d/services/core/network/core/HttpClient;", "(Lcom/unity3d/services/core/network/core/HttpClient;)V", "downloadFile", "Lcom/unity3d/services/core/network/model/HttpResponse;", "url", "", "destination", "Ljava/io/File;", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "", "(Ljava/lang/String;Ljava/io/File;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFile", "Lcom/unity3d/ads/core/data/model/CacheResult;", "cachePath", jc.c.b, "(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setupFile", "filename", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidRemoteCacheDataSource implements CacheDataSource {
    private final HttpClient httpClient;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource$getFile$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidRemoteCacheDataSource.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource", f = "AndroidRemoteCacheDataSource.kt", i = {0, 0, 0, 0}, l = {26}, m = "getFile", n = {jc.c.b, "url", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, y8.h.b}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidRemoteCacheDataSource.this.getFile(null, null, null, null, this);
        }
    }

    public AndroidRemoteCacheDataSource(HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.httpClient = httpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    @Override // com.unity3d.ads.core.data.datasource.CacheDataSource
    public Object getFile(File file, String str, String str2, Integer num, Continuation<? super CacheResult> continuation) throws IOException {
        AnonymousClass1 anonymousClass1;
        String str3;
        File file2;
        String str4;
        Integer num2 = num;
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
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (str2 == null) {
                return new CacheResult.Failure(CacheError.MALFORMED_URL, CacheSource.REMOTE);
            }
            File file3 = setupFile(file, str);
            anonymousClass1.L$0 = str;
            anonymousClass1.L$1 = str2;
            anonymousClass1.L$2 = num2;
            anonymousClass1.L$3 = file3;
            anonymousClass1.label = 1;
            Object objDownloadFile = downloadFile(str2, file3, num2, anonymousClass1);
            if (objDownloadFile == coroutine_suspended) {
                return coroutine_suspended;
            }
            str3 = str2;
            file2 = file3;
            obj = objDownloadFile;
            str4 = str;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            File file4 = (File) anonymousClass1.L$3;
            num2 = (Integer) anonymousClass1.L$2;
            String str5 = (String) anonymousClass1.L$1;
            String str6 = (String) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            file2 = file4;
            str4 = str6;
            str3 = str5;
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        CachedFile cachedFile = new CachedFile("", str3, str4, file2, StringsKt.substringAfterLast$default(StringsKt.substringBefore$default(str3, "?", (String) null, 2, (Object) null), ".", (String) null, 2, (Object) null), httpResponse.getContentSize(), httpResponse.getProtocol(), num2 != null ? num2.intValue() : Integer.MAX_VALUE);
        if (HttpResponseKt.isSuccessful(httpResponse)) {
            return new CacheResult.Success(cachedFile, CacheSource.REMOTE);
        }
        return new CacheResult.Failure(CacheError.NETWORK_ERROR, CacheSource.REMOTE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object downloadFile(String str, File file, Integer num, Continuation<? super HttpResponse> continuation) {
        return this.httpClient.execute(new HttpRequest(str, null, null, null, null, null, null, null, null, 0, 0, 0, 0, false, null, file, num != null ? num.intValue() : Integer.MAX_VALUE, 32766, null), continuation);
    }

    private final File setupFile(File cachePath, String filename) throws IOException {
        File file = new File(cachePath, filename);
        if (!file.exists()) {
            file.createNewFile();
        } else {
            file.delete();
            file.createNewFile();
        }
        return file;
    }
}
