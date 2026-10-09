.class public final Lcom/onesignal/user/internal/operations/DeleteTagOperation;
.super Lcom/onesignal/core/internal/operations/Operation;
.source "DeleteTagOperation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u001c\u0010\u001f\u001a\u00020 2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\"H\u0016R$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R$\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\n\"\u0004\u0008\u001a\u0010\u000cR\u0014\u0010\u001b\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\nR$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00038F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\n\"\u0004\u0008\u001e\u0010\u000c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onesignal/user/internal/operations/DeleteTagOperation;",
        "Lcom/onesignal/core/internal/operations/Operation;",
        "appId",
        "",
        "onesignalId",
        "key",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "()V",
        "value",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "applyToRecordId",
        "getApplyToRecordId",
        "canStartExecute",
        "",
        "getCanStartExecute",
        "()Z",
        "createComparisonKey",
        "getCreateComparisonKey",
        "groupComparisonType",
        "Lcom/onesignal/core/internal/operations/GroupComparisonType;",
        "getGroupComparisonType",
        "()Lcom/onesignal/core/internal/operations/GroupComparisonType;",
        "getKey",
        "setKey",
        "modifyComparisonKey",
        "getModifyComparisonKey",
        "getOnesignalId",
        "setOnesignalId",
        "translateIds",
        "",
        "map",
        "",
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


# instance fields
.field private final groupComparisonType:Lcom/onesignal/core/internal/operations/GroupComparisonType;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "delete-tag"

    .line 12
    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/operations/Operation;-><init>(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/onesignal/core/internal/operations/GroupComparisonType;->ALTER:Lcom/onesignal/core/internal/operations/GroupComparisonType;

    iput-object v0, p0, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->groupComparisonType:Lcom/onesignal/core/internal/operations/GroupComparisonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onesignalId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->setAppId(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->setOnesignalId(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p3}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private final setAppId(Ljava/lang/String;)V
    .locals 7

    .line 19
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "appId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setKey(Ljava/lang/String;)V
    .locals 7

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "key"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setOnesignalId(Ljava/lang/String;)V
    .locals 7

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "onesignalId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 4

    .line 17
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "appId"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplyToRecordId()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanStartExecute()Z
    .locals 2

    .line 44
    sget-object v0, Lcom/onesignal/common/IDManager;->INSTANCE:Lcom/onesignal/common/IDManager;

    invoke-virtual {p0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/common/IDManager;->isLocalId(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCreateComparisonKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getGroupComparisonType()Lcom/onesignal/core/internal/operations/GroupComparisonType;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->groupComparisonType:Lcom/onesignal/core/internal/operations/GroupComparisonType;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 4

    .line 36
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "key"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifyComparisonKey()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".User."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnesignalId()Ljava/lang/String;
    .locals 4

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "onesignalId"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateIds(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->getOnesignalId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;->setOnesignalId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
