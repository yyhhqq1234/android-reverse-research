.class public final Lcom/onesignal/core/internal/device/impl/InstallIdService;
.super Ljava/lang/Object;
.source "InstallIdService.kt"

# interfaces
.implements Lcom/onesignal/core/internal/device/IInstallIdService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u000b\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/core/internal/device/impl/InstallIdService;",
        "Lcom/onesignal/core/internal/device/IInstallIdService;",
        "_prefs",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V",
        "currentId",
        "Ljava/util/UUID;",
        "getCurrentId",
        "()Ljava/util/UUID;",
        "currentId$delegate",
        "Lkotlin/Lazy;",
        "getId",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final _prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

.field private final currentId$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/preferences/IPreferencesService;)V
    .locals 1

    const-string v0, "_prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/onesignal/core/internal/device/impl/InstallIdService;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    .line 19
    new-instance p1, Lcom/onesignal/core/internal/device/impl/InstallIdService$currentId$2;

    invoke-direct {p1, p0}, Lcom/onesignal/core/internal/device/impl/InstallIdService$currentId$2;-><init>(Lcom/onesignal/core/internal/device/impl/InstallIdService;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/core/internal/device/impl/InstallIdService;->currentId$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$get_prefs$p(Lcom/onesignal/core/internal/device/impl/InstallIdService;)Lcom/onesignal/core/internal/preferences/IPreferencesService;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/onesignal/core/internal/device/impl/InstallIdService;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    return-object p0
.end method

.method private final getCurrentId()Ljava/util/UUID;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/onesignal/core/internal/device/impl/InstallIdService;->currentId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-currentId>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public getId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/onesignal/core/internal/device/impl/InstallIdService;->getCurrentId()Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method
