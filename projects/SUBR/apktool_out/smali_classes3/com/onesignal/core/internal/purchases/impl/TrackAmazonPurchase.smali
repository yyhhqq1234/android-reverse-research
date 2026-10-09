.class public final Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;
.super Ljava/lang/Object;
.source "TrackAmazonPurchase.kt"

# interfaces
.implements Lcom/onesignal/core/internal/startup/IStartableService;
.implements Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;,
        Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u001f2\u00020\u00012\u00020\u0002:\u0002\u001f B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0014\u0010\u0015\u001a\u00020\u00162\n\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\rH\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0018\u00010\u0013R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;",
        "Lcom/onesignal/core/internal/startup/IStartableService;",
        "Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_operationRepo",
        "Lcom/onesignal/core/internal/operations/IOperationRepo;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "_identityModelStore",
        "Lcom/onesignal/user/internal/identity/IdentityModelStore;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;)V",
        "canTrack",
        "",
        "listenerHandlerField",
        "Ljava/lang/reflect/Field;",
        "listenerHandlerObject",
        "",
        "osPurchasingListener",
        "Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;",
        "registerListenerOnMainThread",
        "logAmazonIAPListenerError",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onFocus",
        "firedOnSubscribe",
        "onUnfocused",
        "setListener",
        "start",
        "Companion",
        "OSPurchasingListener",
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
.field public static final Companion:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$Companion;


# instance fields
.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final _identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

.field private final _operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

.field private canTrack:Z

.field private listenerHandlerField:Ljava/lang/reflect/Field;

.field private listenerHandlerObject:Ljava/lang/Object;

.field private osPurchasingListener:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;

.field private registerListenerOnMainThread:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->Companion:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_operationRepo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_identityModelStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 52
    iput-object p2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    .line 53
    iput-object p3, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 54
    iput-object p4, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    return-void
.end method

.method public static final synthetic access$getOsPurchasingListener$p(Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;)Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;

    return-object p0
.end method

.method public static final synthetic access$get_applicationService$p(Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;)Lcom/onesignal/core/internal/application/IApplicationService;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    return-object p0
.end method

.method private final logAmazonIAPListenerError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Error adding Amazon IAP listener."

    .line 114
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/onesignal/debug/internal/logging/Logging;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private final setListener()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->registerListenerOnMainThread:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$setListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$setListener$1;-><init>(Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/onesignal/common/threading/ThreadUtilsKt;->suspendifyOnMain(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;

    check-cast v1, Lcom/amazon/device/iap/PurchasingListener;

    invoke-static {v0, v1}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFocus(Z)V
    .locals 0

    return-void
.end method

.method public onUnfocused()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->canTrack:Z

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/PurchasingListener;

    .line 125
    iget-object v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;

    if-eq v0, v1, :cond_1

    .line 126
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;->setOrgPurchasingListener(Lcom/amazon/device/iap/PurchasingListener;)V

    .line 127
    invoke-direct {p0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->setListener()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 6

    .line 65
    sget-object v0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->Companion:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$Companion;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$Companion;->canTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.amazon.device.iap.internal.d"

    .line 71
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "d"

    new-array v5, v3, [Ljava/lang/Class;

    .line 74
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v4, "e"

    new-array v5, v3, [Ljava/lang/Class;

    .line 79
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    .line 80
    iput-boolean v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->registerListenerOnMainThread:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    :try_start_3
    const-string v4, "g"

    new-array v5, v3, [Ljava/lang/Class;

    .line 83
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    .line 84
    iput-boolean v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->registerListenerOnMainThread:Z

    :goto_0
    const-string v1, "f"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    new-instance v1, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;

    iget-object v3, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    iget-object v4, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    iget-object v5, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;-><init>(Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;)V

    iput-object v1, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->osPurchasingListener:Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;

    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->listenerHandlerObject:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/iap/PurchasingListener;

    invoke-virtual {v1, v3}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase$OSPurchasingListener;->setOrgPurchasingListener(Lcom/amazon/device/iap/PurchasingListener;)V

    .line 92
    iput-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->listenerHandlerField:Ljava/lang/reflect/Field;

    .line 93
    iput-boolean v2, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->canTrack:Z

    .line 94
    invoke-direct {p0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->setListener()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 107
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 105
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 103
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_5
    move-exception v0

    .line 101
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_6
    move-exception v0

    .line 99
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_7
    move-exception v0

    .line 97
    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->logAmazonIAPListenerError(Ljava/lang/Exception;)V

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/onesignal/core/internal/purchases/impl/TrackAmazonPurchase;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    move-object v1, p0

    check-cast v1, Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;

    invoke-interface {v0, v1}, Lcom/onesignal/core/internal/application/IApplicationService;->addApplicationLifecycleHandler(Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;)V

    return-void
.end method
