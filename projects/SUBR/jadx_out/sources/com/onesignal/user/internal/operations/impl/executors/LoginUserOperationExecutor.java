package com.onesignal.user.internal.operations.impl.executors;

import android.os.Build;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.DeviceUtils;
import com.onesignal.common.NetworkUtils;
import com.onesignal.common.OneSignalUtils;
import com.onesignal.common.RootToolsInternalMethods;
import com.onesignal.common.TimeUtils;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.modeling.Model;
import com.onesignal.common.modeling.ModelChangeTags;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.core.internal.language.ILanguageContext;
import com.onesignal.core.internal.operations.ExecutionResponse;
import com.onesignal.core.internal.operations.ExecutionResult;
import com.onesignal.core.internal.operations.IOperationExecutor;
import com.onesignal.core.internal.operations.Operation;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.user.internal.backend.CreateUserResponse;
import com.onesignal.user.internal.backend.IUserBackendService;
import com.onesignal.user.internal.backend.IdentityConstants;
import com.onesignal.user.internal.backend.SubscriptionObject;
import com.onesignal.user.internal.backend.SubscriptionObjectType;
import com.onesignal.user.internal.identity.IdentityModel;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.operations.CreateSubscriptionOperation;
import com.onesignal.user.internal.operations.DeleteSubscriptionOperation;
import com.onesignal.user.internal.operations.LoginUserOperation;
import com.onesignal.user.internal.operations.RefreshUserOperation;
import com.onesignal.user.internal.operations.SetAliasOperation;
import com.onesignal.user.internal.operations.TransferSubscriptionOperation;
import com.onesignal.user.internal.operations.UpdateSubscriptionOperation;
import com.onesignal.user.internal.properties.PropertiesModel;
import com.onesignal.user.internal.properties.PropertiesModelStore;
import com.onesignal.user.internal.subscriptions.SubscriptionModel;
import com.onesignal.user.internal.subscriptions.SubscriptionModelStore;
import com.onesignal.user.internal.subscriptions.SubscriptionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: compiled from: LoginUserOperationExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 -2\u00020\u0001:\u0001-BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J0\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J0\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020 2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J0\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020!2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J0\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\"2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J'\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020'0\u0016H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(J\u001f\u0010)\u001a\u00020$2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020'0\u0016H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010*J'\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020&2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020'0\u0016H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, d2 = {"Lcom/onesignal/user/internal/operations/impl/executors/LoginUserOperationExecutor;", "Lcom/onesignal/core/internal/operations/IOperationExecutor;", "_identityOperationExecutor", "Lcom/onesignal/user/internal/operations/impl/executors/IdentityOperationExecutor;", "_application", "Lcom/onesignal/core/internal/application/IApplicationService;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_userBackend", "Lcom/onesignal/user/internal/backend/IUserBackendService;", "_identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "_propertiesModelStore", "Lcom/onesignal/user/internal/properties/PropertiesModelStore;", "_subscriptionsModelStore", "Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_languageContext", "Lcom/onesignal/core/internal/language/ILanguageContext;", "(Lcom/onesignal/user/internal/operations/impl/executors/IdentityOperationExecutor;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/user/internal/backend/IUserBackendService;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/language/ILanguageContext;)V", "operations", "", "", "getOperations", "()Ljava/util/List;", "createSubscriptionsFromOperation", "", "Lcom/onesignal/user/internal/backend/SubscriptionObject;", "operation", "Lcom/onesignal/user/internal/operations/CreateSubscriptionOperation;", "subscriptions", "Lcom/onesignal/user/internal/operations/DeleteSubscriptionOperation;", "Lcom/onesignal/user/internal/operations/TransferSubscriptionOperation;", "Lcom/onesignal/user/internal/operations/UpdateSubscriptionOperation;", "createUser", "Lcom/onesignal/core/internal/operations/ExecutionResponse;", "createUserOperation", "Lcom/onesignal/user/internal/operations/LoginUserOperation;", "Lcom/onesignal/core/internal/operations/Operation;", "(Lcom/onesignal/user/internal/operations/LoginUserOperation;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "execute", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loginUser", "loginUserOp", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LoginUserOperationExecutor implements IOperationExecutor {
    public static final String LOGIN_USER = "login-user";
    private final IApplicationService _application;
    private final ConfigModelStore _configModelStore;
    private final IDeviceService _deviceService;
    private final IdentityModelStore _identityModelStore;
    private final IdentityOperationExecutor _identityOperationExecutor;
    private final ILanguageContext _languageContext;
    private final PropertiesModelStore _propertiesModelStore;
    private final SubscriptionModelStore _subscriptionsModelStore;
    private final IUserBackendService _userBackend;

    /* JADX INFO: compiled from: LoginUserOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ExecutionResult.values().length];
            iArr[ExecutionResult.SUCCESS.ordinal()] = 1;
            iArr[ExecutionResult.FAIL_CONFLICT.ordinal()] = 2;
            iArr[ExecutionResult.FAIL_NORETRY.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[NetworkUtils.ResponseStatusType.values().length];
            iArr2[NetworkUtils.ResponseStatusType.RETRYABLE.ordinal()] = 1;
            iArr2[NetworkUtils.ResponseStatusType.UNAUTHORIZED.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[SubscriptionType.values().length];
            iArr3[SubscriptionType.SMS.ordinal()] = 1;
            iArr3[SubscriptionType.EMAIL.ordinal()] = 2;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.LoginUserOperationExecutor$createUser$1, reason: invalid class name */
    /* JADX INFO: compiled from: LoginUserOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.LoginUserOperationExecutor", f = "LoginUserOperationExecutor.kt", i = {0, 0, 0, 0}, l = {163}, m = "createUser", n = {"this", "createUserOperation", "identities", "subscriptionList"}, s = {"L$0", "L$1", "L$2", "L$3"})
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
            return LoginUserOperationExecutor.this.createUser(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.LoginUserOperationExecutor$loginUser$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LoginUserOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.LoginUserOperationExecutor", f = "LoginUserOperationExecutor.kt", i = {1, 1, 1}, l = {73, 79, 120, WorkQueueKt.MASK}, m = "loginUser", n = {"this", "loginUserOp", "operations"}, s = {"L$0", "L$1", "L$2"})
    static final class C03291 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03291(Continuation<? super C03291> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LoginUserOperationExecutor.this.loginUser(null, null, this);
        }
    }

    public LoginUserOperationExecutor(IdentityOperationExecutor _identityOperationExecutor, IApplicationService _application, IDeviceService _deviceService, IUserBackendService _userBackend, IdentityModelStore _identityModelStore, PropertiesModelStore _propertiesModelStore, SubscriptionModelStore _subscriptionsModelStore, ConfigModelStore _configModelStore, ILanguageContext _languageContext) {
        Intrinsics.checkNotNullParameter(_identityOperationExecutor, "_identityOperationExecutor");
        Intrinsics.checkNotNullParameter(_application, "_application");
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_userBackend, "_userBackend");
        Intrinsics.checkNotNullParameter(_identityModelStore, "_identityModelStore");
        Intrinsics.checkNotNullParameter(_propertiesModelStore, "_propertiesModelStore");
        Intrinsics.checkNotNullParameter(_subscriptionsModelStore, "_subscriptionsModelStore");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_languageContext, "_languageContext");
        this._identityOperationExecutor = _identityOperationExecutor;
        this._application = _application;
        this._deviceService = _deviceService;
        this._userBackend = _userBackend;
        this._identityModelStore = _identityModelStore;
        this._propertiesModelStore = _propertiesModelStore;
        this._subscriptionsModelStore = _subscriptionsModelStore;
        this._configModelStore = _configModelStore;
        this._languageContext = _languageContext;
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public List<String> getOperations() {
        return CollectionsKt.listOf(LOGIN_USER);
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public Object execute(List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        Logging.debug$default("LoginUserOperationExecutor(operation: " + list + ')', null, 2, null);
        Operation operation = (Operation) CollectionsKt.first((List) list);
        if (operation instanceof LoginUserOperation) {
            return loginUser((LoginUserOperation) operation, CollectionsKt.drop(list, 1), continuation);
        }
        throw new Exception("Unrecognized operation: " + operation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00f6 A[PHI: r3
  0x00f6: PHI (r3v30 java.lang.Object) = (r3v28 java.lang.Object), (r3v1 java.lang.Object) binds: [B:36:0x00f3, B:14:0x0037] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:41:0x011d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x011e A[PHI: r3
  0x011e: PHI (r3v29 java.lang.Object) = (r3v25 java.lang.Object), (r3v1 java.lang.Object) binds: [B:40:0x011b, B:17:0x0044] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x011f  */
    /* JADX WARN: Code duplicated, block: B:45:0x013c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0164  */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x00cf, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x00f7, please report this as an issue */
    public final Object loginUser(LoginUserOperation loginUserOperation, List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        C03291 c03291;
        LoginUserOperationExecutor loginUserOperationExecutor;
        ExecutionResponse executionResponse;
        int i;
        String existingOnesignalId;
        LoginUserOperation loginUserOperation2 = loginUserOperation;
        List<? extends Operation> list2 = list;
        if (continuation instanceof C03291) {
            c03291 = (C03291) continuation;
            if ((c03291.label & Integer.MIN_VALUE) != 0) {
                c03291.label -= Integer.MIN_VALUE;
            } else {
                c03291 = new C03291(continuation);
            }
        } else {
            c03291 = new C03291(continuation);
        }
        Object objCreateUser = c03291.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c03291.label;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.throwOnFailure(objCreateUser);
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    ResultKt.throwOnFailure(objCreateUser);
                    return objCreateUser;
                }
                if (i2 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objCreateUser);
                return objCreateUser;
            }
            List<? extends Operation> list3 = (List) c03291.L$2;
            LoginUserOperation loginUserOperation3 = (LoginUserOperation) c03291.L$1;
            loginUserOperationExecutor = (LoginUserOperationExecutor) c03291.L$0;
            ResultKt.throwOnFailure(objCreateUser);
            list2 = list3;
            loginUserOperation2 = loginUserOperation3;
            executionResponse = (ExecutionResponse) objCreateUser;
            i = WhenMappings.$EnumSwitchMapping$0[executionResponse.getResult().ordinal()];
            if (i != 1) {
                existingOnesignalId = loginUserOperation2.getExistingOnesignalId();
                Intrinsics.checkNotNull(existingOnesignalId);
                if (Intrinsics.areEqual(loginUserOperationExecutor._identityModelStore.getModel().getOnesignalId(), loginUserOperation2.getOnesignalId())) {
                    Model.setStringProperty$default(loginUserOperationExecutor._identityModelStore.getModel(), IdentityConstants.ONESIGNAL_ID, existingOnesignalId, ModelChangeTags.HYDRATE, false, 8, null);
                }
                if (Intrinsics.areEqual(loginUserOperationExecutor._propertiesModelStore.getModel().getOnesignalId(), loginUserOperation2.getOnesignalId())) {
                    Model.setStringProperty$default(loginUserOperationExecutor._propertiesModelStore.getModel(), "onesignalId", existingOnesignalId, ModelChangeTags.HYDRATE, false, 8, null);
                }
                return new ExecutionResponse(ExecutionResult.SUCCESS_STARTING_ONLY, MapsKt.mapOf(TuplesKt.to(loginUserOperation2.getOnesignalId(), existingOnesignalId)), null, null, 12, null);
            }
            if (i != 2) {
                Logging.debug$default("LoginUserOperationExecutor now handling 409 response with \"code\": \"user-2\" by switching to user with \"external_id\": \"" + loginUserOperation2.getExternalId() + Typography.quote, null, 2, null);
                c03291.L$0 = null;
                c03291.L$1 = null;
                c03291.L$2 = null;
                c03291.label = 3;
                objCreateUser = loginUserOperationExecutor.createUser(loginUserOperation2, list2, c03291);
                if (objCreateUser == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objCreateUser;
            }
            if (i != 3) {
                Logging.error$default("LoginUserOperationExecutor encountered error. Attempt to recover by switching to user with \"external_id\": \"" + loginUserOperation2.getExternalId() + Typography.quote, null, 2, null);
                c03291.L$0 = null;
                c03291.L$1 = null;
                c03291.L$2 = null;
                c03291.label = 4;
                objCreateUser = loginUserOperationExecutor.createUser(loginUserOperation2, list2, c03291);
                if (objCreateUser == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objCreateUser;
            }
            return new ExecutionResponse(executionResponse.getResult(), null, null, null, 14, null);
        }
        ResultKt.throwOnFailure(objCreateUser);
        if (loginUserOperation.getExistingOnesignalId() == null || loginUserOperation.getExternalId() == null) {
            c03291.label = 1;
            objCreateUser = createUser(loginUserOperation2, list2, c03291);
            return objCreateUser == coroutine_suspended ? coroutine_suspended : objCreateUser;
        }
        IdentityOperationExecutor identityOperationExecutor = this._identityOperationExecutor;
        String appId = loginUserOperation.getAppId();
        String existingOnesignalId2 = loginUserOperation.getExistingOnesignalId();
        Intrinsics.checkNotNull(existingOnesignalId2);
        String externalId = loginUserOperation.getExternalId();
        Intrinsics.checkNotNull(externalId);
        List<? extends Operation> listListOf = CollectionsKt.listOf(new SetAliasOperation(appId, existingOnesignalId2, IdentityConstants.EXTERNAL_ID, externalId));
        c03291.L$0 = this;
        c03291.L$1 = loginUserOperation2;
        c03291.L$2 = list2;
        c03291.label = 2;
        objCreateUser = identityOperationExecutor.execute(listListOf, c03291);
        if (objCreateUser == coroutine_suspended) {
            return coroutine_suspended;
        }
        loginUserOperationExecutor = this;
        executionResponse = (ExecutionResponse) objCreateUser;
        i = WhenMappings.$EnumSwitchMapping$0[executionResponse.getResult().ordinal()];
        if (i != 1) {
            existingOnesignalId = loginUserOperation2.getExistingOnesignalId();
            Intrinsics.checkNotNull(existingOnesignalId);
            if (Intrinsics.areEqual(loginUserOperationExecutor._identityModelStore.getModel().getOnesignalId(), loginUserOperation2.getOnesignalId())) {
                Model.setStringProperty$default(loginUserOperationExecutor._identityModelStore.getModel(), IdentityConstants.ONESIGNAL_ID, existingOnesignalId, ModelChangeTags.HYDRATE, false, 8, null);
            }
            if (Intrinsics.areEqual(loginUserOperationExecutor._propertiesModelStore.getModel().getOnesignalId(), loginUserOperation2.getOnesignalId())) {
                Model.setStringProperty$default(loginUserOperationExecutor._propertiesModelStore.getModel(), "onesignalId", existingOnesignalId, ModelChangeTags.HYDRATE, false, 8, null);
            }
            return new ExecutionResponse(ExecutionResult.SUCCESS_STARTING_ONLY, MapsKt.mapOf(TuplesKt.to(loginUserOperation2.getOnesignalId(), existingOnesignalId)), null, null, 12, null);
        }
        if (i != 2) {
            Logging.debug$default("LoginUserOperationExecutor now handling 409 response with \"code\": \"user-2\" by switching to user with \"external_id\": \"" + loginUserOperation2.getExternalId() + Typography.quote, null, 2, null);
            c03291.L$0 = null;
            c03291.L$1 = null;
            c03291.L$2 = null;
            c03291.label = 3;
            objCreateUser = loginUserOperationExecutor.createUser(loginUserOperation2, list2, c03291);
            if (objCreateUser == coroutine_suspended) {
                return coroutine_suspended;
            }
            return objCreateUser;
        }
        if (i != 3) {
            Logging.error$default("LoginUserOperationExecutor encountered error. Attempt to recover by switching to user with \"external_id\": \"" + loginUserOperation2.getExternalId() + Typography.quote, null, 2, null);
            c03291.L$0 = null;
            c03291.L$1 = null;
            c03291.L$2 = null;
            c03291.label = 4;
            objCreateUser = loginUserOperationExecutor.createUser(loginUserOperation2, list2, c03291);
            if (objCreateUser == coroutine_suspended) {
                return coroutine_suspended;
            }
            return objCreateUser;
        }
        return new ExecutionResponse(executionResponse.getResult(), null, null, null, 14, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object createUser(LoginUserOperation loginUserOperation, List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        AnonymousClass1 anonymousClass1;
        ExecutionResponse executionResponse;
        LoginUserOperationExecutor loginUserOperationExecutor;
        List list2;
        LoginUserOperation loginUserOperation2;
        Map<String, String> map;
        List listListOf;
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
        int i = anonymousClass2.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Map<String, String> mapEmptyMap = MapsKt.emptyMap();
                Map<String, SubscriptionObject> mapEmptyMap2 = MapsKt.emptyMap();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                String timeZoneId = TimeUtils.INSTANCE.getTimeZoneId();
                Intrinsics.checkNotNull(timeZoneId);
                linkedHashMap.put("timezone_id", timeZoneId);
                linkedHashMap.put("language", this._languageContext.getLanguage());
                if (loginUserOperation.getExternalId() != null) {
                    mapEmptyMap = MapsKt.toMutableMap(mapEmptyMap);
                    String externalId = loginUserOperation.getExternalId();
                    Intrinsics.checkNotNull(externalId);
                    mapEmptyMap.put(IdentityConstants.EXTERNAL_ID, externalId);
                }
                for (Operation operation : list) {
                    if (operation instanceof CreateSubscriptionOperation) {
                        mapEmptyMap2 = createSubscriptionsFromOperation((CreateSubscriptionOperation) operation, mapEmptyMap2);
                    } else if (operation instanceof TransferSubscriptionOperation) {
                        mapEmptyMap2 = createSubscriptionsFromOperation((TransferSubscriptionOperation) operation, mapEmptyMap2);
                    } else if (operation instanceof UpdateSubscriptionOperation) {
                        mapEmptyMap2 = createSubscriptionsFromOperation((UpdateSubscriptionOperation) operation, mapEmptyMap2);
                    } else {
                        if (!(operation instanceof DeleteSubscriptionOperation)) {
                            throw new Exception("Unrecognized operation: " + operation);
                        }
                        mapEmptyMap2 = createSubscriptionsFromOperation((DeleteSubscriptionOperation) operation, mapEmptyMap2);
                    }
                }
                List list3 = MapsKt.toList(mapEmptyMap2);
                IUserBackendService iUserBackendService = this._userBackend;
                String appId = loginUserOperation.getAppId();
                List list4 = list3;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
                Iterator it = list4.iterator();
                while (it.hasNext()) {
                    arrayList.add((SubscriptionObject) ((Pair) it.next()).getSecond());
                }
                anonymousClass2.L$0 = this;
                anonymousClass2.L$1 = loginUserOperation;
                anonymousClass2.L$2 = mapEmptyMap;
                anonymousClass2.L$3 = list3;
                anonymousClass2.label = 1;
                Object objCreateUser = iUserBackendService.createUser(appId, mapEmptyMap, arrayList, linkedHashMap, anonymousClass2);
                if (objCreateUser == coroutine_suspended) {
                    return coroutine_suspended;
                }
                loginUserOperationExecutor = this;
                list2 = list3;
                loginUserOperation2 = loginUserOperation;
                map = mapEmptyMap;
                obj = objCreateUser;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list2 = (List) anonymousClass2.L$3;
                map = (Map) anonymousClass2.L$2;
                loginUserOperation2 = (LoginUserOperation) anonymousClass2.L$1;
                loginUserOperationExecutor = (LoginUserOperationExecutor) anonymousClass2.L$0;
                ResultKt.throwOnFailure(obj);
            }
            CreateUserResponse createUserResponse = (CreateUserResponse) obj;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            String str = createUserResponse.getIdentities().get(IdentityConstants.ONESIGNAL_ID);
            Intrinsics.checkNotNull(str);
            String str2 = str;
            linkedHashMap2.put(loginUserOperation2.getOnesignalId(), str2);
            IdentityModel model = loginUserOperationExecutor._identityModelStore.getModel();
            PropertiesModel model2 = loginUserOperationExecutor._propertiesModelStore.getModel();
            if (Intrinsics.areEqual(model.getOnesignalId(), loginUserOperation2.getOnesignalId())) {
                Model.setStringProperty$default(model, IdentityConstants.ONESIGNAL_ID, str2, ModelChangeTags.HYDRATE, false, 8, null);
            }
            if (Intrinsics.areEqual(model2.getOnesignalId(), loginUserOperation2.getOnesignalId())) {
                Model.setStringProperty$default(model2, "onesignalId", str2, ModelChangeTags.HYDRATE, false, 8, null);
            }
            int size = list2.size();
            for (int i2 = 0; i2 < size && i2 < createUserResponse.getSubscriptions().size(); i2++) {
                SubscriptionObject subscriptionObject = createUserResponse.getSubscriptions().get(i2);
                Object first = ((Pair) list2.get(i2)).getFirst();
                String id = subscriptionObject.getId();
                Intrinsics.checkNotNull(id);
                linkedHashMap2.put(first, id);
                if (Intrinsics.areEqual(loginUserOperationExecutor._configModelStore.getModel().getPushSubscriptionId(), ((Pair) list2.get(i2)).getFirst())) {
                    loginUserOperationExecutor._configModelStore.getModel().setPushSubscriptionId(subscriptionObject.getId());
                }
                SubscriptionModel subscriptionModel = (SubscriptionModel) loginUserOperationExecutor._subscriptionsModelStore.get((String) ((Pair) list2.get(i2)).getFirst());
                if (subscriptionModel != null) {
                    Model.setStringProperty$default(subscriptionModel, "id", subscriptionObject.getId(), ModelChangeTags.HYDRATE, false, 8, null);
                }
            }
            if (!map.isEmpty()) {
                listListOf = CollectionsKt.listOf(new RefreshUserOperation(loginUserOperation2.getAppId(), str2));
            } else {
                listListOf = null;
            }
            return new ExecutionResponse(ExecutionResult.SUCCESS, linkedHashMap2, listListOf, null, 8, null);
        } catch (BackendException e) {
            int i3 = WhenMappings.$EnumSwitchMapping$1[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
            if (i3 == 1) {
                executionResponse = new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
            } else if (i3 == 2) {
                executionResponse = new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
            } else {
                return new ExecutionResponse(ExecutionResult.FAIL_PAUSE_OPREPO, null, null, null, 14, null);
            }
            return executionResponse;
        }
    }

    private final Map<String, SubscriptionObject> createSubscriptionsFromOperation(TransferSubscriptionOperation operation, Map<String, SubscriptionObject> subscriptions) {
        Map<String, SubscriptionObject> mutableMap = MapsKt.toMutableMap(subscriptions);
        if (mutableMap.containsKey(operation.getSubscriptionId())) {
            String subscriptionId = operation.getSubscriptionId();
            String subscriptionId2 = operation.getSubscriptionId();
            SubscriptionObject subscriptionObject = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject);
            SubscriptionObjectType type = subscriptionObject.getType();
            SubscriptionObject subscriptionObject2 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject2);
            String token = subscriptionObject2.getToken();
            SubscriptionObject subscriptionObject3 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject3);
            Boolean enabled = subscriptionObject3.getEnabled();
            SubscriptionObject subscriptionObject4 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject4);
            Integer notificationTypes = subscriptionObject4.getNotificationTypes();
            SubscriptionObject subscriptionObject5 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject5);
            String sdk = subscriptionObject5.getSdk();
            SubscriptionObject subscriptionObject6 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject6);
            String deviceModel = subscriptionObject6.getDeviceModel();
            SubscriptionObject subscriptionObject7 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject7);
            String deviceOS = subscriptionObject7.getDeviceOS();
            SubscriptionObject subscriptionObject8 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject8);
            Boolean rooted = subscriptionObject8.getRooted();
            SubscriptionObject subscriptionObject9 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject9);
            Integer netType = subscriptionObject9.getNetType();
            SubscriptionObject subscriptionObject10 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject10);
            String carrier = subscriptionObject10.getCarrier();
            SubscriptionObject subscriptionObject11 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject11);
            mutableMap.put(subscriptionId, new SubscriptionObject(subscriptionId2, type, token, enabled, notificationTypes, sdk, deviceModel, deviceOS, rooted, netType, carrier, subscriptionObject11.getAppVersion()));
        } else {
            mutableMap.put(operation.getSubscriptionId(), new SubscriptionObject(operation.getSubscriptionId(), null, null, null, null, null, null, null, null, null, null, null, 4094, null));
        }
        return mutableMap;
    }

    private final Map<String, SubscriptionObject> createSubscriptionsFromOperation(CreateSubscriptionOperation operation, Map<String, SubscriptionObject> subscriptions) {
        SubscriptionObjectType subscriptionObjectTypeFromDeviceType;
        Map<String, SubscriptionObject> mutableMap = MapsKt.toMutableMap(subscriptions);
        int i = WhenMappings.$EnumSwitchMapping$2[operation.getType().ordinal()];
        if (i == 1) {
            subscriptionObjectTypeFromDeviceType = SubscriptionObjectType.SMS;
        } else if (i == 2) {
            subscriptionObjectTypeFromDeviceType = SubscriptionObjectType.EMAIL;
        } else {
            subscriptionObjectTypeFromDeviceType = SubscriptionObjectType.INSTANCE.fromDeviceType(this._deviceService.getDeviceType());
        }
        mutableMap.put(operation.getSubscriptionId(), new SubscriptionObject(null, subscriptionObjectTypeFromDeviceType, operation.getAddress(), Boolean.valueOf(operation.getEnabled()), Integer.valueOf(operation.getStatus().getValue()), OneSignalUtils.SDK_VERSION, Build.MODEL, Build.VERSION.RELEASE, Boolean.valueOf(RootToolsInternalMethods.INSTANCE.isRooted()), DeviceUtils.INSTANCE.getNetType(this._application.getAppContext()), DeviceUtils.INSTANCE.getCarrierName(this._application.getAppContext()), AndroidUtils.INSTANCE.getAppVersion(this._application.getAppContext())));
        return mutableMap;
    }

    private final Map<String, SubscriptionObject> createSubscriptionsFromOperation(UpdateSubscriptionOperation operation, Map<String, SubscriptionObject> subscriptions) {
        Map<String, SubscriptionObject> mutableMap = MapsKt.toMutableMap(subscriptions);
        if (mutableMap.containsKey(operation.getSubscriptionId())) {
            String subscriptionId = operation.getSubscriptionId();
            SubscriptionObject subscriptionObject = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject);
            String id = subscriptionObject.getId();
            SubscriptionObject subscriptionObject2 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject2);
            SubscriptionObjectType type = subscriptionObject2.getType();
            String address = operation.getAddress();
            Boolean boolValueOf = Boolean.valueOf(operation.getEnabled());
            Integer numValueOf = Integer.valueOf(operation.getStatus().getValue());
            SubscriptionObject subscriptionObject3 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject3);
            String sdk = subscriptionObject3.getSdk();
            SubscriptionObject subscriptionObject4 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject4);
            String deviceModel = subscriptionObject4.getDeviceModel();
            SubscriptionObject subscriptionObject5 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject5);
            String deviceOS = subscriptionObject5.getDeviceOS();
            SubscriptionObject subscriptionObject6 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject6);
            Boolean rooted = subscriptionObject6.getRooted();
            SubscriptionObject subscriptionObject7 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject7);
            Integer netType = subscriptionObject7.getNetType();
            SubscriptionObject subscriptionObject8 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject8);
            String carrier = subscriptionObject8.getCarrier();
            SubscriptionObject subscriptionObject9 = subscriptions.get(operation.getSubscriptionId());
            Intrinsics.checkNotNull(subscriptionObject9);
            mutableMap.put(subscriptionId, new SubscriptionObject(id, type, address, boolValueOf, numValueOf, sdk, deviceModel, deviceOS, rooted, netType, carrier, subscriptionObject9.getAppVersion()));
        }
        return mutableMap;
    }

    private final Map<String, SubscriptionObject> createSubscriptionsFromOperation(DeleteSubscriptionOperation operation, Map<String, SubscriptionObject> subscriptions) {
        Map<String, SubscriptionObject> mutableMap = MapsKt.toMutableMap(subscriptions);
        mutableMap.remove(operation.getSubscriptionId());
        return mutableMap;
    }
}
