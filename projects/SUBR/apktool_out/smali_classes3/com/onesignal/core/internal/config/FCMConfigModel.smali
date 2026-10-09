.class public final Lcom/onesignal/core/internal/config/FCMConfigModel;
.super Lcom/onesignal/common/modeling/Model;
.source "ConfigModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R(\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR(\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR(\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onesignal/core/internal/config/FCMConfigModel;",
        "Lcom/onesignal/common/modeling/Model;",
        "parentModel",
        "parentProperty",
        "",
        "(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V",
        "value",
        "apiKey",
        "getApiKey",
        "()Ljava/lang/String;",
        "setApiKey",
        "(Ljava/lang/String;)V",
        "appId",
        "getAppId",
        "setAppId",
        "projectId",
        "getProjectId",
        "setProjectId",
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
.method public constructor <init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 1

    const-string v0, "parentModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/onesignal/common/modeling/Model;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getApiKey()Ljava/lang/String;
    .locals 2

    .line 423
    sget-object v0, Lcom/onesignal/core/internal/config/FCMConfigModel$apiKey$2;->INSTANCE:Lcom/onesignal/core/internal/config/FCMConfigModel$apiKey$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "apiKey"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/FCMConfigModel;->getOptStringProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 2

    .line 414
    sget-object v0, Lcom/onesignal/core/internal/config/FCMConfigModel$appId$2;->INSTANCE:Lcom/onesignal/core/internal/config/FCMConfigModel$appId$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "appId"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/FCMConfigModel;->getOptStringProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProjectId()Ljava/lang/String;
    .locals 2

    .line 405
    sget-object v0, Lcom/onesignal/core/internal/config/FCMConfigModel$projectId$2;->INSTANCE:Lcom/onesignal/core/internal/config/FCMConfigModel$projectId$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "projectId"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/FCMConfigModel;->getOptStringProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setApiKey(Ljava/lang/String;)V
    .locals 7

    .line 425
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "apiKey"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 7

    .line 416
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "appId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setProjectId(Ljava/lang/String;)V
    .locals 7

    .line 407
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "projectId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
