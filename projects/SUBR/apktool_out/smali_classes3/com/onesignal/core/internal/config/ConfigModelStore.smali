.class public Lcom/onesignal/core/internal/config/ConfigModelStore;
.super Lcom/onesignal/common/modeling/SingletonModelStore;
.source "ConfigModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onesignal/common/modeling/SingletonModelStore<",
        "Lcom/onesignal/core/internal/config/ConfigModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "Lcom/onesignal/common/modeling/SingletonModelStore;",
        "Lcom/onesignal/core/internal/config/ConfigModel;",
        "prefs",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V",
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
    .locals 3

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/onesignal/common/modeling/SimpleModelStore;

    sget-object v1, Lcom/onesignal/core/internal/config/ConfigModelStore$1;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModelStore$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "config"

    invoke-direct {v0, v1, v2, p1}, Lcom/onesignal/common/modeling/SimpleModelStore;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;)V

    check-cast v0, Lcom/onesignal/common/modeling/ModelStore;

    .line 7
    invoke-direct {p0, v0}, Lcom/onesignal/common/modeling/SingletonModelStore;-><init>(Lcom/onesignal/common/modeling/ModelStore;)V

    return-void
.end method
