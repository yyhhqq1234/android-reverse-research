package com.onesignal.user.internal.operations.impl.executors;

import com.onesignal.common.NetworkUtils;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.modeling.MapModel;
import com.onesignal.common.modeling.ModelChangeTags;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.operations.ExecutionResponse;
import com.onesignal.core.internal.operations.ExecutionResult;
import com.onesignal.core.internal.operations.IOperationExecutor;
import com.onesignal.core.internal.operations.Operation;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.user.internal.backend.CreateUserResponse;
import com.onesignal.user.internal.backend.IUserBackendService;
import com.onesignal.user.internal.backend.IdentityConstants;
import com.onesignal.user.internal.backend.SubscriptionObject;
import com.onesignal.user.internal.backend.SubscriptionObjectType;
import com.onesignal.user.internal.builduser.IRebuildUserService;
import com.onesignal.user.internal.identity.IdentityModel;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.operations.RefreshUserOperation;
import com.onesignal.user.internal.operations.impl.states.NewRecordsState;
import com.onesignal.user.internal.properties.PropertiesModel;
import com.onesignal.user.internal.properties.PropertiesModelStore;
import com.onesignal.user.internal.subscriptions.SubscriptionModel;
import com.onesignal.user.internal.subscriptions.SubscriptionModelStore;
import com.onesignal.user.internal.subscriptions.SubscriptionStatus;
import com.onesignal.user.internal.subscriptions.SubscriptionType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RefreshUserOperationExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u001f\u0010\u0016\u001a\u00020\u00172\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00180\u0012H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001dR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lcom/onesignal/user/internal/operations/impl/executors/RefreshUserOperationExecutor;", "Lcom/onesignal/core/internal/operations/IOperationExecutor;", "_userBackend", "Lcom/onesignal/user/internal/backend/IUserBackendService;", "_identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "_propertiesModelStore", "Lcom/onesignal/user/internal/properties/PropertiesModelStore;", "_subscriptionsModelStore", "Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_buildUserService", "Lcom/onesignal/user/internal/builduser/IRebuildUserService;", "_newRecordState", "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;", "(Lcom/onesignal/user/internal/backend/IUserBackendService;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/builduser/IRebuildUserService;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;)V", "operations", "", "", "getOperations", "()Ljava/util/List;", "execute", "Lcom/onesignal/core/internal/operations/ExecutionResponse;", "Lcom/onesignal/core/internal/operations/Operation;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUser", "op", "Lcom/onesignal/user/internal/operations/RefreshUserOperation;", "(Lcom/onesignal/user/internal/operations/RefreshUserOperation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class RefreshUserOperationExecutor implements IOperationExecutor {
    public static final String REFRESH_USER = "refresh-user";
    private final IRebuildUserService _buildUserService;
    private final ConfigModelStore _configModelStore;
    private final IdentityModelStore _identityModelStore;
    private final NewRecordsState _newRecordState;
    private final PropertiesModelStore _propertiesModelStore;
    private final SubscriptionModelStore _subscriptionsModelStore;
    private final IUserBackendService _userBackend;

    /* JADX INFO: compiled from: RefreshUserOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SubscriptionObjectType.values().length];
            iArr[SubscriptionObjectType.EMAIL.ordinal()] = 1;
            iArr[SubscriptionObjectType.SMS.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[NetworkUtils.ResponseStatusType.values().length];
            iArr2[NetworkUtils.ResponseStatusType.RETRYABLE.ordinal()] = 1;
            iArr2[NetworkUtils.ResponseStatusType.UNAUTHORIZED.ordinal()] = 2;
            iArr2[NetworkUtils.ResponseStatusType.MISSING.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.RefreshUserOperationExecutor$getUser$1, reason: invalid class name */
    /* JADX INFO: compiled from: RefreshUserOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.RefreshUserOperationExecutor", f = "RefreshUserOperationExecutor.kt", i = {0, 0}, l = {58}, m = "getUser", n = {"this", "op"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RefreshUserOperationExecutor.this.getUser(null, this);
        }
    }

    public RefreshUserOperationExecutor(IUserBackendService _userBackend, IdentityModelStore _identityModelStore, PropertiesModelStore _propertiesModelStore, SubscriptionModelStore _subscriptionsModelStore, ConfigModelStore _configModelStore, IRebuildUserService _buildUserService, NewRecordsState _newRecordState) {
        Intrinsics.checkNotNullParameter(_userBackend, "_userBackend");
        Intrinsics.checkNotNullParameter(_identityModelStore, "_identityModelStore");
        Intrinsics.checkNotNullParameter(_propertiesModelStore, "_propertiesModelStore");
        Intrinsics.checkNotNullParameter(_subscriptionsModelStore, "_subscriptionsModelStore");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_buildUserService, "_buildUserService");
        Intrinsics.checkNotNullParameter(_newRecordState, "_newRecordState");
        this._userBackend = _userBackend;
        this._identityModelStore = _identityModelStore;
        this._propertiesModelStore = _propertiesModelStore;
        this._subscriptionsModelStore = _subscriptionsModelStore;
        this._configModelStore = _configModelStore;
        this._buildUserService = _buildUserService;
        this._newRecordState = _newRecordState;
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public List<String> getOperations() {
        return CollectionsKt.listOf(REFRESH_USER);
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public Object execute(List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        Logging.log(LogLevel.DEBUG, "RefreshUserOperationExecutor(operation: " + list + ')');
        List<? extends Operation> list2 = list;
        boolean z = false;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                if (!(((Operation) it.next()) instanceof RefreshUserOperation)) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            throw new Exception("Unrecognized operation(s)! Attempted operations:\n" + list);
        }
        Operation operation = (Operation) CollectionsKt.first((List) list);
        if (operation instanceof RefreshUserOperation) {
            return getUser((RefreshUserOperation) operation, continuation);
        }
        throw new Exception("Unrecognized operation: " + operation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:106:0x025a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x025c  */
    /* JADX WARN: Code duplicated, block: B:109:0x025f  */
    /* JADX WARN: Code duplicated, block: B:110:0x026f  */
    /* JADX WARN: Code duplicated, block: B:118:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:119:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:121:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:122:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:131:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x0107 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x007c A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x008b A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00a2 A[Catch: BackendException -> 0x0039, LOOP:0: B:30:0x009c->B:32:0x00a2, LOOP_END, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cd A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00e2 A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00f7 A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x010d A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0138 A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0158 A[Catch: BackendException -> 0x0039, TRY_LEAVE, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0175  */
    /* JADX WARN: Code duplicated, block: B:59:0x0181 A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0186 A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0192 A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x01a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x01aa A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x01ad A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01b0 A[Catch: BackendException -> 0x0039, TryCatch #2 {BackendException -> 0x0039, blocks: (B:12:0x0035, B:25:0x0064, B:27:0x007c, B:29:0x008b, B:30:0x009c, B:32:0x00a2, B:33:0x00b7, B:35:0x00cd, B:36:0x00d8, B:38:0x00e2, B:39:0x00ed, B:41:0x00f7, B:42:0x0107, B:44:0x010d, B:46:0x0119, B:47:0x012e, B:49:0x0138, B:50:0x0143, B:51:0x0152, B:53:0x0158, B:57:0x0176, B:59:0x0181, B:61:0x018c, B:63:0x0192, B:64:0x0194, B:67:0x01aa, B:70:0x01b2, B:72:0x01bd, B:76:0x01c8, B:79:0x01d2, B:82:0x01dc, B:85:0x01e6, B:89:0x01f1, B:91:0x01fc, B:68:0x01ad, B:69:0x01b0, B:60:0x0186, B:92:0x0201, B:94:0x020f, B:96:0x0219, B:97:0x021c), top: B:128:0x0035 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:81:0x01db  */
    /* JADX WARN: Code duplicated, block: B:84:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:88:0x01f0  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object getUser(RefreshUserOperation refreshUserOperation, Continuation<? super ExecutionResponse> continuation) {
        AnonymousClass1 anonymousClass1;
        RefreshUserOperation refreshUserOperation2;
        RefreshUserOperationExecutor refreshUserOperationExecutor;
        RefreshUserOperation refreshUserOperation3;
        int i;
        List<Operation> rebuildOperationsIfCurrentUser;
        CreateUserResponse createUserResponse;
        IdentityModel identityModel;
        PropertiesModel propertiesModel;
        ArrayList arrayList;
        String pushSubscriptionId;
        SubscriptionModel subscriptionModel;
        SubscriptionModel subscriptionModel2;
        String token;
        String str;
        Integer notificationTypes;
        int value;
        SubscriptionStatus subscriptionStatusFromInt;
        int i2;
        SubscriptionType subscriptionType;
        boolean z;
        String sdk;
        String deviceOS;
        String carrier;
        String appVersion;
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
        Object user = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = anonymousClass1.label;
        if (i3 != 0) {
            if (i3 == 1) {
                refreshUserOperation3 = (RefreshUserOperation) anonymousClass1.L$1;
                refreshUserOperationExecutor = (RefreshUserOperationExecutor) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure(user);
                    createUserResponse = (CreateUserResponse) user;
                    if (!Intrinsics.areEqual(refreshUserOperation3.getOnesignalId(), refreshUserOperationExecutor._identityModelStore.getModel().getOnesignalId())) {
                        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                    }
                    identityModel = new IdentityModel();
                    for (Map.Entry<String, String> entry : createUserResponse.getIdentities().entrySet()) {
                        identityModel.put(entry.getKey(), entry.getValue());
                    }
                    propertiesModel = new PropertiesModel();
                    propertiesModel.setOnesignalId(refreshUserOperation3.getOnesignalId());
                    if (createUserResponse.getProperties().getCountry() != null) {
                        propertiesModel.setCountry(createUserResponse.getProperties().getCountry());
                    }
                    if (createUserResponse.getProperties().getLanguage() != null) {
                        propertiesModel.setLanguage(createUserResponse.getProperties().getLanguage());
                    }
                    if (createUserResponse.getProperties().getTags() != null) {
                        for (Map.Entry<String, String> entry2 : createUserResponse.getProperties().getTags().entrySet()) {
                            if (entry2.getValue() != null) {
                                MapModel<String> tags = propertiesModel.getTags();
                                String key = entry2.getKey();
                                String value2 = entry2.getValue();
                                Intrinsics.checkNotNull(value2);
                                tags.put(key, value2);
                            }
                        }
                    }
                    if (createUserResponse.getProperties().getTimezoneId() != null) {
                        propertiesModel.setTimezone(createUserResponse.getProperties().getTimezoneId());
                    }
                    arrayList = new ArrayList();
                    for (SubscriptionObject subscriptionObject : createUserResponse.getSubscriptions()) {
                        subscriptionModel2 = new SubscriptionModel();
                        String id = subscriptionObject.getId();
                        Intrinsics.checkNotNull(id);
                        subscriptionModel2.setId(id);
                        token = subscriptionObject.getToken();
                        str = "";
                        if (token == null) {
                            token = "";
                        }
                        subscriptionModel2.setAddress(token);
                        SubscriptionStatus.Companion companion = SubscriptionStatus.INSTANCE;
                        notificationTypes = subscriptionObject.getNotificationTypes();
                        if (notificationTypes != null) {
                            value = notificationTypes.intValue();
                        } else {
                            value = SubscriptionStatus.SUBSCRIBED.getValue();
                        }
                        subscriptionStatusFromInt = companion.fromInt(value);
                        if (subscriptionStatusFromInt == null) {
                            subscriptionStatusFromInt = SubscriptionStatus.SUBSCRIBED;
                        }
                        subscriptionModel2.setStatus(subscriptionStatusFromInt);
                        SubscriptionObjectType type = subscriptionObject.getType();
                        Intrinsics.checkNotNull(type);
                        i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
                        if (i2 != 1) {
                            subscriptionType = SubscriptionType.EMAIL;
                        } else if (i2 != 2) {
                            subscriptionType = SubscriptionType.SMS;
                        } else {
                            subscriptionType = SubscriptionType.PUSH;
                        }
                        subscriptionModel2.setType(subscriptionType);
                        if (subscriptionModel2.getStatus() != SubscriptionStatus.UNSUBSCRIBE || subscriptionModel2.getStatus() == SubscriptionStatus.DISABLED_FROM_REST_API_DEFAULT_REASON) {
                            z = false;
                        } else {
                            z = true;
                        }
                        subscriptionModel2.setOptedIn(z);
                        sdk = subscriptionObject.getSdk();
                        if (sdk == null) {
                            sdk = "";
                        }
                        subscriptionModel2.setSdk(sdk);
                        deviceOS = subscriptionObject.getDeviceOS();
                        if (deviceOS == null) {
                            deviceOS = "";
                        }
                        subscriptionModel2.setDeviceOS(deviceOS);
                        carrier = subscriptionObject.getCarrier();
                        if (carrier == null) {
                            carrier = "";
                        }
                        subscriptionModel2.setCarrier(carrier);
                        appVersion = subscriptionObject.getAppVersion();
                        if (appVersion == null) {
                            str = appVersion;
                        }
                        subscriptionModel2.setAppVersion(str);
                        if (subscriptionModel2.getType() != SubscriptionType.PUSH) {
                            arrayList.add(subscriptionModel2);
                        }
                    }
                    pushSubscriptionId = refreshUserOperationExecutor._configModelStore.getModel().getPushSubscriptionId();
                    if (pushSubscriptionId != null && (subscriptionModel = (SubscriptionModel) refreshUserOperationExecutor._subscriptionsModelStore.get(pushSubscriptionId)) != null) {
                        arrayList.add(subscriptionModel);
                    }
                    refreshUserOperationExecutor._identityModelStore.replace(identityModel, ModelChangeTags.HYDRATE);
                    refreshUserOperationExecutor._propertiesModelStore.replace(propertiesModel, ModelChangeTags.HYDRATE);
                    refreshUserOperationExecutor._subscriptionsModelStore.replaceAll(arrayList, ModelChangeTags.HYDRATE);
                    return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                } catch (BackendException e) {
                    e = e;
                    i = WhenMappings.$EnumSwitchMapping$1[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                    if (i != 1) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i != 2) {
                        return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i != 3) {
                        if (e.getStatusCode() != 404) {
                        }
                        rebuildOperationsIfCurrentUser = refreshUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(refreshUserOperation3.getAppId(), refreshUserOperation3.getOnesignalId());
                        if (rebuildOperationsIfCurrentUser == null) {
                            return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                        }
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
                    }
                    return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(user);
        try {
            IUserBackendService iUserBackendService = this._userBackend;
            String appId = refreshUserOperation.getAppId();
            String onesignalId = refreshUserOperation.getOnesignalId();
            anonymousClass1.L$0 = this;
            refreshUserOperation2 = refreshUserOperation;
            try {
                anonymousClass1.L$1 = refreshUserOperation2;
                anonymousClass1.label = 1;
                user = iUserBackendService.getUser(appId, IdentityConstants.ONESIGNAL_ID, onesignalId, anonymousClass1);
                if (user == coroutine_suspended) {
                    return coroutine_suspended;
                }
                refreshUserOperationExecutor = this;
                refreshUserOperation3 = refreshUserOperation2;
                createUserResponse = (CreateUserResponse) user;
                if (!Intrinsics.areEqual(refreshUserOperation3.getOnesignalId(), refreshUserOperationExecutor._identityModelStore.getModel().getOnesignalId())) {
                    return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                }
                identityModel = new IdentityModel();
                while (r8.hasNext()) {
                    identityModel.put(entry.getKey(), entry.getValue());
                }
                propertiesModel = new PropertiesModel();
                propertiesModel.setOnesignalId(refreshUserOperation3.getOnesignalId());
                if (createUserResponse.getProperties().getCountry() != null) {
                    propertiesModel.setCountry(createUserResponse.getProperties().getCountry());
                }
                if (createUserResponse.getProperties().getLanguage() != null) {
                    propertiesModel.setLanguage(createUserResponse.getProperties().getLanguage());
                }
                if (createUserResponse.getProperties().getTags() != null) {
                    while (r9.hasNext()) {
                        if (entry2.getValue() != null) {
                            MapModel<String> tags2 = propertiesModel.getTags();
                            String key2 = entry2.getKey();
                            String value3 = entry2.getValue();
                            Intrinsics.checkNotNull(value3);
                            tags2.put(key2, value3);
                        }
                    }
                }
                if (createUserResponse.getProperties().getTimezoneId() != null) {
                    propertiesModel.setTimezone(createUserResponse.getProperties().getTimezoneId());
                }
                arrayList = new ArrayList();
                while (r0.hasNext()) {
                    subscriptionModel2 = new SubscriptionModel();
                    String id2 = subscriptionObject.getId();
                    Intrinsics.checkNotNull(id2);
                    subscriptionModel2.setId(id2);
                    token = subscriptionObject.getToken();
                    str = "";
                    if (token == null) {
                        token = "";
                    }
                    subscriptionModel2.setAddress(token);
                    SubscriptionStatus.Companion companion2 = SubscriptionStatus.INSTANCE;
                    notificationTypes = subscriptionObject.getNotificationTypes();
                    if (notificationTypes != null) {
                        value = notificationTypes.intValue();
                    } else {
                        value = SubscriptionStatus.SUBSCRIBED.getValue();
                    }
                    subscriptionStatusFromInt = companion2.fromInt(value);
                    if (subscriptionStatusFromInt == null) {
                        subscriptionStatusFromInt = SubscriptionStatus.SUBSCRIBED;
                    }
                    subscriptionModel2.setStatus(subscriptionStatusFromInt);
                    SubscriptionObjectType type2 = subscriptionObject.getType();
                    Intrinsics.checkNotNull(type2);
                    i2 = WhenMappings.$EnumSwitchMapping$0[type2.ordinal()];
                    if (i2 != 1) {
                        subscriptionType = SubscriptionType.EMAIL;
                    } else if (i2 != 2) {
                        subscriptionType = SubscriptionType.SMS;
                    } else {
                        subscriptionType = SubscriptionType.PUSH;
                    }
                    subscriptionModel2.setType(subscriptionType);
                    if (subscriptionModel2.getStatus() != SubscriptionStatus.UNSUBSCRIBE) {
                        z = false;
                    } else {
                        z = false;
                    }
                    subscriptionModel2.setOptedIn(z);
                    sdk = subscriptionObject.getSdk();
                    if (sdk == null) {
                        sdk = "";
                    }
                    subscriptionModel2.setSdk(sdk);
                    deviceOS = subscriptionObject.getDeviceOS();
                    if (deviceOS == null) {
                        deviceOS = "";
                    }
                    subscriptionModel2.setDeviceOS(deviceOS);
                    carrier = subscriptionObject.getCarrier();
                    if (carrier == null) {
                        carrier = "";
                    }
                    subscriptionModel2.setCarrier(carrier);
                    appVersion = subscriptionObject.getAppVersion();
                    if (appVersion == null) {
                        str = appVersion;
                    }
                    subscriptionModel2.setAppVersion(str);
                    if (subscriptionModel2.getType() != SubscriptionType.PUSH) {
                        arrayList.add(subscriptionModel2);
                    }
                }
                pushSubscriptionId = refreshUserOperationExecutor._configModelStore.getModel().getPushSubscriptionId();
                if (pushSubscriptionId != null) {
                    arrayList.add(subscriptionModel);
                }
                refreshUserOperationExecutor._identityModelStore.replace(identityModel, ModelChangeTags.HYDRATE);
                refreshUserOperationExecutor._propertiesModelStore.replace(propertiesModel, ModelChangeTags.HYDRATE);
                refreshUserOperationExecutor._subscriptionsModelStore.replaceAll(arrayList, ModelChangeTags.HYDRATE);
                return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
            } catch (BackendException e2) {
                e = e2;
                refreshUserOperationExecutor = this;
                refreshUserOperation3 = refreshUserOperation2;
                i = WhenMappings.$EnumSwitchMapping$1[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i != 1) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i != 2) {
                    return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i != 3) {
                    if (e.getStatusCode() != 404 && refreshUserOperationExecutor._newRecordState.isInMissingRetryWindow(refreshUserOperation3.getOnesignalId())) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    rebuildOperationsIfCurrentUser = refreshUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(refreshUserOperation3.getAppId(), refreshUserOperation3.getOnesignalId());
                    if (rebuildOperationsIfCurrentUser == null) {
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
                }
                return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
            }
        } catch (BackendException e3) {
            e = e3;
            refreshUserOperation2 = refreshUserOperation;
        }
    }
}
