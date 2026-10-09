.class final Lcom/onesignal/core/internal/device/impl/InstallIdService$currentId$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InstallIdService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/core/internal/device/impl/InstallIdService;-><init>(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/UUID;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/core/internal/device/impl/InstallIdService;


# direct methods
.method constructor <init>(Lcom/onesignal/core/internal/device/impl/InstallIdService;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/core/internal/device/impl/InstallIdService$currentId$2;->this$0:Lcom/onesignal/core/internal/device/impl/InstallIdService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/onesignal/core/internal/device/impl/InstallIdService$currentId$2;->invoke()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/UUID;
    .locals 7

    .line 20
    iget-object v0, p0, Lcom/onesignal/core/internal/device/impl/InstallIdService$currentId$2;->this$0:Lcom/onesignal/core/internal/device/impl/InstallIdService;

    invoke-static {v0}, Lcom/onesignal/core/internal/device/impl/InstallIdService;->access$get_prefs$p(Lcom/onesignal/core/internal/device/impl/InstallIdService;)Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v1

    const-string v2, "OneSignal"

    const-string v3, "PREFS_OS_INSTALL_ID"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onesignal/core/internal/preferences/IPreferencesService$DefaultImpls;->getString$default(Lcom/onesignal/core/internal/preferences/IPreferencesService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/onesignal/core/internal/device/impl/InstallIdService$currentId$2;->this$0:Lcom/onesignal/core/internal/device/impl/InstallIdService;

    invoke-static {v1}, Lcom/onesignal/core/internal/device/impl/InstallIdService;->access$get_prefs$p(Lcom/onesignal/core/internal/device/impl/InstallIdService;)Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v1

    const-string v2, "PREFS_OS_INSTALL_ID"

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OneSignal"

    invoke-interface {v1, v4, v2, v3}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
