.class public Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore;
.super Lcom/onesignal/common/modeling/SimpleModelStore;
.source "TriggerModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onesignal/common/modeling/SimpleModelStore<",
        "Lcom/onesignal/inAppMessages/internal/triggers/TriggerModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore;",
        "Lcom/onesignal/common/modeling/SimpleModelStore;",
        "Lcom/onesignal/inAppMessages/internal/triggers/TriggerModel;",
        "()V",
        "com.onesignal.inAppMessages"
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
.method public constructor <init>()V
    .locals 7

    .line 5
    sget-object v0, Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore$1;->INSTANCE:Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore$1;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/onesignal/common/modeling/SimpleModelStore;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
