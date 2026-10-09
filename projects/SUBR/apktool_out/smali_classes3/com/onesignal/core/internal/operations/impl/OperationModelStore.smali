.class public final Lcom/onesignal/core/internal/operations/impl/OperationModelStore;
.super Lcom/onesignal/common/modeling/ModelStore;
.source "OperationModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onesignal/common/modeling/ModelStore<",
        "Lcom/onesignal/core/internal/operations/Operation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/core/internal/operations/impl/OperationModelStore;",
        "Lcom/onesignal/common/modeling/ModelStore;",
        "Lcom/onesignal/core/internal/operations/Operation;",
        "prefs",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V",
        "create",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "isValidOperation",
        "",
        "loadOperations",
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


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operations"

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/onesignal/common/modeling/ModelStore;-><init>(Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;)V

    return-void
.end method

.method private final isValidOperation(Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "name"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string p1, "jsonObject must have \'name\' attribute"

    .line 81
    invoke-static {p1, v4, v3, v4}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    .line 85
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "login-user"

    const-string v5, "login-user-from-subscription"

    .line 90
    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v5, "onesignalId"

    .line 94
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " jsonObject must have \'onesignalId\' attribute"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v3, v4}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic create(Lorg/json/JSONObject;)Lcom/onesignal/common/modeling/Model;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/onesignal/core/internal/operations/impl/OperationModelStore;->create(Lorg/json/JSONObject;)Lcom/onesignal/core/internal/operations/Operation;

    move-result-object p1

    check-cast p1, Lcom/onesignal/common/modeling/Model;

    return-object p1
.end method

.method public create(Lorg/json/JSONObject;)Lcom/onesignal/core/internal/operations/Operation;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "null jsonObject sent to OperationModelStore.create"

    const/4 v1, 0x2

    .line 37
    invoke-static {p1, v0, v1, v0}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lcom/onesignal/core/internal/operations/impl/OperationModelStore;->isValidOperation(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "name"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "track-session-start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    new-instance v0, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "set-tag"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    new-instance v0, Lcom/onesignal/user/internal/operations/SetTagOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/SetTagOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "track-session-end"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v0, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "delete-tag"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    new-instance v0, Lcom/onesignal/user/internal/operations/DeleteTagOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/DeleteTagOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "transfer-subscription"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    new-instance v0, Lcom/onesignal/user/internal/operations/TransferSubscriptionOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/TransferSubscriptionOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "create-subscription"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    new-instance v0, Lcom/onesignal/user/internal/operations/CreateSubscriptionOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/CreateSubscriptionOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "login-user-from-subscription"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    new-instance v0, Lcom/onesignal/user/internal/operations/LoginUserFromSubscriptionOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/LoginUserFromSubscriptionOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "refresh-user"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    new-instance v0, Lcom/onesignal/user/internal/operations/RefreshUserOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/RefreshUserOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "set-alias"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    new-instance v0, Lcom/onesignal/user/internal/operations/SetAliasOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/SetAliasOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto :goto_0

    :sswitch_9
    const-string v1, "update-subscription"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    new-instance v0, Lcom/onesignal/user/internal/operations/UpdateSubscriptionOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/UpdateSubscriptionOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto :goto_0

    :sswitch_a
    const-string v1, "delete-subscription"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    new-instance v0, Lcom/onesignal/user/internal/operations/DeleteSubscriptionOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/DeleteSubscriptionOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto :goto_0

    :sswitch_b
    const-string v1, "set-property"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    new-instance v0, Lcom/onesignal/user/internal/operations/SetPropertyOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/SetPropertyOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto :goto_0

    :sswitch_c
    const-string v1, "track-purchase"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v0, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/TrackPurchaseOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto :goto_0

    :sswitch_d
    const-string v1, "login-user"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    new-instance v0, Lcom/onesignal/user/internal/operations/LoginUserOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/LoginUserOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    goto :goto_0

    :sswitch_e
    const-string v1, "delete-alias"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    new-instance v0, Lcom/onesignal/user/internal/operations/DeleteAliasOperation;

    invoke-direct {v0}, Lcom/onesignal/user/internal/operations/DeleteAliasOperation;-><init>()V

    check-cast v0, Lcom/onesignal/core/internal/operations/Operation;

    .line 67
    :goto_0
    invoke-virtual {v0, p1}, Lcom/onesignal/core/internal/operations/Operation;->initializeFromJson(Lorg/json/JSONObject;)V

    return-object v0

    .line 63
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f33fc52 -> :sswitch_e
        -0x6aeaa851 -> :sswitch_d
        -0x5fc424bd -> :sswitch_c
        -0x46db8d20 -> :sswitch_b
        -0x40623a01 -> :sswitch_a
        -0x31636c5f -> :sswitch_9
        -0x1ec4eadb -> :sswitch_8
        -0x580f483 -> :sswitch_7
        0x1fbed3c2 -> :sswitch_6
        0x326f564e -> :sswitch_5
        0x65bf3bbf -> :sswitch_4
        0x691bec78 -> :sswitch_3
        0x6e6aafa2 -> :sswitch_2
        0x763eefaf -> :sswitch_1
        0x7f455569 -> :sswitch_0
    .end sparse-switch
.end method

.method public final loadOperations()V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/onesignal/core/internal/operations/impl/OperationModelStore;->load()V

    return-void
.end method
