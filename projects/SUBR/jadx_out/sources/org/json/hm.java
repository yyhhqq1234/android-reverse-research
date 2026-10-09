package org.json;

import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u00072\u00020\u0001:\u0001\u0005B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\u0005\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0016\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0005\u0010\u0015R$\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\f\u0010\u001a\"\u0004\b\u0005\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/ironsource/hm;", "", "", "g", "Lcom/ironsource/xo;", "a", "Lcom/ironsource/xo;", "e", "()Lcom/ironsource/xo;", "(Lcom/ironsource/xo;)V", "providersSettingsHolder", "Ljava/util/concurrent/atomic/AtomicBoolean;", "b", "Ljava/util/concurrent/atomic/AtomicBoolean;", "c", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "initialized", "", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "(Ljava/lang/String;)V", JsonStorageKeyNames.SESSION_ID_KEY, "Lcom/ironsource/p8;", "d", "Lcom/ironsource/p8;", "()Lcom/ironsource/p8;", "(Lcom/ironsource/p8;)V", "adFormatConfiguration", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class hm {

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile hm f;

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private xo providersSettingsHolder;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final AtomicBoolean initialized;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private String sessionId;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private p8 adFormatConfiguration;

    /* JADX INFO: renamed from: com.ironsource.hm$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u0012\u0010\u0003\u001a\u00020\u00072\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/ironsource/hm$a;", "", "Lcom/ironsource/hm;", "a", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "Lcom/unity3d/ironsourceads/internal/AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "Lcom/ironsource/b3;", j5.p, "Lcom/ironsource/hm;", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b3 a(IronSource.AD_UNIT adFormat) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            hm hmVar = hm.f;
            p8 adFormatConfiguration = hmVar != null ? hmVar.getAdFormatConfiguration() : null;
            hm hmVar2 = hm.f;
            xo providersSettingsHolder = hmVar2 != null ? hmVar2.getProvidersSettingsHolder() : null;
            return (adFormatConfiguration == null || providersSettingsHolder == null) ? new za() : new o7(adFormatConfiguration, providersSettingsHolder, adFormat);
        }

        @JvmStatic
        public final hm a() {
            hm hmVar = hm.f;
            if (hmVar == null) {
                synchronized (this) {
                    hmVar = hm.f;
                    if (hmVar == null) {
                        hmVar = new hm(null);
                        Companion companion = hm.INSTANCE;
                        hm.f = hmVar;
                    }
                }
            }
            return hmVar;
        }
    }

    private hm() {
        this.initialized = new AtomicBoolean(false);
        this.sessionId = "";
    }

    public /* synthetic */ hm(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final hm d() {
        return INSTANCE.a();
    }

    public final void a(p8 p8Var) {
        this.adFormatConfiguration = p8Var;
    }

    public final void a(xo xoVar) {
        this.providersSettingsHolder = xoVar;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.sessionId = str;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final p8 getAdFormatConfiguration() {
        return this.adFormatConfiguration;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final AtomicBoolean getInitialized() {
        return this.initialized;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final xo getProvidersSettingsHolder() {
        return this.providersSettingsHolder;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getSessionId() {
        return this.sessionId;
    }

    public final void g() {
        this.initialized.set(true);
    }
}
