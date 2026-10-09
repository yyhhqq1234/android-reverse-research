package com.onesignal.user.internal.operations.impl.executors;

import android.os.Build;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.DeviceUtils;
import com.onesignal.common.NetworkUtils;
import com.onesignal.common.OneSignalUtils;
import com.onesignal.common.RootToolsInternalMethods;
import com.onesignal.common.consistency.IamFetchReadyCondition;
import com.onesignal.common.consistency.RywData;
import com.onesignal.common.consistency.enums.IamFetchRywTokenKey;
import com.onesignal.common.consistency.models.IConsistencyManager;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.common.modeling.Model;
import com.onesignal.common.modeling.ModelChangeTags;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.core.internal.operations.ExecutionResponse;
import com.onesignal.core.internal.operations.ExecutionResult;
import com.onesignal.core.internal.operations.IOperationExecutor;
import com.onesignal.core.internal.operations.Operation;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.user.internal.backend.ISubscriptionBackendService;
import com.onesignal.user.internal.backend.IdentityConstants;
import com.onesignal.user.internal.backend.SubscriptionObject;
import com.onesignal.user.internal.backend.SubscriptionObjectType;
import com.onesignal.user.internal.builduser.IRebuildUserService;
import com.onesignal.user.internal.operations.CreateSubscriptionOperation;
import com.onesignal.user.internal.operations.DeleteSubscriptionOperation;
import com.onesignal.user.internal.operations.TransferSubscriptionOperation;
import com.onesignal.user.internal.operations.UpdateSubscriptionOperation;
import com.onesignal.user.internal.operations.impl.states.NewRecordsState;
import com.onesignal.user.internal.subscriptions.SubscriptionModel;
import com.onesignal.user.internal.subscriptions.SubscriptionModelStore;
import com.onesignal.user.internal.subscriptions.SubscriptionStatus;
import com.onesignal.user.internal.subscriptions.SubscriptionType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SubscriptionOperationExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 /2\u00020\u0001:\u0001/BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J'\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020 0\u0014H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010!J\u0019\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010%J\u001f\u0010&\u001a\u00020\u001d2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020 0\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J\u0019\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010+J'\u0010,\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020-2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020 0\u0014H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010.R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Lcom/onesignal/user/internal/operations/impl/executors/SubscriptionOperationExecutor;", "Lcom/onesignal/core/internal/operations/IOperationExecutor;", "_subscriptionBackend", "Lcom/onesignal/user/internal/backend/ISubscriptionBackendService;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_subscriptionModelStore", "Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_buildUserService", "Lcom/onesignal/user/internal/builduser/IRebuildUserService;", "_newRecordState", "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;", "_consistencyManager", "Lcom/onesignal/common/consistency/models/IConsistencyManager;", "(Lcom/onesignal/user/internal/backend/ISubscriptionBackendService;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/user/internal/subscriptions/SubscriptionModelStore;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/builduser/IRebuildUserService;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;Lcom/onesignal/common/consistency/models/IConsistencyManager;)V", "operations", "", "", "getOperations", "()Ljava/util/List;", "convert", "Lcom/onesignal/user/internal/backend/SubscriptionObjectType;", "subscriptionType", "Lcom/onesignal/user/internal/subscriptions/SubscriptionType;", "createSubscription", "Lcom/onesignal/core/internal/operations/ExecutionResponse;", "createOperation", "Lcom/onesignal/user/internal/operations/CreateSubscriptionOperation;", "Lcom/onesignal/core/internal/operations/Operation;", "(Lcom/onesignal/user/internal/operations/CreateSubscriptionOperation;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteSubscription", "op", "Lcom/onesignal/user/internal/operations/DeleteSubscriptionOperation;", "(Lcom/onesignal/user/internal/operations/DeleteSubscriptionOperation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "execute", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "transferSubscription", "startingOperation", "Lcom/onesignal/user/internal/operations/TransferSubscriptionOperation;", "(Lcom/onesignal/user/internal/operations/TransferSubscriptionOperation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateSubscription", "Lcom/onesignal/user/internal/operations/UpdateSubscriptionOperation;", "(Lcom/onesignal/user/internal/operations/UpdateSubscriptionOperation;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SubscriptionOperationExecutor implements IOperationExecutor {
    public static final String CREATE_SUBSCRIPTION = "create-subscription";
    public static final String DELETE_SUBSCRIPTION = "delete-subscription";
    public static final String TRANSFER_SUBSCRIPTION = "transfer-subscription";
    public static final String UPDATE_SUBSCRIPTION = "update-subscription";
    private final IApplicationService _applicationService;
    private final IRebuildUserService _buildUserService;
    private final ConfigModelStore _configModelStore;
    private final IConsistencyManager _consistencyManager;
    private final IDeviceService _deviceService;
    private final NewRecordsState _newRecordState;
    private final ISubscriptionBackendService _subscriptionBackend;
    private final SubscriptionModelStore _subscriptionModelStore;

    /* JADX INFO: compiled from: SubscriptionOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[NetworkUtils.ResponseStatusType.values().length];
            iArr[NetworkUtils.ResponseStatusType.RETRYABLE.ordinal()] = 1;
            iArr[NetworkUtils.ResponseStatusType.CONFLICT.ordinal()] = 2;
            iArr[NetworkUtils.ResponseStatusType.INVALID.ordinal()] = 3;
            iArr[NetworkUtils.ResponseStatusType.UNAUTHORIZED.ordinal()] = 4;
            iArr[NetworkUtils.ResponseStatusType.MISSING.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SubscriptionType.values().length];
            iArr2[SubscriptionType.SMS.ordinal()] = 1;
            iArr2[SubscriptionType.EMAIL.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor$createSubscription$1, reason: invalid class name */
    /* JADX INFO: compiled from: SubscriptionOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor", f = "SubscriptionOperationExecutor.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {109, 120, 122}, m = "createSubscription", n = {"this", "createOperation", "this", "createOperation", "backendSubscriptionId", "this", "createOperation", "backendSubscriptionId"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionOperationExecutor.this.createSubscription(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor$deleteSubscription$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SubscriptionOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor", f = "SubscriptionOperationExecutor.kt", i = {0, 0}, l = {277}, m = "deleteSubscription", n = {"this", "op"}, s = {"L$0", "L$1"})
    static final class C03301 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03301(Continuation<? super C03301> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionOperationExecutor.this.deleteSubscription(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor$transferSubscription$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SubscriptionOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor", f = "SubscriptionOperationExecutor.kt", i = {}, l = {241}, m = "transferSubscription", n = {}, s = {})
    static final class C03311 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03311(Continuation<? super C03311> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionOperationExecutor.this.transferSubscription(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor$updateSubscription$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SubscriptionOperationExecutor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.operations.impl.executors.SubscriptionOperationExecutor", f = "SubscriptionOperationExecutor.kt", i = {0, 0, 0, 1, 1, 2, 2}, l = {191, 194, 196}, m = "updateSubscription", n = {"this", "startingOperation", "lastOperation", "this", "lastOperation", "this", "lastOperation"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1"})
    static final class C03321 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03321(Continuation<? super C03321> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionOperationExecutor.this.updateSubscription(null, null, this);
        }
    }

    public SubscriptionOperationExecutor(ISubscriptionBackendService _subscriptionBackend, IDeviceService _deviceService, IApplicationService _applicationService, SubscriptionModelStore _subscriptionModelStore, ConfigModelStore _configModelStore, IRebuildUserService _buildUserService, NewRecordsState _newRecordState, IConsistencyManager _consistencyManager) {
        Intrinsics.checkNotNullParameter(_subscriptionBackend, "_subscriptionBackend");
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_subscriptionModelStore, "_subscriptionModelStore");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_buildUserService, "_buildUserService");
        Intrinsics.checkNotNullParameter(_newRecordState, "_newRecordState");
        Intrinsics.checkNotNullParameter(_consistencyManager, "_consistencyManager");
        this._subscriptionBackend = _subscriptionBackend;
        this._deviceService = _deviceService;
        this._applicationService = _applicationService;
        this._subscriptionModelStore = _subscriptionModelStore;
        this._configModelStore = _configModelStore;
        this._buildUserService = _buildUserService;
        this._newRecordState = _newRecordState;
        this._consistencyManager = _consistencyManager;
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public List<String> getOperations() {
        return CollectionsKt.listOf((Object[]) new String[]{CREATE_SUBSCRIPTION, UPDATE_SUBSCRIPTION, DELETE_SUBSCRIPTION, TRANSFER_SUBSCRIPTION});
    }

    @Override // com.onesignal.core.internal.operations.IOperationExecutor
    public Object execute(List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) throws Exception {
        Logging.log(LogLevel.DEBUG, "SubscriptionOperationExecutor(operations: " + list + ')');
        Operation operation = (Operation) CollectionsKt.first((List) list);
        if (operation instanceof CreateSubscriptionOperation) {
            return createSubscription((CreateSubscriptionOperation) operation, list, continuation);
        }
        List<? extends Operation> list2 = list;
        boolean z = false;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                if (((Operation) it.next()) instanceof DeleteSubscriptionOperation) {
                    z = true;
                    break;
                }
            }
        }
        if (z) {
            if (list.size() > 1) {
                throw new Exception("Only supports one operation! Attempted operations:\n" + list);
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list2) {
                if (obj instanceof DeleteSubscriptionOperation) {
                    arrayList.add(obj);
                }
            }
            return deleteSubscription((DeleteSubscriptionOperation) CollectionsKt.first((List) arrayList), continuation);
        }
        if (operation instanceof UpdateSubscriptionOperation) {
            return updateSubscription((UpdateSubscriptionOperation) operation, list, continuation);
        }
        if (operation instanceof TransferSubscriptionOperation) {
            if (list.size() > 1) {
                throw new Exception("TransferSubscriptionOperation only supports one operation! Attempted operations:\n" + list);
            }
            return transferSubscription((TransferSubscriptionOperation) operation, continuation);
        }
        throw new Exception("Unrecognized operation: " + operation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:100:0x0233  */
    /* JADX WARN: Code duplicated, block: B:101:0x0235 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:122:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c6 A[Catch: BackendException -> 0x0058, TryCatch #2 {BackendException -> 0x0058, blocks: (B:17:0x0053, B:83:0x01b8, B:85:0x01c6, B:86:0x01d8, B:88:0x01ee, B:89:0x01f9), top: B:127:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01ee A[Catch: BackendException -> 0x0058, TryCatch #2 {BackendException -> 0x0058, blocks: (B:17:0x0053, B:83:0x01b8, B:85:0x01c6, B:86:0x01d8, B:88:0x01ee, B:89:0x01f9), top: B:127:0x0053 }] */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object createSubscription(CreateSubscriptionOperation createSubscriptionOperation, List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) {
        AnonymousClass1 anonymousClass1;
        boolean z;
        Operation operationPrevious;
        String address;
        SubscriptionStatus status;
        CreateSubscriptionOperation createSubscriptionOperation2;
        SubscriptionOperationExecutor subscriptionOperationExecutor;
        Object objCreateSubscription;
        SubscriptionOperationExecutor subscriptionOperationExecutor2;
        String str;
        CreateSubscriptionOperation createSubscriptionOperation3;
        int i;
        SubscriptionModel subscriptionModel;
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
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                List<? extends Operation> list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator<T> it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        if (((Operation) it.next()) instanceof DeleteSubscriptionOperation) {
                            z = true;
                            break;
                        }
                    }
                } else {
                    z = false;
                    break;
                }
                if (z) {
                    return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                }
                ListIterator<? extends Operation> listIterator = list.listIterator(list.size());
                do {
                    if (!listIterator.hasPrevious()) {
                        operationPrevious = null;
                        break;
                    }
                    operationPrevious = listIterator.previous();
                } while (!(operationPrevious instanceof UpdateSubscriptionOperation));
                UpdateSubscriptionOperation updateSubscriptionOperation = (UpdateSubscriptionOperation) operationPrevious;
                boolean enabled = updateSubscriptionOperation != null ? updateSubscriptionOperation.getEnabled() : createSubscriptionOperation.getEnabled();
                if (updateSubscriptionOperation == null || (address = updateSubscriptionOperation.getAddress()) == null) {
                    address = createSubscriptionOperation.getAddress();
                }
                String str2 = address;
                if (updateSubscriptionOperation == null || (status = updateSubscriptionOperation.getStatus()) == null) {
                    status = createSubscriptionOperation.getStatus();
                }
                try {
                    SubscriptionObject subscriptionObject = new SubscriptionObject(null, convert(createSubscriptionOperation.getType()), str2, Boxing.boxBoolean(enabled), Boxing.boxInt(status.getValue()), OneSignalUtils.SDK_VERSION, Build.MODEL, Build.VERSION.RELEASE, Boxing.boxBoolean(RootToolsInternalMethods.INSTANCE.isRooted()), DeviceUtils.INSTANCE.getNetType(this._applicationService.getAppContext()), DeviceUtils.INSTANCE.getCarrierName(this._applicationService.getAppContext()), AndroidUtils.INSTANCE.getAppVersion(this._applicationService.getAppContext()));
                    ISubscriptionBackendService iSubscriptionBackendService = this._subscriptionBackend;
                    String appId = createSubscriptionOperation.getAppId();
                    String onesignalId = createSubscriptionOperation.getOnesignalId();
                    anonymousClass1.L$0 = this;
                    createSubscriptionOperation2 = createSubscriptionOperation;
                    try {
                        anonymousClass1.L$1 = createSubscriptionOperation2;
                        anonymousClass1.label = 1;
                        objCreateSubscription = iSubscriptionBackendService.createSubscription(appId, IdentityConstants.ONESIGNAL_ID, onesignalId, subscriptionObject, anonymousClass1);
                        if (objCreateSubscription == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        subscriptionOperationExecutor2 = this;
                    } catch (BackendException e) {
                        e = e;
                        subscriptionOperationExecutor = this;
                        i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                        if (i != 1) {
                            return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                        }
                        if (i != 2) {
                        }
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                } catch (BackendException e2) {
                    e = e2;
                    createSubscriptionOperation2 = createSubscriptionOperation;
                }
            } else {
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        str = (String) anonymousClass1.L$2;
                        createSubscriptionOperation3 = (CreateSubscriptionOperation) anonymousClass1.L$1;
                        subscriptionOperationExecutor = (SubscriptionOperationExecutor) anonymousClass1.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            subscriptionModel = (SubscriptionModel) subscriptionOperationExecutor._subscriptionModelStore.get(createSubscriptionOperation3.getSubscriptionId());
                            if (subscriptionModel != null) {
                                Model.setStringProperty$default(subscriptionModel, "id", str, ModelChangeTags.HYDRATE, false, 8, null);
                            }
                            if (Intrinsics.areEqual(subscriptionOperationExecutor._configModelStore.getModel().getPushSubscriptionId(), createSubscriptionOperation3.getSubscriptionId())) {
                                subscriptionOperationExecutor._configModelStore.getModel().setPushSubscriptionId(str);
                            }
                            return new ExecutionResponse(ExecutionResult.SUCCESS, MapsKt.mapOf(TuplesKt.to(createSubscriptionOperation3.getSubscriptionId(), str)), null, null, 12, null);
                        } catch (BackendException e3) {
                            e = e3;
                            createSubscriptionOperation2 = createSubscriptionOperation3;
                            i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                            if (i != 1) {
                                return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                            }
                            if (i != 2) {
                            }
                            return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                        }
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                CreateSubscriptionOperation createSubscriptionOperation4 = (CreateSubscriptionOperation) anonymousClass1.L$1;
                subscriptionOperationExecutor2 = (SubscriptionOperationExecutor) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    objCreateSubscription = obj;
                    createSubscriptionOperation2 = createSubscriptionOperation4;
                } catch (BackendException e4) {
                    e = e4;
                    createSubscriptionOperation2 = createSubscriptionOperation4;
                    subscriptionOperationExecutor = subscriptionOperationExecutor2;
                    i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                    if (i != 1) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i != 2 || i == 3) {
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    if (i == 4) {
                        return new ExecutionResponse(ExecutionResult.FAIL_UNAUTHORIZED, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (e.getStatusCode() == 404 && subscriptionOperationExecutor._newRecordState.isInMissingRetryWindow(createSubscriptionOperation2.getOnesignalId())) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    List<Operation> rebuildOperationsIfCurrentUser = subscriptionOperationExecutor._buildUserService.getRebuildOperationsIfCurrentUser(createSubscriptionOperation2.getAppId(), createSubscriptionOperation2.getOnesignalId());
                    if (rebuildOperationsIfCurrentUser == null) {
                        return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                    }
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, rebuildOperationsIfCurrentUser, e.getRetryAfterSeconds(), 2, null);
                }
            }
            Pair pair = (Pair) objCreateSubscription;
            if (pair == null) {
                return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
            }
            String str3 = (String) pair.getFirst();
            RywData rywData = (RywData) pair.getSecond();
            if (rywData != null) {
                IConsistencyManager iConsistencyManager = subscriptionOperationExecutor2._consistencyManager;
                String onesignalId2 = createSubscriptionOperation2.getOnesignalId();
                IamFetchRywTokenKey iamFetchRywTokenKey = IamFetchRywTokenKey.SUBSCRIPTION;
                anonymousClass1.L$0 = subscriptionOperationExecutor2;
                anonymousClass1.L$1 = createSubscriptionOperation2;
                anonymousClass1.L$2 = str3;
                anonymousClass1.label = 2;
                if (iConsistencyManager.setRywData(onesignalId2, iamFetchRywTokenKey, rywData, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                IConsistencyManager iConsistencyManager2 = subscriptionOperationExecutor2._consistencyManager;
                anonymousClass1.L$0 = subscriptionOperationExecutor2;
                anonymousClass1.L$1 = createSubscriptionOperation2;
                anonymousClass1.L$2 = str3;
                anonymousClass1.label = 3;
                if (iConsistencyManager2.resolveConditionsWithID(IamFetchReadyCondition.ID, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            str = str3;
            subscriptionOperationExecutor = subscriptionOperationExecutor2;
            createSubscriptionOperation3 = createSubscriptionOperation2;
            subscriptionModel = (SubscriptionModel) subscriptionOperationExecutor._subscriptionModelStore.get(createSubscriptionOperation3.getSubscriptionId());
            if (subscriptionModel != null) {
                Model.setStringProperty$default(subscriptionModel, "id", str, ModelChangeTags.HYDRATE, false, 8, null);
            }
            if (Intrinsics.areEqual(subscriptionOperationExecutor._configModelStore.getModel().getPushSubscriptionId(), createSubscriptionOperation3.getSubscriptionId())) {
                subscriptionOperationExecutor._configModelStore.getModel().setPushSubscriptionId(str);
            }
            return new ExecutionResponse(ExecutionResult.SUCCESS, MapsKt.mapOf(TuplesKt.to(createSubscriptionOperation3.getSubscriptionId(), str)), null, null, 12, null);
        } catch (BackendException e5) {
            e = e5;
            subscriptionOperationExecutor = subscriptionOperationExecutor2;
            i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
            if (i != 1) {
                return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
            }
            if (i != 2) {
            }
            return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x00f3 A[Catch: BackendException -> 0x0062, TryCatch #2 {BackendException -> 0x0062, blocks: (B:22:0x005d, B:31:0x00ee, B:33:0x00f3, B:36:0x010c), top: B:70:0x005d }] */
    /* JADX WARN: Code duplicated, block: B:35:0x010b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x010c A[Catch: BackendException -> 0x0062, TRY_LEAVE, TryCatch #2 {BackendException -> 0x0062, blocks: (B:22:0x005d, B:31:0x00ee, B:33:0x00f3, B:36:0x010c), top: B:70:0x005d }] */
    /* JADX WARN: Code duplicated, block: B:38:0x011f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object updateSubscription(UpdateSubscriptionOperation updateSubscriptionOperation, List<? extends Operation> list, Continuation<? super ExecutionResponse> continuation) {
        C03321 c03321;
        UpdateSubscriptionOperation updateSubscriptionOperation2;
        SubscriptionOperationExecutor subscriptionOperationExecutor;
        UpdateSubscriptionOperation updateSubscriptionOperation3;
        SubscriptionOperationExecutor subscriptionOperationExecutor2;
        UpdateSubscriptionOperation updateSubscriptionOperation4;
        RywData rywData;
        IConsistencyManager iConsistencyManager;
        IConsistencyManager iConsistencyManager2;
        String onesignalId;
        IamFetchRywTokenKey iamFetchRywTokenKey;
        if (continuation instanceof C03321) {
            c03321 = (C03321) continuation;
            if ((c03321.label & Integer.MIN_VALUE) != 0) {
                c03321.label -= Integer.MIN_VALUE;
            } else {
                c03321 = new C03321(continuation);
            }
        } else {
            c03321 = new C03321(continuation);
        }
        Object objUpdateSubscription = c03321.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03321.label;
        boolean z = true;
        if (i == 0) {
            ResultKt.throwOnFailure(objUpdateSubscription);
            Object objLast = CollectionsKt.last((List<? extends Object>) list);
            Intrinsics.checkNotNull(objLast, "null cannot be cast to non-null type com.onesignal.user.internal.operations.UpdateSubscriptionOperation");
            updateSubscriptionOperation2 = (UpdateSubscriptionOperation) objLast;
            try {
                SubscriptionObject subscriptionObject = new SubscriptionObject(null, convert(updateSubscriptionOperation2.getType()), updateSubscriptionOperation2.getAddress(), Boxing.boxBoolean(updateSubscriptionOperation2.getEnabled()), Boxing.boxInt(updateSubscriptionOperation2.getStatus().getValue()), OneSignalUtils.SDK_VERSION, Build.MODEL, Build.VERSION.RELEASE, Boxing.boxBoolean(RootToolsInternalMethods.INSTANCE.isRooted()), DeviceUtils.INSTANCE.getNetType(this._applicationService.getAppContext()), DeviceUtils.INSTANCE.getCarrierName(this._applicationService.getAppContext()), AndroidUtils.INSTANCE.getAppVersion(this._applicationService.getAppContext()));
                ISubscriptionBackendService iSubscriptionBackendService = this._subscriptionBackend;
                String appId = updateSubscriptionOperation2.getAppId();
                String subscriptionId = updateSubscriptionOperation2.getSubscriptionId();
                c03321.L$0 = this;
                c03321.L$1 = updateSubscriptionOperation;
                c03321.L$2 = updateSubscriptionOperation2;
                c03321.label = 1;
                objUpdateSubscription = iSubscriptionBackendService.updateSubscription(appId, subscriptionId, subscriptionObject, c03321);
                if (objUpdateSubscription == coroutine_suspended) {
                    return coroutine_suspended;
                }
                subscriptionOperationExecutor2 = this;
                updateSubscriptionOperation4 = updateSubscriptionOperation;
                rywData = (RywData) objUpdateSubscription;
                if (rywData != null) {
                    iConsistencyManager2 = subscriptionOperationExecutor2._consistencyManager;
                    onesignalId = updateSubscriptionOperation4.getOnesignalId();
                    iamFetchRywTokenKey = IamFetchRywTokenKey.SUBSCRIPTION;
                    c03321.L$0 = subscriptionOperationExecutor2;
                    c03321.L$1 = updateSubscriptionOperation2;
                    c03321.L$2 = null;
                    c03321.label = 2;
                    if (iConsistencyManager2.setRywData(onesignalId, iamFetchRywTokenKey, rywData, c03321) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    iConsistencyManager = subscriptionOperationExecutor2._consistencyManager;
                    c03321.L$0 = subscriptionOperationExecutor2;
                    c03321.L$1 = updateSubscriptionOperation2;
                    c03321.L$2 = null;
                    c03321.label = 3;
                    if (iConsistencyManager.resolveConditionsWithID(IamFetchReadyCondition.ID, c03321) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } catch (BackendException e) {
                e = e;
                subscriptionOperationExecutor = this;
                updateSubscriptionOperation3 = updateSubscriptionOperation2;
            }
        } else {
            if (i == 1) {
                updateSubscriptionOperation2 = (UpdateSubscriptionOperation) c03321.L$2;
                updateSubscriptionOperation4 = (UpdateSubscriptionOperation) c03321.L$1;
                subscriptionOperationExecutor2 = (SubscriptionOperationExecutor) c03321.L$0;
                try {
                    ResultKt.throwOnFailure(objUpdateSubscription);
                    rywData = (RywData) objUpdateSubscription;
                    if (rywData != null) {
                        iConsistencyManager2 = subscriptionOperationExecutor2._consistencyManager;
                        onesignalId = updateSubscriptionOperation4.getOnesignalId();
                        iamFetchRywTokenKey = IamFetchRywTokenKey.SUBSCRIPTION;
                        c03321.L$0 = subscriptionOperationExecutor2;
                        c03321.L$1 = updateSubscriptionOperation2;
                        c03321.L$2 = null;
                        c03321.label = 2;
                        if (iConsistencyManager2.setRywData(onesignalId, iamFetchRywTokenKey, rywData, c03321) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        iConsistencyManager = subscriptionOperationExecutor2._consistencyManager;
                        c03321.L$0 = subscriptionOperationExecutor2;
                        c03321.L$1 = updateSubscriptionOperation2;
                        c03321.L$2 = null;
                        c03321.label = 3;
                        if (iConsistencyManager.resolveConditionsWithID(IamFetchReadyCondition.ID, c03321) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } catch (BackendException e2) {
                    e = e2;
                    updateSubscriptionOperation3 = updateSubscriptionOperation2;
                    subscriptionOperationExecutor = subscriptionOperationExecutor2;
                }
            } else {
                if (i != 2 && i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                updateSubscriptionOperation3 = (UpdateSubscriptionOperation) c03321.L$1;
                subscriptionOperationExecutor = (SubscriptionOperationExecutor) c03321.L$0;
                try {
                    ResultKt.throwOnFailure(objUpdateSubscription);
                } catch (BackendException e3) {
                    e = e3;
                }
            }
            int i2 = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
            if (i2 == 1) {
                return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
            }
            if (i2 == 5) {
                if (e.getStatusCode() == 404) {
                    List listListOf = CollectionsKt.listOf((Object[]) new String[]{updateSubscriptionOperation3.getOnesignalId(), updateSubscriptionOperation3.getSubscriptionId()});
                    if (!(listListOf instanceof Collection) || !listListOf.isEmpty()) {
                        Iterator it = listListOf.iterator();
                        do {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                        } while (!subscriptionOperationExecutor._newRecordState.isInMissingRetryWindow((String) it.next()));
                    } else {
                        z = false;
                        break;
                    }
                    if (z) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                }
                return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, CollectionsKt.listOf(new CreateSubscriptionOperation(updateSubscriptionOperation3.getAppId(), updateSubscriptionOperation3.getOnesignalId(), updateSubscriptionOperation3.getSubscriptionId(), updateSubscriptionOperation3.getType(), updateSubscriptionOperation3.getEnabled(), updateSubscriptionOperation3.getAddress(), updateSubscriptionOperation3.getStatus())), null, 10, null);
            }
            return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
        }
        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object transferSubscription(TransferSubscriptionOperation transferSubscriptionOperation, Continuation<? super ExecutionResponse> continuation) {
        C03311 c03311;
        if (continuation instanceof C03311) {
            c03311 = (C03311) continuation;
            if ((c03311.label & Integer.MIN_VALUE) != 0) {
                c03311.label -= Integer.MIN_VALUE;
            } else {
                c03311 = new C03311(continuation);
            }
        } else {
            c03311 = new C03311(continuation);
        }
        C03311 c03312 = c03311;
        Object obj = c03312.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03312.label;
        int i2 = 1;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ISubscriptionBackendService iSubscriptionBackendService = this._subscriptionBackend;
                String appId = transferSubscriptionOperation.getAppId();
                String subscriptionId = transferSubscriptionOperation.getSubscriptionId();
                String onesignalId = transferSubscriptionOperation.getOnesignalId();
                c03312.label = 1;
                if (iSubscriptionBackendService.transferSubscription(appId, subscriptionId, IdentityConstants.ONESIGNAL_ID, onesignalId, c03312) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            i2 = 0;
            return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
        } catch (BackendException e) {
            if (WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()] == i2) {
                return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
            }
            return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
        }
    }

    private final SubscriptionObjectType convert(SubscriptionType subscriptionType) {
        int i = WhenMappings.$EnumSwitchMapping$1[subscriptionType.ordinal()];
        if (i == 1) {
            return SubscriptionObjectType.SMS;
        }
        if (i == 2) {
            return SubscriptionObjectType.EMAIL;
        }
        return SubscriptionObjectType.INSTANCE.fromDeviceType(this._deviceService.getDeviceType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x0093  */
    /* JADX WARN: Code duplicated, block: B:37:0x0096  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:53:0x0111  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object deleteSubscription(DeleteSubscriptionOperation deleteSubscriptionOperation, Continuation<? super ExecutionResponse> continuation) {
        C03301 c03301;
        DeleteSubscriptionOperation deleteSubscriptionOperation2;
        SubscriptionOperationExecutor subscriptionOperationExecutor;
        DeleteSubscriptionOperation deleteSubscriptionOperation3;
        int i;
        List listListOf;
        Iterator it;
        if (continuation instanceof C03301) {
            c03301 = (C03301) continuation;
            if ((c03301.label & Integer.MIN_VALUE) != 0) {
                c03301.label -= Integer.MIN_VALUE;
            } else {
                c03301 = new C03301(continuation);
            }
        } else {
            c03301 = new C03301(continuation);
        }
        Object obj = c03301.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c03301.label;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                ISubscriptionBackendService iSubscriptionBackendService = this._subscriptionBackend;
                String appId = deleteSubscriptionOperation.getAppId();
                String subscriptionId = deleteSubscriptionOperation.getSubscriptionId();
                c03301.L$0 = this;
                deleteSubscriptionOperation2 = deleteSubscriptionOperation;
                try {
                    c03301.L$1 = deleteSubscriptionOperation2;
                    c03301.label = 1;
                    if (iSubscriptionBackendService.deleteSubscription(appId, subscriptionId, c03301) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    subscriptionOperationExecutor = this;
                    deleteSubscriptionOperation3 = deleteSubscriptionOperation2;
                } catch (BackendException e) {
                    e = e;
                    subscriptionOperationExecutor = this;
                    i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                    if (i != 1) {
                        return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                    }
                    if (i != 5) {
                        if (e.getStatusCode() == 404) {
                            listListOf = CollectionsKt.listOf((Object[]) new String[]{deleteSubscriptionOperation2.getOnesignalId(), deleteSubscriptionOperation2.getSubscriptionId()});
                            if (!(listListOf instanceof Collection)) {
                                it = listListOf.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        z = false;
                                        break;
                                    }
                                } while (!subscriptionOperationExecutor._newRecordState.isInMissingRetryWindow((String) it.next()));
                            } else {
                                it = listListOf.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        z = false;
                                        break;
                                    }
                                } while (!subscriptionOperationExecutor._newRecordState.isInMissingRetryWindow((String) it.next()));
                            }
                            if (z) {
                                return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                            }
                        }
                        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                    }
                    return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
                }
            } catch (BackendException e2) {
                e = e2;
                deleteSubscriptionOperation2 = deleteSubscriptionOperation;
            }
        } else if (i2 == 1) {
            deleteSubscriptionOperation3 = (DeleteSubscriptionOperation) c03301.L$1;
            subscriptionOperationExecutor = (SubscriptionOperationExecutor) c03301.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (BackendException e3) {
                e = e3;
                deleteSubscriptionOperation2 = deleteSubscriptionOperation3;
                i = WhenMappings.$EnumSwitchMapping$0[NetworkUtils.INSTANCE.getResponseStatusType(e.getStatusCode()).ordinal()];
                if (i != 1) {
                    return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                }
                if (i != 5) {
                    if (e.getStatusCode() == 404) {
                        listListOf = CollectionsKt.listOf((Object[]) new String[]{deleteSubscriptionOperation2.getOnesignalId(), deleteSubscriptionOperation2.getSubscriptionId()});
                        if (!(listListOf instanceof Collection) && listListOf.isEmpty()) {
                            z = false;
                            break;
                        }
                        it = listListOf.iterator();
                        do {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                        } while (!subscriptionOperationExecutor._newRecordState.isInMissingRetryWindow((String) it.next()));
                        if (z) {
                            return new ExecutionResponse(ExecutionResult.FAIL_RETRY, null, null, e.getRetryAfterSeconds(), 6, null);
                        }
                    }
                    return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
                }
                return new ExecutionResponse(ExecutionResult.FAIL_NORETRY, null, null, null, 14, null);
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        subscriptionOperationExecutor._subscriptionModelStore.remove(deleteSubscriptionOperation3.getSubscriptionId(), ModelChangeTags.HYDRATE);
        return new ExecutionResponse(ExecutionResult.SUCCESS, null, null, null, 14, null);
    }
}
