.class public final Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;
.super Ljava/lang/Object;
.source "UpdateUserOperationExecutor.kt"

# interfaces
.implements Lcom/onesignal/core/internal/operations/IOperationExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$Companion;,
        Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0010H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;",
        "Lcom/onesignal/core/internal/operations/IOperationExecutor;",
        "_userBackend",
        "Lcom/onesignal/user/internal/backend/IUserBackendService;",
        "_identityModelStore",
        "Lcom/onesignal/user/internal/identity/IdentityModelStore;",
        "_propertiesModelStore",
        "Lcom/onesignal/user/internal/properties/PropertiesModelStore;",
        "_buildUserService",
        "Lcom/onesignal/user/internal/builduser/IRebuildUserService;",
        "_newRecordState",
        "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;",
        "_consistencyManager",
        "Lcom/onesignal/common/consistency/models/IConsistencyManager;",
        "(Lcom/onesignal/user/internal/backend/IUserBackendService;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/user/internal/builduser/IRebuildUserService;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;Lcom/onesignal/common/consistency/models/IConsistencyManager;)V",
        "operations",
        "",
        "",
        "getOperations",
        "()Ljava/util/List;",
        "execute",
        "Lcom/onesignal/core/internal/operations/ExecutionResponse;",
        "Lcom/onesignal/core/internal/operations/Operation;",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$Companion;

.field public static final DELETE_TAG:Ljava/lang/String; = "delete-tag"

.field public static final SET_PROPERTY:Ljava/lang/String; = "set-property"

.field public static final SET_TAG:Ljava/lang/String; = "set-tag"

.field public static final TRACK_PURCHASE:Ljava/lang/String; = "track-purchase"

.field public static final TRACK_SESSION_END:Ljava/lang/String; = "track-session-end"

.field public static final TRACK_SESSION_START:Ljava/lang/String; = "track-session-start"


# instance fields
.field private final _buildUserService:Lcom/onesignal/user/internal/builduser/IRebuildUserService;

.field private final _consistencyManager:Lcom/onesignal/common/consistency/models/IConsistencyManager;

.field private final _identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

.field private final _newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

.field private final _propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

