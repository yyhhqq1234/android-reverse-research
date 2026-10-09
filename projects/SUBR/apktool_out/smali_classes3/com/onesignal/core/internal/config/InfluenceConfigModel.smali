.class public final Lcom/onesignal/core/internal/config/InfluenceConfigModel;
.super Lcom/onesignal/common/modeling/Model;
.source "ConfigModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/core/internal/config/InfluenceConfigModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R$\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR$\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R$\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R$\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\n\"\u0004\u0008\u001e\u0010\u000c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onesignal/core/internal/config/InfluenceConfigModel;",
        "Lcom/onesignal/common/modeling/Model;",
        "parentModel",
        "parentProperty",
        "",
        "(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V",
        "value",
        "",
        "iamLimit",
        "getIamLimit",
        "()I",
        "setIamLimit",
        "(I)V",
        "indirectIAMAttributionWindow",
        "getIndirectIAMAttributionWindow",
        "setIndirectIAMAttributionWindow",
        "indirectNotificationAttributionWindow",
        "getIndirectNotificationAttributionWindow",
        "setIndirectNotificationAttributionWindow",
        "",
        "isDirectEnabled",
        "()Z",
        "setDirectEnabled",
        "(Z)V",
        "isIndirectEnabled",
        "setIndirectEnabled",
        "isUnattributedEnabled",
        "setUnattributedEnabled",
        "notificationLimit",
        "getNotificationLimit",
        "setNotificationLimit",
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
.field public static final Companion:Lcom/onesignal/core/internal/config/InfluenceConfigModel$Companion;

.field public static final DEFAULT_INDIRECT_ATTRIBUTION_WINDOW:I = 0x5a0

.field public static final DEFAULT_NOTIFICATION_LIMIT:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/core/internal/config/InfluenceConfigModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->Companion:Lcom/onesignal/core/internal/config/InfluenceConfigModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 1

    const-string v0, "parentModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/onesignal/common/modeling/Model;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getIamLimit()I
    .locals 2

    .line 359
    sget-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$iamLimit$2;->INSTANCE:Lcom/onesignal/core/internal/config/InfluenceConfigModel$iamLimit$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "iamLimit"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getIntProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    return v0
.end method

.method public final getIndirectIAMAttributionWindow()I
    .locals 2

    .line 350
    sget-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$indirectIAMAttributionWindow$2;->INSTANCE:Lcom/onesignal/core/internal/config/InfluenceConfigModel$indirectIAMAttributionWindow$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "indirectIAMAttributionWindow"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getIntProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    return v0
.end method

.method public final getIndirectNotificationAttributionWindow()I
    .locals 2

    .line 332
    sget-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$indirectNotificationAttributionWindow$2;->INSTANCE:Lcom/onesignal/core/internal/config/InfluenceConfigModel$indirectNotificationAttributionWindow$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "indirectNotificationAttributionWindow"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getIntProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    return v0
.end method

.method public final getNotificationLimit()I
    .locals 2

    .line 341
    sget-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$notificationLimit$2;->INSTANCE:Lcom/onesignal/core/internal/config/InfluenceConfigModel$notificationLimit$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "notificationLimit"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getIntProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    return v0
.end method

.method public final isDirectEnabled()Z
    .locals 2

    .line 368
    sget-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$isDirectEnabled$2;->INSTANCE:Lcom/onesignal/core/internal/config/InfluenceConfigModel$isDirectEnabled$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "isDirectEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final isIndirectEnabled()Z
    .locals 2

    .line 377
    sget-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$isIndirectEnabled$2;->INSTANCE:Lcom/onesignal/core/internal/config/InfluenceConfigModel$isIndirectEnabled$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "isIndirectEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final isUnattributedEnabled()Z
    .locals 2

    .line 386
    sget-object v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel$isUnattributedEnabled$2;->INSTANCE:Lcom/onesignal/core/internal/config/InfluenceConfigModel$isUnattributedEnabled$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "isUnattributedEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final setDirectEnabled(Z)V
    .locals 7

    .line 370
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "isDirectEnabled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setIamLimit(I)V
    .locals 7

    .line 361
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "iamLimit"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setIntProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setIndirectEnabled(Z)V
    .locals 7

    .line 379
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "isIndirectEnabled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setIndirectIAMAttributionWindow(I)V
    .locals 7

    .line 352
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "indirectIAMAttributionWindow"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setIntProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setIndirectNotificationAttributionWindow(I)V
    .locals 7

    .line 334
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "indirectNotificationAttributionWindow"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setIntProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setNotificationLimit(I)V
    .locals 7

    .line 343
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "notificationLimit"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setIntProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setUnattributedEnabled(Z)V
    .locals 7

    .line 388
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "isUnattributedEnabled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
