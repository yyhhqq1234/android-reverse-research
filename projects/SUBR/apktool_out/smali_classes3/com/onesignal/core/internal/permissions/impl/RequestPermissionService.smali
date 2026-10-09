.class public final Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;
.super Ljava/lang/Object;
.source "RequestPermissionService.kt"

# interfaces
.implements Lcom/onesignal/core/internal/permissions/IRequestPermissionService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0017\u001a\u00020\u0007J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J0\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00072\n\u0010\u001f\u001a\u0006\u0012\u0002\u0008\u00030 H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0005\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;",
        "Lcom/onesignal/core/internal/permissions/IRequestPermissionService;",
        "_application",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;)V",
        "callbackMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;",
        "Lkotlin/collections/HashMap;",
        "fallbackToSettings",
        "",
        "getFallbackToSettings",
        "()Z",
        "setFallbackToSettings",
        "(Z)V",
        "shouldShowRequestPermissionRationaleBeforeRequest",
        "getShouldShowRequestPermissionRationaleBeforeRequest",
        "setShouldShowRequestPermissionRationaleBeforeRequest",
        "waiting",
        "getWaiting",
        "setWaiting",
        "getCallback",
        "permissionType",
        "registerAsCallback",
        "",
        "callback",
        "startPrompt",
        "fallbackCondition",
        "permissionRequestType",
        "androidPermissionString",
        "callbackClass",
        "Ljava/lang/Class;",
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
.field private final _application:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final callbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackToSettings:Z

.field private shouldShowRequestPermissionRationaleBeforeRequest:Z

.field private waiting:Z


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;)V
    .locals 1

    const-string v0, "_application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->callbackMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$get_application$p(Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;)Lcom/onesignal/core/internal/application/IApplicationService;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    return-object p0
.end method


# virtual methods
.method public final getCallback(Ljava/lang/String;)Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;
    .locals 1

    const-string v0, "permissionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->callbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;

    return-object p1
.end method

.method public final getFallbackToSettings()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->fallbackToSettings:Z

    return v0
.end method

.method public final getShouldShowRequestPermissionRationaleBeforeRequest()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->shouldShowRequestPermissionRationaleBeforeRequest:Z

    return v0
.end method

.method public final getWaiting()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->waiting:Z

    return v0
.end method

.method public registerAsCallback(Ljava/lang/String;Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;)V
    .locals 1

    const-string v0, "permissionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->callbackMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setFallbackToSettings(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->fallbackToSettings:Z

    return-void
.end method

.method public final setShouldShowRequestPermissionRationaleBeforeRequest(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->shouldShowRequestPermissionRationaleBeforeRequest:Z

    return-void
.end method

.method public final setWaiting(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->waiting:Z

    return-void
.end method

.method public startPrompt(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "callbackClass"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->waiting:Z

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->fallbackToSettings:Z

    .line 47
    iget-object p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 48
    new-instance v0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;-><init>(Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    check-cast v0, Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;

    .line 47
    invoke-interface {p1, v0}, Lcom/onesignal/core/internal/application/IApplicationService;->addActivityLifecycleHandler(Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;)V

    return-void
.end method