.field private final _userBackend:Lcom/onesignal/user/internal/backend/IUserBackendService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->Companion:Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/user/internal/backend/IUserBackendService;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/user/internal/builduser/IRebuildUserService;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;Lcom/onesignal/common/consistency/models/IConsistencyManager;)V
    .locals 1

    const-string v0, "_userBackend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_identityModelStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_propertiesModelStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_buildUserService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_newRecordState"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_consistencyManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_userBackend:Lcom/onesignal/user/internal/backend/IUserBackendService;

    .line 33
    iput-object p2, p0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    .line 34
    iput-object p3, p0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    .line 35
    iput-object p4, p0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_buildUserService:Lcom/onesignal/user/internal/builduser/IRebuildUserService;

    .line 36
    iput-object p5, p0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    .line 37
    iput-object p6, p0, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_consistencyManager:Lcom/onesignal/common/consistency/models/IConsistencyManager;

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onesignal/core/internal/operations/Operation;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/core/internal/operations/ExecutionResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;

    iget v4, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;

    invoke-direct {v3, v1, v2}, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;-><init>(Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 42
    iget v4, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->label:I

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v15, :cond_3

    if-eq v4, v14, :cond_2

    if-ne v4, v13, :cond_1

    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;

    goto :goto_1

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;

    :goto_1
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_3
    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v6, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v3, v6

    goto/16 :goto_d

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    sget-object v2, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UpdateUserOperationExecutor(operation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 45
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 48
    new-instance v4, Lcom/onesignal/user/internal/backend/PropertiesObject;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3f

    const/16 v24, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v24}, Lcom/onesignal/user/internal/backend/PropertiesObject;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    new-instance v16, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    move-object/from16 v5, v16

    invoke-direct/range {v5 .. v11}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v11, v2

    move-object v8, v4

    move-object/from16 v10, v16

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/core/internal/operations/Operation;

    .line 54
    instance-of v9, v7, Lcom/onesignal/user/internal/operations/SetTagOperation;

    if-eqz v9, :cond_6

    if-nez v11, :cond_5

    .line 56
    move-object v2, v7

    check-cast v2, Lcom/onesignal/user/internal/operations/SetTagOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/SetTagOperation;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 57
    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/SetTagOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_5
    sget-object v9, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;->INSTANCE:Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;

    check-cast v7, Lcom/onesignal/user/internal/operations/SetTagOperation;

    invoke-virtual {v9, v7, v8}, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;->createPropertiesFromOperation(Lcom/onesignal/user/internal/operations/SetTagOperation;Lcom/onesignal/user/internal/backend/PropertiesObject;)Lcom/onesignal/user/internal/backend/PropertiesObject;

    move-result-object v8

    goto :goto_2

    .line 62
    :cond_6
    instance-of v9, v7, Lcom/onesignal/user/internal/operations/DeleteTagOperation;

    if-eqz v9, :cond_8

    if-nez v11, :cond_7

    .line 64
    move-object v2, v7

    check-cast v2, Lcom/onesignal/user/internal/operations/DeleteTagOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v2

    .line 68
    :cond_7
    sget-object v9, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;->INSTANCE:Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;

    check-cast v7, Lcom/onesignal/user/internal/operations/DeleteTagOperation;

    invoke-virtual {v9, v7, v8}, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;->createPropertiesFromOperation(Lcom/onesignal/user/internal/operations/DeleteTagOperation;Lcom/onesignal/user/internal/backend/PropertiesObject;)Lcom/onesignal/user/internal/backend/PropertiesObject;

    move-result-object v8

    goto :goto_2

    .line 70
    :cond_8
    instance-of v9, v7, Lcom/onesignal/user/internal/operations/SetPropertyOperation;

    if-eqz v9, :cond_a

    if-nez v11, :cond_9

    .line 72
    move-object v2, v7

    check-cast v2, Lcom/onesignal/user/internal/operations/SetPropertyOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 73
    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v2

    .line 76
    :cond_9
    sget-object v9, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;->INSTANCE:Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;

    check-cast v7, Lcom/onesignal/user/internal/operations/SetPropertyOperation;

    invoke-virtual {v9, v7, v8}, Lcom/onesignal/user/internal/operations/impl/executors/PropertyOperationHelper;->createPropertiesFromOperation(Lcom/onesignal/user/internal/operations/SetPropertyOperation;Lcom/onesignal/user/internal/backend/PropertiesObject;)Lcom/onesignal/user/internal/backend/PropertiesObject;

    move-result-object v8

    goto :goto_2

    .line 78
    :cond_a
    instance-of v9, v7, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;

    if-eqz v9, :cond_d

    if-nez v11, :cond_b

    .line 80
    check-cast v7, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;

    invoke-virtual {v7}, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-virtual {v7}, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_b
    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionCount()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v15

    goto :goto_3

    :cond_c
    const/4 v4, 0x1

    .line 91
    :goto_3
    new-instance v7, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getAmountSpent()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getPurchases()Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v9, v4, v6, v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/util/List;)V

    move-object v10, v7

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 94
    :cond_d
    instance-of v6, v7, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;

    if-eqz v6, :cond_10

    if-nez v11, :cond_e

    .line 96
    move-object v2, v7

    check-cast v2, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 97
    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_e
    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 104
    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    check-cast v7, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;

    invoke-virtual {v7}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;->getSessionTime()J

    move-result-wide v6

    add-long v16, v16, v6

    goto :goto_4

    .line 106
    :cond_f
    check-cast v7, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;

    invoke-virtual {v7}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;->getSessionTime()J

    move-result-wide v16

    .line 110
    :goto_4
    new-instance v6, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionCount()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getAmountSpent()Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getPurchases()Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v7, v9, v13, v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/util/List;)V

    move-object v10, v6

    const/4 v13, 0x3

    goto/16 :goto_2

    .line 112
    :cond_10
    instance-of v6, v7, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;

    if-eqz v6, :cond_15

    if-nez v11, :cond_11

    .line 114
    move-object v2, v7

    check-cast v2, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 115
    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_11
    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getAmountSpent()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 123
    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getAmountSpent()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v7

    check-cast v9, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;

    invoke-virtual {v9}, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;->getAmountSpent()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    const-string v9, "this.add(other)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 125
    :cond_12
    move-object v6, v7

    check-cast v6, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;->getAmountSpent()Ljava/math/BigDecimal;

    move-result-object v6

    .line 127
    :goto_5
    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getPurchases()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getPurchases()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Ljava/util/Collection;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    goto :goto_6

    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    .line 129
    :goto_6
    check-cast v7, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;

    invoke-virtual {v7}, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;->getPurchases()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/onesignal/user/internal/operations/PurchaseInfo;

    .line 130
    new-instance v14, Lcom/onesignal/user/internal/backend/PurchaseObject;

    invoke-virtual {v13}, Lcom/onesignal/user/internal/operations/PurchaseInfo;->getSku()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v2

    invoke-virtual {v13}, Lcom/onesignal/user/internal/operations/PurchaseInfo;->getIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/onesignal/user/internal/operations/PurchaseInfo;->getAmount()Ljava/math/BigDecimal;

    move-result-object v13

    invoke-direct {v14, v15, v2, v13}, Lcom/onesignal/user/internal/backend/PurchaseObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v19

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto :goto_7

    :cond_14
    move-object/from16 v19, v2

    .line 133
    new-instance v2, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v2, v7, v10, v6, v9}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/util/List;)V

    move-object v10, v2

    move-object/from16 v2, v19

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto/16 :goto_2

    .line 135
    :cond_15
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized operation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-eqz v11, :cond_23

    if-eqz v2, :cond_23

    .line 142
    :try_start_2
    iget-object v5, v1, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_userBackend:Lcom/onesignal/user/internal/backend/IUserBackendService;

    const-string v6, "onesignal_id"

    if-eqz v4, :cond_17

    const/4 v9, 0x1

    goto :goto_8

    :cond_17
    const/4 v9, 0x0

    :goto_8
    iput-object v1, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v11, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->label:I
    :try_end_2
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    move-object v5, v11

    move-object v7, v2

    move-object v13, v11

    move-object v11, v3

    :try_start_3
    invoke-interface/range {v4 .. v11}, Lcom/onesignal/user/internal/backend/IUserBackendService;->updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/user/internal/backend/PropertiesObject;ZLcom/onesignal/user/internal/backend/PropertiesDeltasObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v4, v12, :cond_18

    return-object v12

    :cond_18
    move-object v6, v1

    move-object v5, v13

    move-object/from16 v25, v4

    move-object v4, v2

    move-object/from16 v2, v25

    .line 42
    :goto_9
    :try_start_4
    check-cast v2, Lcom/onesignal/common/consistency/RywData;

    if-eqz v2, :cond_1a

    .line 152
    iget-object v7, v6, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_consistencyManager:Lcom/onesignal/common/consistency/models/IConsistencyManager;

    sget-object v8, Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;->USER:Lcom/onesignal/common/consistency/enums/IamFetchRywTokenKey;

    check-cast v8, Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;

    iput-object v6, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v4, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->label:I

    invoke-interface {v7, v4, v8, v2, v3}, Lcom/onesignal/common/consistency/models/IConsistencyManager;->setRywData(Ljava/lang/String;Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;Lcom/onesignal/common/consistency/RywData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_19

    return-object v12

    :cond_19
    move-object v3, v6

    goto :goto_a

    .line 154
    :cond_1a
    iget-object v2, v6, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_consistencyManager:Lcom/onesignal/common/consistency/models/IConsistencyManager;

    const-string v7, "IamFetchReadyCondition"

    iput-object v6, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v4, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$execute$1;->label:I

    invoke-interface {v2, v7, v3}, Lcom/onesignal/common/consistency/models/IConsistencyManager;->resolveConditionsWithID(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_4 .. :try_end_4} :catch_1

    if-ne v2, v12, :cond_19

    return-object v12

    .line 157
    :goto_a
    :try_start_5
    iget-object v2, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v2

    check-cast v2, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/operations/Operation;

    .line 161
    instance-of v6, v2, Lcom/onesignal/user/internal/operations/SetTagOperation;

    if-eqz v6, :cond_1c

    .line 162
    iget-object v6, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/properties/PropertiesModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    check-cast v6, Lcom/onesignal/user/internal/properties/PropertiesModel;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/properties/PropertiesModel;->getTags()Lcom/onesignal/common/modeling/MapModel;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onesignal/common/modeling/Model;

    .line 163
    move-object v6, v2

    check-cast v6, Lcom/onesignal/user/internal/operations/SetTagOperation;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/operations/SetTagOperation;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 164
    check-cast v2, Lcom/onesignal/user/internal/operations/SetTagOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/SetTagOperation;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HYDRATE"

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    .line 162
    invoke-static/range {v7 .. v13}, Lcom/onesignal/common/modeling/Model;->setStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_b

    .line 167
    :cond_1c
    instance-of v6, v2, Lcom/onesignal/user/internal/operations/DeleteTagOperation;

    if-eqz v6, :cond_1d

    .line 168
    iget-object v6, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/properties/PropertiesModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    check-cast v6, Lcom/onesignal/user/internal/properties/PropertiesModel;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/properties/PropertiesModel;->getTags()Lcom/onesignal/common/modeling/MapModel;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onesignal/common/modeling/Model;

    .line 169
    check-cast v2, Lcom/onesignal/user/internal/operations/DeleteTagOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "HYDRATE"

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    .line 168
    invoke-static/range {v7 .. v13}, Lcom/onesignal/common/modeling/Model;->setOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_b

    .line 173
    :cond_1d
    instance-of v6, v2, Lcom/onesignal/user/internal/operations/SetPropertyOperation;

    if-eqz v6, :cond_1b

    .line 174
    iget-object v6, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/properties/PropertiesModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v7

    .line 175
    move-object v6, v2

    check-cast v6, Lcom/onesignal/user/internal/operations/SetPropertyOperation;

    invoke-virtual {v6}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getProperty()Ljava/lang/String;

    move-result-object v8

    .line 176
    check-cast v2, Lcom/onesignal/user/internal/operations/SetPropertyOperation;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;->getValue()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "HYDRATE"

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    .line 174
    invoke-static/range {v7 .. v13}, Lcom/onesignal/common/modeling/Model;->setOptAnyProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_5
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v13, v11

    :goto_c
    move-object v3, v1

    move-object v4, v2

    move-object v5, v13

    .line 183
    :goto_d
    sget-object v2, Lcom/onesignal/common/NetworkUtils;->INSTANCE:Lcom/onesignal/common/NetworkUtils;

    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getStatusCode()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/onesignal/common/NetworkUtils;->getResponseStatusType(I)Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    move-result-object v2

    .line 185
    sget-object v6, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_22

    const/4 v6, 0x2

    if-eq v2, v6, :cond_21

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1e

    .line 206
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    sget-object v8, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_NORETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/onesignal/core/internal/operations/ExecutionResponse;-><init>(Lcom/onesignal/core/internal/operations/ExecutionResult;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_f

    .line 191
    :cond_1e
    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getStatusCode()I

    move-result v2

    const/16 v6, 0x194

    if-ne v2, v6, :cond_1f

    iget-object v2, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    invoke-virtual {v2, v4}, Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;->isInMissingRetryWindow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 192
    new-instance v2, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    sget-object v7, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_RETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getRetryAfterSeconds()Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/onesignal/core/internal/operations/ExecutionResponse;-><init>(Lcom/onesignal/core/internal/operations/ExecutionResult;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 194
    :cond_1f
    iget-object v2, v3, Lcom/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor;->_buildUserService:Lcom/onesignal/user/internal/builduser/IRebuildUserService;

    invoke-interface {v2, v5, v4}, Lcom/onesignal/user/internal/builduser/IRebuildUserService;->getRebuildOperationsIfCurrentUser(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_20

    .line 196
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    sget-object v3, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_NORETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/onesignal/core/internal/operations/ExecutionResponse;-><init>(Lcom/onesignal/core/internal/operations/ExecutionResult;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 198
    :cond_20
    new-instance v2, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    .line 199
    sget-object v7, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_RETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v8, 0x0

    .line 201
    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getRetryAfterSeconds()Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v6, v2

    .line 198
    invoke-direct/range {v6 .. v12}, Lcom/onesignal/core/internal/operations/ExecutionResponse;-><init>(Lcom/onesignal/core/internal/operations/ExecutionResult;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 189
    :cond_21
    new-instance v2, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    sget-object v14, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_UNAUTHORIZED:Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getRetryAfterSeconds()Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x6

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Lcom/onesignal/core/internal/operations/ExecutionResponse;-><init>(Lcom/onesignal/core/internal/operations/ExecutionResult;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_e

    .line 187
    :cond_22
    new-instance v2, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    sget-object v4, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_RETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getRetryAfterSeconds()Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/onesignal/core/internal/operations/ExecutionResponse;-><init>(Lcom/onesignal/core/internal/operations/ExecutionResult;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_e
    move-object v0, v2

    :goto_f
    return-object v0

    .line 211
    :cond_23
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    sget-object v3, Lcom/onesignal/core/internal/operations/ExecutionResult;->SUCCESS:Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/onesignal/core/internal/operations/ExecutionResponse;-><init>(Lcom/onesignal/core/internal/operations/ExecutionResult;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "set-tag"

    const-string v1, "delete-tag"

    const-string v2, "set-property"

    const-string v3, "track-session-start"

    const-string v4, "track-session-end"

    const-string v5, "track-purchase"

    .line 40
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
