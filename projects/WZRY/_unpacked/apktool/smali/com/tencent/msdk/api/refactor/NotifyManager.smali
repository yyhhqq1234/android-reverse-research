.class public Lcom/tencent/msdk/api/refactor/NotifyManager;
.super Ljava/lang/Object;
.source "NotifyManager.java"


# static fields
.field private static groupObserver:Lcom/tencent/msdk/api/WGGroupObserver;

.field private static platformObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

.field private static realNameAuthObserver:Lcom/tencent/msdk/api/WGRealNameAuthObserver;

.field private static saveUpdateObserver:Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;

.field private static webviewObserver:Lcom/tencent/msdk/api/WGWebviewObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/tencent/msdk/api/refactor/NotifyManager;->platformObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    .line 16
    sput-object v0, Lcom/tencent/msdk/api/refactor/NotifyManager;->realNameAuthObserver:Lcom/tencent/msdk/api/WGRealNameAuthObserver;

    .line 17
    sput-object v0, Lcom/tencent/msdk/api/refactor/NotifyManager;->webviewObserver:Lcom/tencent/msdk/api/WGWebviewObserver;

    .line 18
    sput-object v0, Lcom/tencent/msdk/api/refactor/NotifyManager;->groupObserver:Lcom/tencent/msdk/api/WGGroupObserver;

    .line 19
    sput-object v0, Lcom/tencent/msdk/api/refactor/NotifyManager;->saveUpdateObserver:Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGroupObserver(Lcom/tencent/msdk/api/WGGroupObserver;)V
    .locals 0
    .param p0, "observer"    # Lcom/tencent/msdk/api/WGGroupObserver;

    .prologue
    .line 37
    sput-object p0, Lcom/tencent/msdk/api/refactor/NotifyManager;->groupObserver:Lcom/tencent/msdk/api/WGGroupObserver;

    .line 38
    invoke-static {}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setGroupObserverJni()V

    .line 39
    return-void
.end method

.method public static native setGroupObserverJni()V
.end method

.method public static setPlatformObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V
    .locals 0
    .param p0, "observer"    # Lcom/tencent/msdk/api/WGPlatformObserver;

    .prologue
    .line 22
    sput-object p0, Lcom/tencent/msdk/api/refactor/NotifyManager;->platformObserver:Lcom/tencent/msdk/api/WGPlatformObserver;

    .line 23
    invoke-static {}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setPlatformObserverJni()V

    .line 24
    return-void
.end method

.method public static native setPlatformObserverJni()V
.end method

.method public static setRealNameAuthObserver(Lcom/tencent/msdk/api/WGRealNameAuthObserver;)V
    .locals 0
    .param p0, "observer"    # Lcom/tencent/msdk/api/WGRealNameAuthObserver;

    .prologue
    .line 27
    sput-object p0, Lcom/tencent/msdk/api/refactor/NotifyManager;->realNameAuthObserver:Lcom/tencent/msdk/api/WGRealNameAuthObserver;

    .line 28
    invoke-static {}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setRealNameAuthObserverJni()V

    .line 29
    return-void
.end method

.method public static native setRealNameAuthObserverJni()V
.end method

.method public static setSaveUpdateObserver(Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;)V
    .locals 0
    .param p0, "observer"    # Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;

    .prologue
    .line 42
    sput-object p0, Lcom/tencent/msdk/api/refactor/NotifyManager;->saveUpdateObserver:Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;

    .line 43
    invoke-static {}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setSaveUpdateObserverJni()V

    .line 44
    return-void
.end method

.method public static native setSaveUpdateObserverJni()V
.end method

.method public static setWebviewObserver(Lcom/tencent/msdk/api/WGWebviewObserver;)V
    .locals 0
    .param p0, "observer"    # Lcom/tencent/msdk/api/WGWebviewObserver;

    .prologue
    .line 32
    sput-object p0, Lcom/tencent/msdk/api/refactor/NotifyManager;->webviewObserver:Lcom/tencent/msdk/api/WGWebviewObserver;

    .line 33
    invoke-static {}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setWebviewObserverJni()V

    .line 34
    return-void
.end method

.method public static native setWebviewObserverJni()V
.end method
