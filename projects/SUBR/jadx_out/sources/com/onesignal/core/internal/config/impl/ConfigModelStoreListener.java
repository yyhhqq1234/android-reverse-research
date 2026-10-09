package com.onesignal.core.internal.config.impl;

import com.onesignal.common.modeling.ISingletonModelStoreChangeHandler;
import com.onesignal.common.modeling.ModelChangeTags;
import com.onesignal.common.modeling.ModelChangedArgs;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.backend.IParamsBackendService;
import com.onesignal.core.internal.config.ConfigModel;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.user.internal.subscriptions.ISubscriptionManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.md;

/* JADX INFO: compiled from: ConfigModelStoreListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00152\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0002J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0014\u001a\u00020\fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/onesignal/core/internal/config/impl/ConfigModelStoreListener;", "Lcom/onesignal/core/internal/startup/IStartableService;", "Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;", "Lcom/onesignal/core/internal/config/ConfigModel;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_paramsBackendService", "Lcom/onesignal/core/internal/backend/IParamsBackendService;", "_subscriptionManager", "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;", "(Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/backend/IParamsBackendService;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;)V", "fetchParams", "", "onModelReplaced", md.v, "tag", "", "onModelUpdated", "args", "Lcom/onesignal/common/modeling/ModelChangedArgs;", "start", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ConfigModelStoreListener implements IStartableService, ISingletonModelStoreChangeHandler<ConfigModel> {
    private static final int INCREASE_BETWEEN_RETRIES = 10000;
    private static final int MAX_WAIT_BETWEEN_RETRIES = 90000;
    private static final int MIN_WAIT_BETWEEN_RETRIES = 30000;
    private final ConfigModelStore _configModelStore;
    private final IParamsBackendService _paramsBackendService;
    private final ISubscriptionManager _subscriptionManager;

    public ConfigModelStoreListener(ConfigModelStore _configModelStore, IParamsBackendService _paramsBackendService, ISubscriptionManager _subscriptionManager) {
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_paramsBackendService, "_paramsBackendService");
        Intrinsics.checkNotNullParameter(_subscriptionManager, "_subscriptionManager");
        this._configModelStore = _configModelStore;
        this._paramsBackendService = _paramsBackendService;
        this._subscriptionManager = _subscriptionManager;
    }

    @Override // com.onesignal.core.internal.startup.IStartableService
    public void start() {
        this._configModelStore.subscribe((ISingletonModelStoreChangeHandler) this);
        fetchParams();
    }

    @Override // com.onesignal.common.modeling.ISingletonModelStoreChangeHandler
    public void onModelUpdated(ModelChangedArgs args, String tag) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (Intrinsics.areEqual(args.getProperty(), "appId")) {
            fetchParams();
        }
    }

    @Override // com.onesignal.common.modeling.ISingletonModelStoreChangeHandler
    public void onModelReplaced(ConfigModel model, String tag) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (Intrinsics.areEqual(tag, ModelChangeTags.NORMAL)) {
            fetchParams();
        }
    }

    private final void fetchParams() {
        String appId = this._configModelStore.getModel().getAppId();
        if (appId.length() == 0) {
            return;
        }
        ThreadUtilsKt.suspendifyOnThread$default(0, new AnonymousClass1(appId, this, null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.core.internal.config.impl.ConfigModelStoreListener$fetchParams$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConfigModelStoreListener.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.core.internal.config.impl.ConfigModelStoreListener$fetchParams$1", f = "ConfigModelStoreListener.kt", i = {0, 0, 1, 1}, l = {70, 120}, m = "invokeSuspend", n = {"androidParamsRetries", "success", "androidParamsRetries", "success"}, s = {"I$0", "I$1", "I$0", "I$1"})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $appId;
        int I$0;
        int I$1;
        int label;
        final /* synthetic */ ConfigModelStoreListener this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, ConfigModelStoreListener configModelStoreListener, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$appId = str;
            this.this$0 = configModelStoreListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$appId, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:100:0x01ba A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:103:0x01d1 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:106:0x01e8 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:109:0x01ff A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:112:0x0216 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:114:0x0220  */
        /* JADX WARN: Code duplicated, block: B:115:0x0222  */
        /* JADX WARN: Code duplicated, block: B:119:0x0230 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:121:0x023a  */
        /* JADX WARN: Code duplicated, block: B:122:0x023c  */
        /* JADX WARN: Code duplicated, block: B:126:0x024a A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:128:0x0254  */
        /* JADX WARN: Code duplicated, block: B:129:0x0256  */
        /* JADX WARN: Code duplicated, block: B:149:0x02c1  */
        /* JADX WARN: Code duplicated, block: B:17:0x0074  */
        /* JADX WARN: Code duplicated, block: B:18:0x0076  */
        /* JADX WARN: Code duplicated, block: B:20:0x0079  */
        /* JADX WARN: Code duplicated, block: B:23:0x008b A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:24:0x008c  */
        /* JADX WARN: Code duplicated, block: B:27:0x00ef A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:29:0x00f5  */
        /* JADX WARN: Code duplicated, block: B:30:0x00f7  */
        /* JADX WARN: Code duplicated, block: B:34:0x0101 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:36:0x0107  */
        /* JADX WARN: Code duplicated, block: B:37:0x0109  */
        /* JADX WARN: Code duplicated, block: B:41:0x0113 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:43:0x0119  */
        /* JADX WARN: Code duplicated, block: B:44:0x011b  */
        /* JADX WARN: Code duplicated, block: B:48:0x0125 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:50:0x012b  */
        /* JADX WARN: Code duplicated, block: B:51:0x012d  */
        /* JADX WARN: Code duplicated, block: B:55:0x0137 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:57:0x013d  */
        /* JADX WARN: Code duplicated, block: B:58:0x013f  */
        /* JADX WARN: Code duplicated, block: B:62:0x0149 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:64:0x014f  */
        /* JADX WARN: Code duplicated, block: B:65:0x0151  */
        /* JADX WARN: Code duplicated, block: B:69:0x015b A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:71:0x0161  */
        /* JADX WARN: Code duplicated, block: B:72:0x0163  */
        /* JADX WARN: Code duplicated, block: B:76:0x016d A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:78:0x0173  */
        /* JADX WARN: Code duplicated, block: B:79:0x0175  */
        /* JADX WARN: Code duplicated, block: B:83:0x017f A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:85:0x0185  */
        /* JADX WARN: Code duplicated, block: B:86:0x0187  */
        /* JADX WARN: Code duplicated, block: B:90:0x0191 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Code duplicated, block: B:92:0x0197  */
        /* JADX WARN: Code duplicated, block: B:93:0x0199  */
        /* JADX WARN: Code duplicated, block: B:97:0x01a7 A[Catch: BackendException -> 0x026c, TryCatch #2 {BackendException -> 0x026c, blocks: (B:25:0x0092, B:27:0x00ef, B:31:0x00f8, B:32:0x00fb, B:34:0x0101, B:38:0x010a, B:39:0x010d, B:41:0x0113, B:45:0x011c, B:46:0x011f, B:48:0x0125, B:52:0x012e, B:53:0x0131, B:55:0x0137, B:59:0x0140, B:60:0x0143, B:62:0x0149, B:66:0x0152, B:67:0x0155, B:69:0x015b, B:73:0x0164, B:74:0x0167, B:76:0x016d, B:80:0x0176, B:81:0x0179, B:83:0x017f, B:87:0x0188, B:88:0x018b, B:90:0x0191, B:94:0x019a, B:95:0x01a1, B:97:0x01a7, B:98:0x01b0, B:100:0x01ba, B:101:0x01c7, B:103:0x01d1, B:104:0x01de, B:106:0x01e8, B:107:0x01f5, B:109:0x01ff, B:110:0x020c, B:112:0x0216, B:116:0x0223, B:117:0x0226, B:119:0x0230, B:123:0x023d, B:124:0x0240, B:126:0x024a, B:130:0x0257, B:131:0x025a), top: B:155:0x0092 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:132:0x0267 -> B:148:0x02bf). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:145:0x02b7 -> B:147:0x02ba). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:34:0x0101
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instruction units count: 708
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onesignal.core.internal.config.impl.ConfigModelStoreListener.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
