package com.onesignal.core.internal.http.impl;

import android.net.TrafficStats;
import android.os.Build;
import androidx.work.impl.Scheduler;
import com.google.common.net.HttpHeaders;
import com.onesignal.common.JSONUtils;
import com.onesignal.common.OneSignalWrapper;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.preferences.IPreferencesService;
import com.onesignal.core.internal.preferences.PreferenceOneSignalKeys;
import com.onesignal.core.internal.preferences.PreferenceStores;
import com.onesignal.debug.internal.logging.Logging;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;
import org.json.g3;

/* JADX INFO: compiled from: HttpClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.onesignal.core.internal.http.impl.HttpClient$makeRequestIODispatcher$job$1", f = "HttpClient.kt", i = {0, 0}, l = {151}, m = "invokeSuspend", n = {"con", "httpResponse"}, s = {"L$0", "I$0"})
final class HttpClient$makeRequestIODispatcher$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ OptionalHeaders $headers;
    final /* synthetic */ JSONObject $jsonBody;
    final /* synthetic */ String $method;
    final /* synthetic */ Ref.ObjectRef<HttpResponse> $retVal;
    final /* synthetic */ int $timeout;
    final /* synthetic */ String $url;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ HttpClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpClient$makeRequestIODispatcher$job$1(HttpClient httpClient, String str, int i, JSONObject jSONObject, String str2, OptionalHeaders optionalHeaders, Ref.ObjectRef<HttpResponse> objectRef, Continuation<? super HttpClient$makeRequestIODispatcher$job$1> continuation) {
        super(2, continuation);
        this.this$0 = httpClient;
        this.$url = str;
        this.$timeout = i;
        this.$jsonBody = jSONObject;
        this.$method = str2;
        this.$headers = optionalHeaders;
        this.$retVal = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HttpClient$makeRequestIODispatcher$job$1(this.this$0, this.$url, this.$timeout, this.$jsonBody, this.$method, this.$headers, this.$retVal, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((HttpClient$makeRequestIODispatcher$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02f4 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:101:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:104:0x0308  */
    /* JADX WARN: Code duplicated, block: B:105:0x030b  */
    /* JADX WARN: Code duplicated, block: B:108:0x0334 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0339  */
    /* JADX WARN: Code duplicated, block: B:115:0x03a6 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:117:0x03b9 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:118:0x03be  */
    /* JADX WARN: Code duplicated, block: B:121:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:122:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:125:0x0414 A[DONT_GENERATE, PHI: r13
  0x0414: PHI (r13v7 java.net.HttpURLConnection) = (r13v6 java.net.HttpURLConnection), (r13v8 java.net.HttpURLConnection) binds: [B:139:0x046e, B:124:0x0412] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:137:0x043e A[Catch: all -> 0x0474, TryCatch #1 {all -> 0x0474, blocks: (B:131:0x041e, B:133:0x0422, B:136:0x0427, B:138:0x0457, B:137:0x043e), top: B:148:0x041e }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00f5 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00fc A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:43:0x012e A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0157 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x015c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0161 A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0187 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:56:0x019f A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:57:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:59:0x01a7 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01ba A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:63:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:65:0x01c2 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:68:0x01d5 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01da  */
    /* JADX WARN: Code duplicated, block: B:71:0x01dd A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0208 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:75:0x020d  */
    /* JADX WARN: Code duplicated, block: B:78:0x021c A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:81:0x022d  */
    /* JADX WARN: Code duplicated, block: B:83:0x0238 A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0241  */
    /* JADX WARN: Code duplicated, block: B:86:0x0242  */
    /* JADX WARN: Code duplicated, block: B:89:0x0267 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0270 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:94:0x027f A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:96:0x02aa A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:98:0x02df A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:6:0x002a, B:34:0x00e8, B:36:0x00f5, B:37:0x00f8, B:39:0x00fc, B:40:0x010b, B:43:0x012e, B:44:0x0153, B:46:0x0157, B:51:0x0161, B:53:0x0187, B:54:0x019b, B:56:0x019f, B:59:0x01a7, B:60:0x01b6, B:62:0x01ba, B:65:0x01c2, B:66:0x01d1, B:68:0x01d5, B:71:0x01dd, B:72:0x01ec, B:74:0x0208, B:76:0x020e, B:78:0x021c, B:83:0x0238, B:87:0x0243, B:89:0x0267, B:90:0x026b, B:92:0x0270, B:94:0x027f, B:95:0x0283, B:97:0x02ca, B:96:0x02aa, B:98:0x02df, B:100:0x02f4, B:102:0x02fc, B:106:0x030c, B:108:0x0334, B:111:0x033c, B:113:0x0344, B:114:0x0390, B:115:0x03a6, B:117:0x03b9, B:119:0x03bf, B:123:0x03dd), top: B:147:0x002a }] */
    /* JADX WARN: Instruction removed from duplicated block: B:137:0x043e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:51:0x0161, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:53:0x0187, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:81:0x022d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:96:0x02aa, please report this as an issue */
    /* JADX WARN: Type inference failed for: r2v15, types: [T, com.onesignal.core.internal.http.HttpResponse] */
    /* JADX WARN: Type inference failed for: r2v27, types: [T, com.onesignal.core.internal.http.HttpResponse] */
    /* JADX WARN: Type inference failed for: r3v31, types: [T, com.onesignal.core.internal.http.HttpResponse] */
    /* JADX WARN: Type inference failed for: r3v4, types: [T, com.onesignal.core.internal.http.HttpResponse] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HttpURLConnection httpURLConnectionNewHttpURLConnection;
        int i;
        Object id;
        String str;
        HttpURLConnection httpURLConnection;
        OptionalHeaders optionalHeaders;
        String cacheKey;
        OptionalHeaders optionalHeaders2;
        String rywToken;
        OptionalHeaders optionalHeaders3;
        Integer retryCount;
        OptionalHeaders optionalHeaders4;
        Long sessionDuration;
        int responseCode;
        Integer numRetryAfterFromResponse;
        Integer numRetryLimitFromResponse;
        int iIntValue;
        long j;
        String str2;
        OptionalHeaders optionalHeaders5;
        String cacheKey2;
        String str3;
        String str4;
        Scanner scanner;
        String next;
        String str5;
        String str6;
        OptionalHeaders optionalHeaders6;
        String cacheKey3;
        String headerField;
        String str7;
        InputStream errorStream;
        String str8;
        String string$default;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (Build.VERSION.SDK_INT >= 26) {
                TrafficStats.setThreadStatsTag(10000);
            }
            try {
                httpURLConnectionNewHttpURLConnection = this.this$0._connectionFactory.newHttpURLConnection(this.$url);
                try {
                    httpURLConnectionNewHttpURLConnection.setUseCaches(false);
                    httpURLConnectionNewHttpURLConnection.setConnectTimeout(this.$timeout);
                    httpURLConnectionNewHttpURLConnection.setReadTimeout(this.$timeout);
                    httpURLConnectionNewHttpURLConnection.setRequestProperty("SDK-Version", "onesignal/android/050124");
                    if (OneSignalWrapper.getSdkType() != null && OneSignalWrapper.getSdkVersion() != null) {
                        httpURLConnectionNewHttpURLConnection.setRequestProperty("SDK-Wrapper", "onesignal/" + OneSignalWrapper.getSdkType() + '/' + OneSignalWrapper.getSdkVersion());
                    }
                    httpURLConnectionNewHttpURLConnection.setRequestProperty(HttpHeaders.ACCEPT, "application/vnd.onesignal.v1+json");
                    String pushSubscriptionId = this.this$0._configModelStore.getModel().getPushSubscriptionId();
                    if (pushSubscriptionId != null) {
                        if (pushSubscriptionId.length() > 0) {
                            httpURLConnectionNewHttpURLConnection.setRequestProperty("OneSignal-Subscription-Id", pushSubscriptionId);
                        }
                    }
                    this.L$0 = httpURLConnectionNewHttpURLConnection;
                    this.L$1 = httpURLConnectionNewHttpURLConnection;
                    this.L$2 = "OneSignal-Install-Id";
                    this.I$0 = -1;
                    this.label = 1;
                    id = this.this$0._installIdService.getId(this);
                    if (id == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    str = "OneSignal-Install-Id";
                    httpURLConnection = httpURLConnectionNewHttpURLConnection;
                    httpURLConnection.setRequestProperty(str, ((UUID) id).toString());
                    if (this.$jsonBody != null) {
                        httpURLConnectionNewHttpURLConnection.setDoInput(true);
                    }
                    if (this.$method != null) {
                        httpURLConnectionNewHttpURLConnection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
                        httpURLConnectionNewHttpURLConnection.setRequestMethod(this.$method);
                        httpURLConnectionNewHttpURLConnection.setDoOutput(true);
                    }
                    HttpClient httpClient = this.this$0;
                    String requestMethod = httpURLConnectionNewHttpURLConnection.getRequestMethod();
                    URL url = httpURLConnectionNewHttpURLConnection.getURL();
                    Intrinsics.checkNotNullExpressionValue(url, "con.url");
                    JSONObject jSONObject = this.$jsonBody;
                    Map<String, List<String>> requestProperties = httpURLConnectionNewHttpURLConnection.getRequestProperties();
                    Intrinsics.checkNotNullExpressionValue(requestProperties, "con.requestProperties");
                    httpClient.logHTTPSent(requestMethod, url, jSONObject, requestProperties);
                    if (this.$jsonBody != null) {
                        String unescapedEUIDString = JSONUtils.INSTANCE.toUnescapedEUIDString(this.$jsonBody);
                        Charset charsetForName = Charset.forName("UTF-8");
                        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(charsetName)");
                        byte[] bytes = unescapedEUIDString.getBytes(charsetForName);
                        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                        httpURLConnectionNewHttpURLConnection.setFixedLengthStreamingMode(bytes.length);
                        httpURLConnectionNewHttpURLConnection.getOutputStream().write(bytes);
                    }
                    optionalHeaders = this.$headers;
                    if (optionalHeaders != null) {
                        cacheKey = optionalHeaders.getCacheKey();
                    } else {
                        cacheKey = null;
                    }
                    if (cacheKey != null) {
                        string$default = IPreferencesService.DefaultImpls.getString$default(this.this$0._prefs, PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_ETAG_PREFIX + this.$headers.getCacheKey(), null, 4, null);
                        if (string$default != null) {
                            httpURLConnectionNewHttpURLConnection.setRequestProperty(HttpHeaders.IF_NONE_MATCH, string$default);
                            Logging.debug$default("HttpClient: Adding header if-none-match: " + string$default, null, 2, null);
                        }
                    }
                    optionalHeaders2 = this.$headers;
                    if (optionalHeaders2 != null) {
                        rywToken = optionalHeaders2.getRywToken();
                    } else {
                        rywToken = null;
                    }
                    if (rywToken != null) {
                        httpURLConnectionNewHttpURLConnection.setRequestProperty("OneSignal-RYW-Token", this.$headers.getRywToken().toString());
                    }
                    optionalHeaders3 = this.$headers;
                    if (optionalHeaders3 != null) {
                        retryCount = optionalHeaders3.getRetryCount();
                    } else {
                        retryCount = null;
                    }
                    if (retryCount != null) {
                        httpURLConnectionNewHttpURLConnection.setRequestProperty("Onesignal-Retry-Count", this.$headers.getRetryCount().toString());
                    }
                    optionalHeaders4 = this.$headers;
                    if (optionalHeaders4 != null) {
                        sessionDuration = optionalHeaders4.getSessionDuration();
                    } else {
                        sessionDuration = null;
                    }
                    if (sessionDuration != null) {
                        httpURLConnectionNewHttpURLConnection.setRequestProperty("OneSignal-Session-Duration", this.$headers.getSessionDuration().toString());
                    }
                    responseCode = httpURLConnectionNewHttpURLConnection.getResponseCode();
                    numRetryAfterFromResponse = this.this$0.retryAfterFromResponse(httpURLConnectionNewHttpURLConnection);
                    numRetryLimitFromResponse = this.this$0.retryLimitFromResponse(httpURLConnectionNewHttpURLConnection);
                    long currentTimeMillis = this.this$0._time.getCurrentTimeMillis();
                    if (numRetryAfterFromResponse != null) {
                        iIntValue = numRetryAfterFromResponse.intValue();
                    } else {
                        iIntValue = 0;
                    }
                    j = currentTimeMillis + ((long) (iIntValue * 1000));
                    if (j > this.this$0.delayNewRequestsUntil) {
                        this.this$0.delayNewRequestsUntil = j;
                    }
                    str2 = "GET";
                    if (responseCode != 304) {
                        IPreferencesService iPreferencesService = this.this$0._prefs;
                        StringBuilder sb = new StringBuilder(PreferenceOneSignalKeys.PREFS_OS_HTTP_CACHE_PREFIX);
                        optionalHeaders5 = this.$headers;
                        if (optionalHeaders5 != null) {
                            cacheKey2 = optionalHeaders5.getCacheKey();
                        } else {
                            cacheKey2 = null;
                        }
                        sb.append(cacheKey2);
                        String string$default2 = IPreferencesService.DefaultImpls.getString$default(iPreferencesService, PreferenceStores.ONESIGNAL, sb.toString(), null, 4, null);
                        StringBuilder sb2 = new StringBuilder("HttpClient: Got Response = ");
                        str3 = this.$method;
                        if (str3 == null) {
                            str4 = "GET";
                        } else {
                            str4 = str3;
                        }
                        sb2.append(str4);
                        sb2.append(' ');
                        sb2.append(httpURLConnectionNewHttpURLConnection.getURL());
                        sb2.append(" - Using Cached response due to 304: ");
                        sb2.append(string$default2);
                        Logging.debug$default(sb2.toString(), null, 2, null);
                        this.$retVal.element = new HttpResponse(responseCode, string$default2, null, numRetryAfterFromResponse, numRetryLimitFromResponse, 4, null);
                    } else {
                        switch (responseCode) {
                            case Scheduler.MAX_GREEDY_SCHEDULER_LIMIT /* 200 */:
                            case g3.c.b.INSTANCE_LOAD /* 201 */:
                            case g3.c.b.INSTANCE_LOAD_SUCCESS /* 202 */:
                                scanner = new Scanner(httpURLConnectionNewHttpURLConnection.getInputStream(), "UTF-8");
                                if (scanner.useDelimiter("\\A").hasNext()) {
                                    next = scanner.next();
                                } else {
                                    next = "";
                                }
                                scanner.close();
                                StringBuilder sb3 = new StringBuilder("HttpClient: Got Response = ");
                                str5 = this.$method;
                                if (str5 == null) {
                                    str6 = "GET";
                                } else {
                                    str6 = str5;
                                }
                                sb3.append(str6);
                                sb3.append(' ');
                                sb3.append(httpURLConnectionNewHttpURLConnection.getURL());
                                sb3.append(" - STATUS: ");
                                sb3.append(responseCode);
                                sb3.append(" - Body: ");
                                sb3.append(next);
                                Logging.debug$default(sb3.toString(), null, 2, null);
                                optionalHeaders6 = this.$headers;
                                if (optionalHeaders6 != null) {
                                    cacheKey3 = optionalHeaders6.getCacheKey();
                                } else {
                                    cacheKey3 = null;
                                }
                                if (cacheKey3 != null) {
                                    Logging.debug$default("HttpClient: Got Response = Response has etag of " + headerField + " so caching the response.", null, 2, null);
                                    this.this$0._prefs.saveString(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_ETAG_PREFIX + this.$headers.getCacheKey(), headerField);
                                    this.this$0._prefs.saveString(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_HTTP_CACHE_PREFIX + this.$headers.getCacheKey(), next);
                                }
                                this.$retVal.element = new HttpResponse(responseCode, next, null, numRetryAfterFromResponse, numRetryLimitFromResponse, 4, null);
                                break;
                            default:
                                StringBuilder sb4 = new StringBuilder("HttpClient: Got Response = ");
                                str7 = this.$method;
                                if (str7 == null) {
                                    str2 = str7;
                                }
                                sb4.append(str2);
                                sb4.append(' ');
                                sb4.append(httpURLConnectionNewHttpURLConnection.getURL());
                                sb4.append(" - FAILED STATUS: ");
                                sb4.append(responseCode);
                                Logging.debug$default(sb4.toString(), null, 2, null);
                                errorStream = httpURLConnectionNewHttpURLConnection.getErrorStream();
                                if (errorStream == null) {
                                    errorStream = httpURLConnectionNewHttpURLConnection.getInputStream();
                                }
                                if (errorStream != null) {
                                    Scanner scanner2 = new Scanner(errorStream, "UTF-8");
                                    String next2 = scanner2.useDelimiter("\\A").hasNext() ? scanner2.next() : "";
                                    scanner2.close();
                                    Logging.warn$default("HttpClient: Got Response = " + this.$method + " - STATUS: " + responseCode + " - Body: " + next2, null, 2, null);
                                    str8 = next2;
                                } else {
                                    Logging.warn$default("HttpClient: Got Response = " + this.$method + " - STATUS: " + responseCode + " - No response body!", null, 2, null);
                                    str8 = null;
                                }
                                this.$retVal.element = new HttpResponse(responseCode, str8, null, numRetryAfterFromResponse, numRetryLimitFromResponse, 4, null);
                                break;
                        }
                    }
                    if (httpURLConnectionNewHttpURLConnection != null) {
                    }
                } catch (Throwable th) {
                    th = th;
                    i = -1;
                    if (!(th instanceof ConnectException)) {
                        Logging.info$default("HttpClient: Could not send last request, device is offline. Throwable: " + th.getClass().getName(), null, 2, null);
                    } else {
                        Logging.info$default("HttpClient: Could not send last request, device is offline. Throwable: " + th.getClass().getName(), null, 2, null);
                    }
                    this.$retVal.element = new HttpResponse(i, null, th, null, null, 24, null);
                    return Unit.INSTANCE;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnectionNewHttpURLConnection = null;
            }
        } else if (i2 == 1) {
            int i3 = this.I$0;
            str = (String) this.L$2;
            httpURLConnection = (HttpURLConnection) this.L$1;
            httpURLConnectionNewHttpURLConnection = (HttpURLConnection) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                id = obj;
                httpURLConnection.setRequestProperty(str, ((UUID) id).toString());
                if (this.$jsonBody != null) {
                    httpURLConnectionNewHttpURLConnection.setDoInput(true);
                }
                if (this.$method != null) {
                    httpURLConnectionNewHttpURLConnection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
                    httpURLConnectionNewHttpURLConnection.setRequestMethod(this.$method);
                    httpURLConnectionNewHttpURLConnection.setDoOutput(true);
                }
                HttpClient httpClient2 = this.this$0;
                String requestMethod2 = httpURLConnectionNewHttpURLConnection.getRequestMethod();
                URL url2 = httpURLConnectionNewHttpURLConnection.getURL();
                Intrinsics.checkNotNullExpressionValue(url2, "con.url");
                JSONObject jSONObject2 = this.$jsonBody;
                Map<String, List<String>> requestProperties2 = httpURLConnectionNewHttpURLConnection.getRequestProperties();
                Intrinsics.checkNotNullExpressionValue(requestProperties2, "con.requestProperties");
                httpClient2.logHTTPSent(requestMethod2, url2, jSONObject2, requestProperties2);
                if (this.$jsonBody != null) {
                    String unescapedEUIDString2 = JSONUtils.INSTANCE.toUnescapedEUIDString(this.$jsonBody);
                    Charset charsetForName2 = Charset.forName("UTF-8");
                    Intrinsics.checkNotNullExpressionValue(charsetForName2, "forName(charsetName)");
                    byte[] bytes2 = unescapedEUIDString2.getBytes(charsetForName2);
                    Intrinsics.checkNotNullExpressionValue(bytes2, "this as java.lang.String).getBytes(charset)");
                    httpURLConnectionNewHttpURLConnection.setFixedLengthStreamingMode(bytes2.length);
                    httpURLConnectionNewHttpURLConnection.getOutputStream().write(bytes2);
                }
                optionalHeaders = this.$headers;
                if (optionalHeaders != null) {
                    cacheKey = optionalHeaders.getCacheKey();
                } else {
                    cacheKey = null;
                }
                if (cacheKey != null) {
                    string$default = IPreferencesService.DefaultImpls.getString$default(this.this$0._prefs, PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_ETAG_PREFIX + this.$headers.getCacheKey(), null, 4, null);
                    if (string$default != null) {
                        httpURLConnectionNewHttpURLConnection.setRequestProperty(HttpHeaders.IF_NONE_MATCH, string$default);
                        Logging.debug$default("HttpClient: Adding header if-none-match: " + string$default, null, 2, null);
                    }
                }
                optionalHeaders2 = this.$headers;
                if (optionalHeaders2 != null) {
                    rywToken = optionalHeaders2.getRywToken();
                } else {
                    rywToken = null;
                }
                if (rywToken != null) {
                    httpURLConnectionNewHttpURLConnection.setRequestProperty("OneSignal-RYW-Token", this.$headers.getRywToken().toString());
                }
                optionalHeaders3 = this.$headers;
                if (optionalHeaders3 != null) {
                    retryCount = optionalHeaders3.getRetryCount();
                } else {
                    retryCount = null;
                }
                if (retryCount != null) {
                    httpURLConnectionNewHttpURLConnection.setRequestProperty("Onesignal-Retry-Count", this.$headers.getRetryCount().toString());
                }
                optionalHeaders4 = this.$headers;
                if (optionalHeaders4 != null) {
                    sessionDuration = optionalHeaders4.getSessionDuration();
                } else {
                    sessionDuration = null;
                }
                if (sessionDuration != null) {
                    httpURLConnectionNewHttpURLConnection.setRequestProperty("OneSignal-Session-Duration", this.$headers.getSessionDuration().toString());
                }
                responseCode = httpURLConnectionNewHttpURLConnection.getResponseCode();
                numRetryAfterFromResponse = this.this$0.retryAfterFromResponse(httpURLConnectionNewHttpURLConnection);
                numRetryLimitFromResponse = this.this$0.retryLimitFromResponse(httpURLConnectionNewHttpURLConnection);
                long currentTimeMillis2 = this.this$0._time.getCurrentTimeMillis();
                if (numRetryAfterFromResponse != null) {
                    iIntValue = numRetryAfterFromResponse.intValue();
                } else {
                    iIntValue = 0;
                }
                j = currentTimeMillis2 + ((long) (iIntValue * 1000));
                if (j > this.this$0.delayNewRequestsUntil) {
                    this.this$0.delayNewRequestsUntil = j;
                }
                str2 = "GET";
                if (responseCode != 304) {
                    IPreferencesService iPreferencesService2 = this.this$0._prefs;
                    StringBuilder sb5 = new StringBuilder(PreferenceOneSignalKeys.PREFS_OS_HTTP_CACHE_PREFIX);
                    optionalHeaders5 = this.$headers;
                    if (optionalHeaders5 != null) {
                        cacheKey2 = optionalHeaders5.getCacheKey();
                    } else {
                        cacheKey2 = null;
                    }
                    sb5.append(cacheKey2);
                    String string$default3 = IPreferencesService.DefaultImpls.getString$default(iPreferencesService2, PreferenceStores.ONESIGNAL, sb5.toString(), null, 4, null);
                    StringBuilder sb6 = new StringBuilder("HttpClient: Got Response = ");
                    str3 = this.$method;
                    if (str3 == null) {
                        str4 = "GET";
                    } else {
                        str4 = str3;
                    }
                    sb6.append(str4);
                    sb6.append(' ');
                    sb6.append(httpURLConnectionNewHttpURLConnection.getURL());
                    sb6.append(" - Using Cached response due to 304: ");
                    sb6.append(string$default3);
                    Logging.debug$default(sb6.toString(), null, 2, null);
                    this.$retVal.element = new HttpResponse(responseCode, string$default3, null, numRetryAfterFromResponse, numRetryLimitFromResponse, 4, null);
                } else {
                    switch (responseCode) {
                        case Scheduler.MAX_GREEDY_SCHEDULER_LIMIT /* 200 */:
                        case g3.c.b.INSTANCE_LOAD /* 201 */:
                        case g3.c.b.INSTANCE_LOAD_SUCCESS /* 202 */:
                            scanner = new Scanner(httpURLConnectionNewHttpURLConnection.getInputStream(), "UTF-8");
                            if (scanner.useDelimiter("\\A").hasNext()) {
                                next = scanner.next();
                            } else {
                                next = "";
                            }
                            scanner.close();
                            StringBuilder sb7 = new StringBuilder("HttpClient: Got Response = ");
                            str5 = this.$method;
                            if (str5 == null) {
                                str6 = "GET";
                            } else {
                                str6 = str5;
                            }
                            sb7.append(str6);
                            sb7.append(' ');
                            sb7.append(httpURLConnectionNewHttpURLConnection.getURL());
                            sb7.append(" - STATUS: ");
                            sb7.append(responseCode);
                            sb7.append(" - Body: ");
                            sb7.append(next);
                            Logging.debug$default(sb7.toString(), null, 2, null);
                            optionalHeaders6 = this.$headers;
                            if (optionalHeaders6 != null) {
                                cacheKey3 = optionalHeaders6.getCacheKey();
                            } else {
                                cacheKey3 = null;
                            }
                            if (cacheKey3 != null && (headerField = httpURLConnectionNewHttpURLConnection.getHeaderField("etag")) != null) {
                                Logging.debug$default("HttpClient: Got Response = Response has etag of " + headerField + " so caching the response.", null, 2, null);
                                this.this$0._prefs.saveString(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_ETAG_PREFIX + this.$headers.getCacheKey(), headerField);
                                this.this$0._prefs.saveString(PreferenceStores.ONESIGNAL, PreferenceOneSignalKeys.PREFS_OS_HTTP_CACHE_PREFIX + this.$headers.getCacheKey(), next);
                            }
                            this.$retVal.element = new HttpResponse(responseCode, next, null, numRetryAfterFromResponse, numRetryLimitFromResponse, 4, null);
                            break;
                        default:
                            StringBuilder sb8 = new StringBuilder("HttpClient: Got Response = ");
                            str7 = this.$method;
                            if (str7 == null) {
                                str2 = str7;
                            }
                            sb8.append(str2);
                            sb8.append(' ');
                            sb8.append(httpURLConnectionNewHttpURLConnection.getURL());
                            sb8.append(" - FAILED STATUS: ");
                            sb8.append(responseCode);
                            Logging.debug$default(sb8.toString(), null, 2, null);
                            errorStream = httpURLConnectionNewHttpURLConnection.getErrorStream();
                            if (errorStream == null) {
                                errorStream = httpURLConnectionNewHttpURLConnection.getInputStream();
                            }
                            if (errorStream != null) {
                                Scanner scanner3 = new Scanner(errorStream, "UTF-8");
                                String next3 = scanner3.useDelimiter("\\A").hasNext() ? scanner3.next() : "";
                                scanner3.close();
                                Logging.warn$default("HttpClient: Got Response = " + this.$method + " - STATUS: " + responseCode + " - Body: " + next3, null, 2, null);
                                str8 = next3;
                            } else {
                                Logging.warn$default("HttpClient: Got Response = " + this.$method + " - STATUS: " + responseCode + " - No response body!", null, 2, null);
                                str8 = null;
                            }
                            this.$retVal.element = new HttpResponse(responseCode, str8, null, numRetryAfterFromResponse, numRetryLimitFromResponse, 4, null);
                            break;
                    }
                }
                if (httpURLConnectionNewHttpURLConnection != null) {
                }
            } catch (Throwable th3) {
                th = th3;
                i = i3;
                try {
                    if (!(th instanceof ConnectException) || (th instanceof UnknownHostException)) {
                        Logging.info$default("HttpClient: Could not send last request, device is offline. Throwable: " + th.getClass().getName(), null, 2, null);
                    } else {
                        Logging.warn("HttpClient: " + this.$method + " Error thrown from network stack. ", th);
                    }
                    this.$retVal.element = new HttpResponse(i, null, th, null, null, 24, null);
                    return Unit.INSTANCE;
                } finally {
                    if (httpURLConnectionNewHttpURLConnection != null) {
                        httpURLConnectionNewHttpURLConnection.disconnect();
                    }
                }
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
