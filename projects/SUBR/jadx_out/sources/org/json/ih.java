package org.json;

import com.google.android.gms.ads.RequestConfiguration;
import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b%\u0010&J'\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u0005\u001a\u00020\u0007HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\u001d\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u0007HÆ\u0001J\t\u0010\u000b\u001a\u00020\u0007HÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\n\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0014\u0010\u0013R$\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u0005\u0010\u001aR\"\u0010\u001f\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u001c\u001a\u0004\b\u0016\u0010\u001d\"\u0004\b\u0005\u0010\u001eR$\u0010\"\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0011\u001a\u0004\b \u0010\u0013\"\u0004\b\b\u0010!R$\u0010$\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0011\u001a\u0004\b#\u0010\u0013\"\u0004\b\u0005\u0010!¨\u0006'"}, d2 = {"Lcom/ironsource/ih;", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/ironsource/il;", "mapper", "a", "(Lcom/ironsource/il;)Ljava/lang/Object;", "", "b", "appKey", "userId", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "d", "()Ljava/lang/String;", "h", "Lcom/ironsource/s0;", "c", "Lcom/ironsource/s0;", "e", "()Lcom/ironsource/s0;", "(Lcom/ironsource/s0;)V", "applicationConfig", "Z", "()Z", "(Z)V", "adapterDebug", "g", "(Ljava/lang/String;)V", JsonStorageKeyNames.SESSION_ID_KEY, "f", "pluginType", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class ih {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String appKey;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String userId;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private s0 applicationConfig;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private boolean adapterDebug;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private String sessionId;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private String pluginType;

    public ih(String appKey, String userId) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.appKey = appKey;
        this.userId = userId;
    }

    public static /* synthetic */ ih a(ih ihVar, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ihVar.appKey;
        }
        if ((i & 2) != 0) {
            str2 = ihVar.userId;
        }
        return ihVar.a(str, str2);
    }

    public final ih a(String appKey, String userId) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new ih(appKey, userId);
    }

    public final <T> T a(il<ih, T> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getAppKey() {
        return this.appKey;
    }

    public final void a(s0 s0Var) {
        this.applicationConfig = s0Var;
    }

    public final void a(String str) {
        this.pluginType = str;
    }

    public final void a(boolean z) {
        this.adapterDebug = z;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    public final void b(String str) {
        this.sessionId = str;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getAdapterDebug() {
        return this.adapterDebug;
    }

    public final String d() {
        return this.appKey;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final s0 getApplicationConfig() {
        return this.applicationConfig;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ih)) {
            return false;
        }
        ih ihVar = (ih) other;
        return Intrinsics.areEqual(this.appKey, ihVar.appKey) && Intrinsics.areEqual(this.userId, ihVar.userId);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getPluginType() {
        return this.pluginType;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getSessionId() {
        return this.sessionId;
    }

    public final String h() {
        return this.userId;
    }

    public int hashCode() {
        return (this.appKey.hashCode() * 31) + this.userId.hashCode();
    }

    public String toString() {
        return "InitConfig(appKey=" + this.appKey + ", userId=" + this.userId + ')';
    }
}
