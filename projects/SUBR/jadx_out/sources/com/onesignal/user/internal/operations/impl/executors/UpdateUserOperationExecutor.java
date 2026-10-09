package com.onesignal.user.internal.operations.impl.executors;

import com.onesignal.common.NetworkUtils;
import com.onesignal.common.consistency.IamFetchReadyCondition;
import com.onesignal.common.consistency.RywData;
import com.onesignal.common.consistency.enums.IamFetchRywTokenKey;
import com.onesignal.common.consistency.models.IConsistencyManager;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.modeling.Model;
import com.onesignal.common.modeling.ModelChangeTags;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.operations.ExecutionResponse;
import com.onesignal.core.internal.operations.ExecutionResult;
import com.onesignal.core.internal.operations.IOperationExecutor;
import com.onesignal.core.internal.operations.Operation;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.user.internal.backend.IUserBackendService;
import com.onesignal.user.internal.backend.IdentityConstants;
import com.onesignal.user.internal.backend.PropertiesDeltasObject;
import com.onesignal.user.internal.backend.PropertiesObject;
import com.onesignal.user.internal.backend.PurchaseObject;
import com.onesignal.user.internal.builduser.IRebuildUserService;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.operations.DeleteTagOperation;
import com.onesignal.user.internal.operations.PurchaseInfo;
import com.onesignal.user.internal.operations.SetPropertyOperation;
import com.onesignal.user.internal.operations.SetTagOperation;
import com.onesignal.user.internal.operations.TrackPurchaseOperation;
import com.onesignal.user.internal.operations.TrackSessionEndOperation;
import com.onesignal.user.internal.operations.TrackSessionStartOperation;
import com.onesignal.user.internal.operations.impl.states.NewRecordsState;
import com.onesignal.user.internal.properties.PropertiesModelStore;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdateUserOperationExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\u00152\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00160\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;", "Lcom/onesignal/core/internal/operations/IOperationExecutor;", "_userBackend", "Lcom/onesignal/user/internal/backend/IUserBackendService;", "_identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "_propertiesModelStore", "Lcom/onesignal/user/internal/properties/PropertiesModelStore;", "_buildUserService", "Lcom/onesignal/user/internal/builduser/IRebuildUserService;", "_newRecordState", "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;", "_consistencyManager", "Lcom/onesignal/common/consistency/models/IConsistencyManager;", "(Lcom/onesignal/user/internal/backend/IUserBackendService;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/user/internal/builduser/IRebuildUserService;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;Lcom/onesignal/common/consistency/models/IConsistencyManager;)V", "operations", "", "", "getOperations", "()Ljava/util/List;", "execute", "Lcom/onesignal/core/internal/operations/ExecutionResponse;", "Lcom/onesignal/core/internal/operations/Operation;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UpdateUserOperationExecutor implements IOperationExecutor {
    public static final String DELETE_TAG = "delete-tag";
    public static final String SET_PROPERTY = "set-property";
    public static final String SET_TAG = "set-tag";
    public static final String TRACK_PURCHASE = "track-purchase";
    public static final String TRACK_SESSION_END = "track-session-end";
    public static final String TRACK_SESSION_START = "track-session-start";
    private final IRebuildUserService _buildUserService;
    private final IConsistencyManager _consistencyManager;
    private final IdentityModelStore _identityModelStore;
    private final NewRecordsState _newRecordState;
    private final PropertiesModelStore _propertiesModelStore;
    private final IUserBackendService _userBackend;

    /* JADX INFO: compiled from: UpdateUserOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkUtils.ResponseStatusType.values().length];
            iArr[NetworkUtils.ResponseStatusType.RETRYABLE.ordinal()] = 1;
            iArr[NetworkUtils.ResponseStatusType.UNAUTHORIZED.ordinal()] = 2;
            iArr[NetworkUtils.ResponseStatusType.MISSING.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.UpdateUserOperationExecutor$execute$1, reason: invalid class name */
    /* JADX INFO: compiled from: UpdateUserOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.UpdateUserOperationExecutor", f = "UpdateUserOperationExecutor.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {142, 152, 154}, m = "execute", n = {"this", "operations", "appId", "onesignalId", "this", "operations", "appId", "onesignalId", "this", "operations", "appId", "onesignalId"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
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
            return UpdateUserOperationExecutor.this.execute(null, this);
        }
    }

    public UpdateUserOperationExecutor(IUserBackendService _userBackend, IdentityModelStore _identityModelStore, PropertiesModelStore _propertiesModelStore, IRebuildUserService _buildUserService, NewRecordsState _newRecordState, IConsistencyManager _consistencyManager) {
        Intrinsics.checkNotNullParameter(_userBackend, "_userBackend");
        Intrinsics.checkNotNullParameter(_identityModelStore, "_identityModelStore");
        Intrinsics.checkNotNullParameter(_propertiesModelStore, "_propertiesModelStore");
        Intrinsics.checkNotNullParameter(_buildUserService, "_buildUserService");
        Intrinsics.checkNotNullParameter(_newRecordState, "_newRecordState");
        Intrinsics.checkNotNullParameter(_consistencyManager, "_consistencyManager");
        this._userBackend = _userBackend;
        this._identityModelStore = _identityModelStore;
        this._propertiesModelStore = _propertiesModelStore;
        this._buildUserService = _buildUserService;
        this._newRecordState = _newRecordState;
        this._consistencyManager = _consistencyManager;
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public List<String> getOperations() {
        return CollectionsKt.listOf((Object[]) new String[]{SET_TAG, DELETE_TAG, SET_PROPERTY, TRACK_SESSION_START, TRACK_SESSION_END, TRACK_PURCHASE});
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:124:0x0369  */
    /* JADX WARN: Code duplicated, block: B:126:0x036c  */
    /* JADX WARN: Code duplicated, block: B:128:0x036f  */
    /* JADX WARN: Code duplicated, block: B:129:0x037f  */
    /* JADX WARN: Code duplicated, block: B:131:0x0387  */
    /* JADX WARN: Code duplicated, block: B:137:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:139:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:141:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:142:0x03db  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:95:0x028c A[Catch: BackendException -> 0x007e, TryCatch #1 {BackendException -> 0x007e, blocks: (B:22:0x0079, B:93:0x0288, B:95:0x028c, B:99:0x02a6), top: B:149:0x0079 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x02a3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:99:0x02a6 A[Catch: BackendException -> 0x007e, TRY_LEAVE, TryCatch #1 {BackendException -> 0x007e, blocks: (B:22:0x0079, B:93:0x0288, B:95:0x028c, B:99:0x02a6), top: B:149:0x0079 }] */
    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public Object execute(List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        AnonymousClass1 anonymousClass1;
        String str;
        UpdateUserOperationExecutor updateUserOperationExecutor;
        String str2;
        String str3;
        UpdateUserOperationExecutor updateUserOperationExecutor2;
        int iIntValue;
        long sessionTime;
        BigDecimal amountSpent;
        ArrayList arrayList;
        RywData rywData;
        IConsistencyManager iConsistencyManager;
        IConsistencyManager iConsistencyManager2;
        IamFetchRywTokenKey iamFetchRywTokenKey;
        int i;
        ExecutionResponse executionResponse;
        List<Operation> rebuildOperationsIfCurrentUser;
        List<? extends Operation> list2 = list;
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
        int i2 = anonymousClass1.label;
        int i3 = 1;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Logging.log(LogLevel.DEBUG, "UpdateUserOperationExecutor(operation: " + list2 + ')');
            String onesignalId = null;
            PropertiesObject propertiesObject = new PropertiesObject(null, null, null, null, null, null, 63, null);
            PropertiesDeltasObject propertiesDeltasObject = new PropertiesDeltasObject(null, null, null, null, 15, null);
            String appId = null;
            PropertiesObject propertiesObjectCreatePropertiesFromOperation = propertiesObject;
            PropertiesDeltasObject propertiesDeltasObject2 = propertiesDeltasObject;
            boolean z = false;
            for (Operation operation : list) {
                if (operation instanceof SetTagOperation) {
                    if (appId == null) {
                        SetTagOperation setTagOperation = (SetTagOperation) operation;
                        appId = setTagOperation.getAppId();
                        onesignalId = setTagOperation.getOnesignalId();
                    }
                    propertiesObjectCreatePropertiesFromOperation = PropertyOperationHelper.INSTANCE.createPropertiesFromOperation((SetTagOperation) operation, propertiesObjectCreatePropertiesFromOperation);
                } else if (operation instanceof DeleteTagOperation) {
                    if (appId == null) {
                        DeleteTagOperation deleteTagOperation = (DeleteTagOperation) operation;
                        appId = deleteTagOperation.getAppId();
                        onesignalId = deleteTagOperation.getOnesignalId();
                    }
                    propertiesObjectCreatePropertiesFromOperation = PropertyOperationHelper.INSTANCE.createPropertiesFromOperation((DeleteTagOperation) operation, propertiesObjectCreatePropertiesFromOperation);
                } else if (operation instanceof SetPropertyOperation) {
                    if (appId == null) {
                        SetPropertyOperation setPropertyOperation = (SetPropertyOperation) operation;
                        appId = setPropertyOperation.getAppId();
                        onesignalId = setPropertyOperation.getOnesignalId();
                    }
                    propertiesObjectCreatePropertiesFromOperation = PropertyOperationHelper.INSTANCE.createPropertiesFromOperation((SetPropertyOperation) operation, propertiesObjectCreatePropertiesFromOperation);
                } else if (operation instanceof TrackSessionStartOperation) {
                    if (appId == null) {
                        TrackSessionStartOperation trackSessionStartOperation = (TrackSessionStartOperation) operation;
                        appId = trackSessionStartOperation.getAppId();
                        onesignalId = trackSessionStartOperation.getOnesignalId();
                    }
                    if (propertiesDeltasObject2.getSessionCount() != null) {
                        Integer sessionCount = propertiesDeltasObject2.getSessionCount();
                        Intrinsics.checkNotNull(sessionCount);
                        iIntValue = sessionCount.intValue() + i3;
                    } else {
                        iIntValue = 1;
                    }
                    propertiesDeltasObject2 = new PropertiesDeltasObject(propertiesDeltasObject2.getSessionTime(), Boxing.boxInt(iIntValue), propertiesDeltasObject2.getAmountSpent(), propertiesDeltasObject2.getPurchases());
                    z = true;
                } else if (operation instanceof TrackSessionEndOperation) {
                    if (appId == null) {
                        TrackSessionEndOperation trackSessionEndOperation = (TrackSessionEndOperation) operation;
                        appId = trackSessionEndOperation.getAppId();
                        onesignalId = trackSessionEndOperation.getOnesignalId();
                    }
                    if (propertiesDeltasObject2.getSessionTime() != null) {
                        Long sessionTime2 = propertiesDeltasObject2.getSessionTime();
                        Intrinsics.checkNotNull(sessionTime2);
                        sessionTime = sessionTime2.longValue() + ((TrackSessionEndOperation) operation).getSessionTime();
                    } else {
                        sessionTime = ((TrackSessionEndOperation) operation).getSessionTime();
                    }
                    propertiesDeltasObject2 = new PropertiesDeltasObject(Boxing.boxLong(sessionTime), propertiesDeltasObject2.getSessionCount(), propertiesDeltasObject2.getAmountSpent(), propertiesDeltasObject2.getPurchases());
                } else if (operation instanceof TrackPurchaseOperation) {
                    if (appId == null) {
                        TrackPurchaseOperation trackPurchaseOperation = (TrackPurchaseOperation) operation;
                        appId = trackPurchaseOperation.getAppId();
                        onesignalId = trackPurchaseOperation.getOnesignalId();
                    }
                    if (propertiesDeltasObject2.getAmountSpent() != null) {
                        BigDecimal amountSpent2 = propertiesDeltasObject2.getAmountSpent();
                        Intrinsics.checkNotNull(amountSpent2);
                        amountSpent = amountSpent2.add(((TrackPurchaseOperation) operation).getAmountSpent());
                        Intrinsics.checkNotNullExpressionValue(amountSpent, "this.add(other)");
                    } else {
                        amountSpent = ((TrackPurchaseOperation) operation).getAmountSpent();
                    }
                    if (propertiesDeltasObject2.getPurchases() != null) {
                        List<PurchaseObject> purchases = propertiesDeltasObject2.getPurchases();
                        Intrinsics.checkNotNull(purchases);
                        arrayList = CollectionsKt.toMutableList((Collection) purchases);
                    } else {
                        arrayList = new ArrayList();
                    }
                    for (PurchaseInfo purchaseInfo : ((TrackPurchaseOperation) operation).getPurchases()) {
                        arrayList.add(new PurchaseObject(purchaseInfo.getSku(), purchaseInfo.getIso(), purchaseInfo.getAmount()));
                        onesignalId = onesignalId;
                    }
                    propertiesDeltasObject2 = new PropertiesDeltasObject(propertiesDeltasObject2.getSessionTime(), propertiesDeltasObject2.getSessionCount(), amountSpent, arrayList);
                    onesignalId = onesignalId;
                    i3 = 1;
                } else {
                    throw new Exception("Unrecognized operation: " + operation);
                }
            }
            if (appId != null && onesignalId != null) {
                try {
                    IUserBackendService iUserBackendService = this._userBackend;
                    boolean z2 = z;
                    anonymousClass1.L$0 = this;
                    anonymousClass1.L$1 = list2;
                    anonymousClass1.L$2 = appId;
                    anonymousClass1.L$3 = onesignalId;
                    anonymousClass1.label = 1;
                    str = appId;
                    try {
                        Object objUpdateUser = iUserBackendService.updateUser(appId, IdentityConstants.ONESIGNAL_ID, onesignalId, propertiesObjectCreatePropertiesFromOperation, z2, propertiesDeltasObject2, anonymousClass1);
                        if (objUpdateUser == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        updateUserOperationExecutor2 = this;
                        str3 = str;
                        str2 = onesignalId;
                        obj = objUpdateUser;
                        rywData = (RywData) obj;
                        if (rywData != null) {
                            iConsistencyManager2 = updateUserOperationExecutor2._consistencyManager;
                            iamFetchRywTokenKey = IamFetchRywTokenKey.USER;
                            anonymousClass1.L$0 = updateUserOperationExecutor2;
                            anonymousClass1.L$1 = list2;
                            anonymousClass1.L$2 = str3;
                            anonymousClass1.L$3 = str2;
                            anonymousClass1.label = 2;
                            if (iConsistencyManager2.setRywData(str2, iamFetchRywTokenKey, rywData, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            iConsistencyManager = updateUserOperationExecutor2._consistencyManager;
                            anonymousClass1.L$0 = updateUserOperationExecutor2;
                            anonymousClass1.L$1 = list2;
                            anonymousClass1.L$2 = str3;
                            anonymousClass1.L$3 = str2;
                            anonymousClass1.label = 3;
                            if (iConsistencyManager.resolveConditionsWithID(IamFetchReadyCondition.ID, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        updateUserOperationExecutor = updateUserOperationExecutor2;
                    } catch (BackendException e) {
                        e = e;
                        updateUserOperationExecutor = this;
                        str2 = onesignalId;
                        str3 = str;
                        i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                        if (i == 1) {
                            executionResponse = new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                        } else {
                            if (i != 2) {
                                if (i == 3) {
                                    if (e.getStatusCode() != 404 && updateUserOperationExecutor._newRecordState.isInMissingRetryWindow(str2)) {
                                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                                    }
                                    rebuildOperationsIfCurrentUser = updateUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(str3, str2);
                                    if (rebuildOperationsIfCurrentUser == null) {
                                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                                    }
                                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
                                }
                                return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                            }
                            executionResponse = new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                        }
                        return executionResponse;
                    }
                } catch (BackendException e2) {
                    e = e2;
                    str = appId;
                }
            }
            return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
        }
        if (i2 == 1) {
            str2 = (String) anonymousClass1.L$3;
            str3 = (String) anonymousClass1.L$2;
            list2 = (List) anonymousClass1.L$1;
            updateUserOperationExecutor2 = (UpdateUserOperationExecutor) anonymousClass1.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                rywData = (RywData) obj;
                if (rywData != null) {
                    iConsistencyManager2 = updateUserOperationExecutor2._consistencyManager;
                    iamFetchRywTokenKey = IamFetchRywTokenKey.USER;
                    anonymousClass1.L$0 = updateUserOperationExecutor2;
                    anonymousClass1.L$1 = list2;
                    anonymousClass1.L$2 = str3;
                    anonymousClass1.L$3 = str2;
                    anonymousClass1.label = 2;
                    if (iConsistencyManager2.setRywData(str2, iamFetchRywTokenKey, rywData, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    iConsistencyManager = updateUserOperationExecutor2._consistencyManager;
                    anonymousClass1.L$0 = updateUserOperationExecutor2;
                    anonymousClass1.L$1 = list2;
                    anonymousClass1.L$2 = str3;
                    anonymousClass1.L$3 = str2;
                    anonymousClass1.label = 3;
                    if (iConsistencyManager.resolveConditionsWithID(IamFetchReadyCondition.ID, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                updateUserOperationExecutor = updateUserOperationExecutor2;
            } catch (BackendException e3) {
                e = e3;
                updateUserOperationExecutor = updateUserOperationExecutor2;
                i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i == 1) {
                    executionResponse = new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                } else {
                    if (i != 2) {
                        if (i == 3) {
                            if (e.getStatusCode() != 404) {
                            }
                            rebuildOperationsIfCurrentUser = updateUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(str3, str2);
                            if (rebuildOperationsIfCurrentUser == null) {
                                return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                            }
                            return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
                        }
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    executionResponse = new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                return executionResponse;
            }
        } else if (i2 == 2 || i2 == 3) {
            str2 = (String) anonymousClass1.L$3;
            str3 = (String) anonymousClass1.L$2;
            list2 = (List) anonymousClass1.L$1;
            updateUserOperationExecutor = (UpdateUserOperationExecutor) anonymousClass1.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (BackendException e4) {
                e = e4;
                i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i == 1) {
                    executionResponse = new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                } else {
                    if (i != 2) {
                        if (i == 3) {
                            if (e.getStatusCode() != 404) {
                            }
                            rebuildOperationsIfCurrentUser = updateUserOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(str3, str2);
                            if (rebuildOperationsIfCurrentUser == null) {
                                return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                            }
                            return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
                        }
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    executionResponse = new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                return executionResponse;
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (Intrinsics.areEqual(updateUserOperationExecutor._identityModelStore.getModel().getOnesignalId(), str2)) {
            for (Operation operation2 : list2) {
                if (operation2 instanceof SetTagOperation) {
                    Model.setStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((SetTagOperation) operation2).getKey(), ((SetTagOperation) operation2).getValue(), ModelChangeTags.HYDRATE, false, 8, null);
                } else if (operation2 instanceof DeleteTagOperation) {
                    Model.setOptStringProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel().getTags(), ((DeleteTagOperation) operation2).getKey(), null, ModelChangeTags.HYDRATE, false, 8, null);
                } else if (operation2 instanceof SetPropertyOperation) {
                    Model.setOptAnyProperty$default(updateUserOperationExecutor._propertiesModelStore.getModel(), ((SetPropertyOperation) operation2).getProperty(), ((SetPropertyOperation) operation2).getValue(), ModelChangeTags.HYDRATE, false, 8, null);
                }
            }
        }
        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
    }
}
