package com.onesignal.user.internal.operations.impl.executors;

import com.onesignal.common.NetworkUtils;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.modeling.Model;
import com.onesignal.common.modeling.ModelChangeTags;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.operations.ExecutionResponse;
import com.onesignal.core.internal.operations.ExecutionResult;
import com.onesignal.core.internal.operations.IOperationExecutor;
import com.onesignal.core.internal.operations.Operation;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.user.internal.backend.IIdentityBackendService;
import com.onesignal.user.internal.backend.IdentityConstants;
import com.onesignal.user.internal.builduser.IRebuildUserService;
import com.onesignal.user.internal.identity.IdentityModelStore;
import com.onesignal.user.internal.operations.DeleteAliasOperation;
import com.onesignal.user.internal.operations.SetAliasOperation;
import com.onesignal.user.internal.operations.impl.states.NewRecordsState;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityOperationExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u00112\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00120\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lcom/onesignal/user/internal/operations/impl/executors/IdentityOperationExecutor;", "Lcom/onesignal/core/internal/operations/IOperationExecutor;", "_identityBackend", "Lcom/onesignal/user/internal/backend/IIdentityBackendService;", "_identityModelStore", "Lcom/onesignal/user/internal/identity/IdentityModelStore;", "_buildUserService", "Lcom/onesignal/user/internal/builduser/IRebuildUserService;", "_newRecordState", "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;", "(Lcom/onesignal/user/internal/backend/IIdentityBackendService;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/builduser/IRebuildUserService;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;)V", "operations", "", "", "getOperations", "()Ljava/util/List;", "execute", "Lcom/onesignal/core/internal/operations/ExecutionResponse;", "Lcom/onesignal/core/internal/operations/Operation;", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class IdentityOperationExecutor implements IOperationExecutor {
    public static final String DELETE_ALIAS = "delete-alias";
    public static final String SET_ALIAS = "set-alias";
    private final IRebuildUserService _buildUserService;
    private final IIdentityBackendService _identityBackend;
    private final IdentityModelStore _identityModelStore;
    private final NewRecordsState _newRecordState;

    /* JADX INFO: compiled from: IdentityOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkUtils.ResponseStatusType.values().length];
            iArr[NetworkUtils.ResponseStatusType.RETRYABLE.ordinal()] = 1;
            iArr[NetworkUtils.ResponseStatusType.INVALID.ordinal()] = 2;
            iArr[NetworkUtils.ResponseStatusType.CONFLICT.ordinal()] = 3;
            iArr[NetworkUtils.ResponseStatusType.UNAUTHORIZED.ordinal()] = 4;
            iArr[NetworkUtils.ResponseStatusType.MISSING.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.IdentityOperationExecutor$execute$1, reason: invalid class name */
    /* JADX INFO: compiled from: IdentityOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.IdentityOperationExecutor", f = "IdentityOperationExecutor.kt", i = {0, 0, 1, 1}, l = {48, 91}, m = "execute", n = {"this", "lastOperation", "this", "lastOperation"}, s = {"L$0", "L$1", "L$0", "L$1"})
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
            return IdentityOperationExecutor.this.execute(null, this);
        }
    }

    public IdentityOperationExecutor(IIdentityBackendService _identityBackend, IdentityModelStore _identityModelStore, IRebuildUserService _buildUserService, NewRecordsState _newRecordState) {
        Intrinsics.checkNotNullParameter(_identityBackend, "_identityBackend");
        Intrinsics.checkNotNullParameter(_identityModelStore, "_identityModelStore");
        Intrinsics.checkNotNullParameter(_buildUserService, "_buildUserService");
        Intrinsics.checkNotNullParameter(_newRecordState, "_newRecordState");
        this._identityBackend = _identityBackend;
        this._identityModelStore = _identityModelStore;
        this._buildUserService = _buildUserService;
        this._newRecordState = _newRecordState;
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public List<String> getOperations() {
        return CollectionsKt.listOf((Object[]) new String[]{SET_ALIAS, DELETE_ALIAS});
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0219  */
    /* JADX WARN: Code duplicated, block: B:101:0x0228  */
    /* JADX WARN: Code duplicated, block: B:111:0x027f A[Catch: BackendException -> 0x0044, TRY_LEAVE, TryCatch #1 {BackendException -> 0x0044, blocks: (B:13:0x003f, B:109:0x0266, B:111:0x027f), top: B:141:0x003f }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x02b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x02b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x02b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:128:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:130:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:131:0x0306  */
    /* JADX WARN: Code duplicated, block: B:132:0x0316  */
    /* JADX WARN: Code duplicated, block: B:133:0x0325  */
    /* JADX WARN: Code duplicated, block: B:74:0x0159 A[Catch: BackendException -> 0x005e, TRY_LEAVE, TryCatch #0 {BackendException -> 0x005e, blocks: (B:20:0x0059, B:72:0x0140, B:74:0x0159), top: B:139:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:80:0x0191 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x0193 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0195 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0197 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x0199  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:94:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:98:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:99:0x0207  */
    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public Object execute(List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        AnonymousClass1 anonymousClass1;
        boolean z;
        boolean z2;
        IdentityOperationExecutor identityOperationExecutor;
        Operation operation;
        IdentityOperationExecutor identityOperationExecutor2;
        Operation operation2;
        int i;
        List<Operation> rebuildOperationsIfCurrentUser;
        int i2;
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
        int i3 = anonymousClass2.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            Logging.debug$default("IdentityOperationExecutor(operations: " + list + ')', null, 2, null);
            List<? extends Operation> list2 = list;
            boolean z3 = list2 instanceof Collection;
            boolean z4 = false;
            if (!z3 || !list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    Operation operation3 = (Operation) it.next();
                    if (((operation3 instanceof SetAliasOperation) || (operation3 instanceof DeleteAliasOperation)) ? false : true) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
            if (z) {
                throw new Exception("Unrecognized operation(s)! Attempted operations:\n" + list);
            }
            if (!z3 || !list2.isEmpty()) {
                Iterator<T> it2 = list2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = false;
                        break;
                    }
                    if (((Operation) it2.next()) instanceof SetAliasOperation) {
                        z2 = true;
                        break;
                    }
                }
            } else {
                z2 = false;
                break;
            }
            if (z2) {
                if (!z3 || !list2.isEmpty()) {
                    Iterator<T> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        if (((Operation) it3.next()) instanceof DeleteAliasOperation) {
                            z4 = true;
                            break;
                        }
                    }
                }
                if (z4) {
                    throw new Exception("Can't process SetAliasOperation and DeleteAliasOperation at the same time.");
                }
            }
            Operation operation4 = (Operation) CollectionsKt.last((List) list);
            if (operation4 instanceof SetAliasOperation) {
                try {
                    IIdentityBackendService iIdentityBackendService = this._identityBackend;
                    String appId = ((SetAliasOperation) operation4).getAppId();
                    String onesignalId = ((SetAliasOperation) operation4).getOnesignalId();
                    Map<String, String> mapMapOf = MapsKt.mapOf(TuplesKt.to(((SetAliasOperation) operation4).getLabel(), ((SetAliasOperation) operation4).getValue()));
                    anonymousClass2.L$0 = this;
                    anonymousClass2.L$1 = operation4;
                    anonymousClass2.label = 1;
                    if (iIdentityBackendService.setAlias(appId, IdentityConstants.ONESIGNAL_ID, onesignalId, mapMapOf, anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    identityOperationExecutor = this;
                    operation = operation4;
                    if (Intrinsics.areEqual(identityOperationExecutor._identityModelStore.getModel().getOnesignalId(), ((SetAliasOperation) operation).getOnesignalId())) {
                        Model.setStringProperty$default(identityOperationExecutor._identityModelStore.getModel(), ((SetAliasOperation) operation).getLabel(), ((SetAliasOperation) operation).getValue(), ModelChangeTags.HYDRATE, false, 8, null);
                    }
                } catch (BackendException e) {
                    e = e;
                    identityOperationExecutor = this;
                    operation = operation4;
                    i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                    if (i != 1) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i != 2) {
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    if (i != 3) {
                        return new ExecutionResponse(ExecutionResult.FAIL_CONFLICT, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i != 4) {
                        return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i == 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (e.getStatusCode() != 404) {
                    }
                    SetAliasOperation setAliasOperation = (SetAliasOperation) operation;
                    rebuildOperationsIfCurrentUser = identityOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(setAliasOperation.getAppId(), setAliasOperation.getOnesignalId());
                    if (rebuildOperationsIfCurrentUser == null) {
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
                }
            } else if (operation4 instanceof DeleteAliasOperation) {
                try {
                    IIdentityBackendService iIdentityBackendService2 = this._identityBackend;
                    String appId2 = ((DeleteAliasOperation) operation4).getAppId();
                    String onesignalId2 = ((DeleteAliasOperation) operation4).getOnesignalId();
                    String label = ((DeleteAliasOperation) operation4).getLabel();
                    anonymousClass2.L$0 = this;
                    anonymousClass2.L$1 = operation4;
                    anonymousClass2.label = 2;
                    if (iIdentityBackendService2.deleteAlias(appId2, IdentityConstants.ONESIGNAL_ID, onesignalId2, label, anonymousClass2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    identityOperationExecutor2 = this;
                    operation2 = operation4;
                    if (Intrinsics.areEqual(identityOperationExecutor2._identityModelStore.getModel().getOnesignalId(), ((DeleteAliasOperation) operation2).getOnesignalId())) {
                        Model.setOptStringProperty$default(identityOperationExecutor2._identityModelStore.getModel(), ((DeleteAliasOperation) operation2).getLabel(), null, ModelChangeTags.HYDRATE, false, 8, null);
                    }
                } catch (BackendException e2) {
                    e = e2;
                    identityOperationExecutor2 = this;
                    operation2 = operation4;
                    i2 = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                    if (i2 != 1) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i2 != 2) {
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    if (i2 != 3) {
                        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                    }
                    if (i2 != 4) {
                        return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i2 == 5) {
                        if (e.getStatusCode() != 404) {
                        }
                        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                    }
                    throw new NoWhenBranchMatchedException();
                }
            }
        } else if (i3 == 1) {
            operation = (Operation) anonymousClass2.L$1;
            identityOperationExecutor = (IdentityOperationExecutor) anonymousClass2.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                if (Intrinsics.areEqual(identityOperationExecutor._identityModelStore.getModel().getOnesignalId(), ((SetAliasOperation) operation).getOnesignalId())) {
                    Model.setStringProperty$default(identityOperationExecutor._identityModelStore.getModel(), ((SetAliasOperation) operation).getLabel(), ((SetAliasOperation) operation).getValue(), ModelChangeTags.HYDRATE, false, 8, null);
                }
            } catch (BackendException e3) {
                e = e3;
                i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i != 1) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i != 2) {
                    return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                }
                if (i != 3) {
                    return new ExecutionResponse(ExecutionResult.FAIL_CONFLICT, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i != 4) {
                    return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i == 5) {
                    throw new NoWhenBranchMatchedException();
                }
                if (e.getStatusCode() != 404 && identityOperationExecutor._newRecordState.isInMissingRetryWindow(((SetAliasOperation) operation).getOnesignalId())) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                SetAliasOperation setAliasOperation2 = (SetAliasOperation) operation;
                rebuildOperationsIfCurrentUser = identityOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(setAliasOperation2.getAppId(), setAliasOperation2.getOnesignalId());
                if (rebuildOperationsIfCurrentUser == null) {
                    return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                }
                return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
            }
        } else if (i3 == 2) {
            operation2 = (Operation) anonymousClass2.L$1;
            identityOperationExecutor2 = (IdentityOperationExecutor) anonymousClass2.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                if (Intrinsics.areEqual(identityOperationExecutor2._identityModelStore.getModel().getOnesignalId(), ((DeleteAliasOperation) operation2).getOnesignalId())) {
                    Model.setOptStringProperty$default(identityOperationExecutor2._identityModelStore.getModel(), ((DeleteAliasOperation) operation2).getLabel(), null, ModelChangeTags.HYDRATE, false, 8, null);
                }
            } catch (BackendException e4) {
                e = e4;
                i2 = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i2 != 1) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i2 != 2) {
                    return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                }
                if (i2 != 3) {
                    return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                }
                if (i2 != 4) {
                    return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i2 == 5) {
                    if (e.getStatusCode() != 404 && identityOperationExecutor2._newRecordState.isInMissingRetryWindow(((DeleteAliasOperation) operation2).getOnesignalId())) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                }
                throw new NoWhenBranchMatchedException();
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
    }
}
