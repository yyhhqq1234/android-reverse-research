package org.json;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\nB#\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\u000f\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/ironsource/xq;", "Lcom/ironsource/wg;", "Lcom/ironsource/wg$a;", "Landroid/content/Context;", "context", "Lcom/ironsource/yq;", "sdkSessionInfoStorage", "", "b", "", "a", "", "", "c", "Lcom/ironsource/yq;", y8.a.j, "Lcom/ironsource/pq;", "Lcom/ironsource/pq;", "initResponseStorage", "Lcom/ironsource/n9;", "Lcom/ironsource/n9;", "currentTimeProvider", "d", "I", zq.a.SESSION_NUMBER, "e", "J", "firstSessionTimestamp", "<init>", "(Lcom/ironsource/yq;Lcom/ironsource/pq;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class xq implements wg, wg.a {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final yq storage;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final pq initResponseStorage;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final n9 currentTimeProvider;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private int sessionNumber;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private long firstSessionTimestamp;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/ironsource/xq$a;", "", "", "b", "I", "SESSION_NUMBER_NOT_INITIALIZED_VALUE", "c", "SESSION_NUMBER_INITIAL_VALUE", "", "d", "J", "FIRST_SESSION_TIMESTAMP_NOT_INITIALIZED_VALUE", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a {
        public static final a a = new a();

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        public static final int SESSION_NUMBER_NOT_INITIALIZED_VALUE = -1;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        public static final int SESSION_NUMBER_INITIAL_VALUE = 0;

        /* JADX INFO: renamed from: d, reason: from kotlin metadata */
        public static final long FIRST_SESSION_TIMESTAMP_NOT_INITIALIZED_VALUE = -1;

        private a() {
        }
    }

    public xq(yq storage, pq initResponseStorage, n9 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(initResponseStorage, "initResponseStorage");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.storage = storage;
        this.initResponseStorage = initResponseStorage;
        this.currentTimeProvider = currentTimeProvider;
        this.sessionNumber = -1;
        this.firstSessionTimestamp = -1L;
    }

    public /* synthetic */ xq(yq yqVar, pq pqVar, n9 n9Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(yqVar, (i & 2) != 0 ? new qq() : pqVar, (i & 4) != 0 ? new n9.a() : n9Var);
    }

    private final long a(Context context, yq sdkSessionInfoStorage) {
        long jA = sdkSessionInfoStorage.a(context, -1L);
        if (this.initResponseStorage.a(context) || jA != -1) {
            return jA;
        }
        long jA2 = this.currentTimeProvider.a();
        IronLog.INTERNAL.verbose("set first session timestamp = " + jA2);
        sdkSessionInfoStorage.b(context, jA2);
        return jA2;
    }

    private final int b(Context context, yq sdkSessionInfoStorage) {
        int iB = sdkSessionInfoStorage.b(context, 0) + 1;
        sdkSessionInfoStorage.a(context, iB);
        return iB;
    }

    @Override // org.json.wg
    /* JADX INFO: renamed from: a, reason: from getter */
    public long getFirstSessionTimestamp() {
        return this.firstSessionTimestamp;
    }

    @Override // com.ironsource.wg.a
    public void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.sessionNumber = b(context, this.storage);
        this.firstSessionTimestamp = a(context, this.storage);
    }

    @Override // org.json.wg
    public String b() {
        String sessionId = IronSourceUtils.getSessionId();
        Intrinsics.checkNotNullExpressionValue(sessionId, "getSessionId()");
        return sessionId;
    }

    @Override // org.json.wg
    /* JADX INFO: renamed from: c, reason: from getter */
    public int getSessionNumber() {
        return this.sessionNumber;
    }
}
