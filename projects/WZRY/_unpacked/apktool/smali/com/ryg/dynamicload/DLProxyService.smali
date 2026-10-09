.class public Lcom/ryg/dynamicload/DLProxyService;
.super Landroid/app/Service;
.source "DLProxyService.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLServiceAttachable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLProxyService"


# instance fields
.field private mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

.field private mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field private mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    new-instance v0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    return-void
.end method


# virtual methods
.method public attach(Lcom/ryg/dynamicload/DLServicePlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V
    .locals 0
    .param p1, "remoteService"    # Lcom/ryg/dynamicload/DLServicePlugin;
    .param p2, "pluginManager"    # Lcom/ryg/dynamicload/internal/DLPluginManager;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    .line 116
    iput-object p2, p0, Lcom/ryg/dynamicload/DLProxyService;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 117
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->init(Landroid/content/Intent;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLServicePlugin;->onDestroy()V

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLServicePlugin;->onLowMemory()V

    .line 79
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 80
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onRebind(Landroid/content/Intent;)V

    .line 101
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mImpl:Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->init(Landroid/content/Intent;)V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 57
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/ryg/dynamicload/DLServicePlugin;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .param p1, "rootIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onTaskRemoved(Landroid/content/Intent;)V

    .line 109
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onTrimMemory(I)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 88
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 94
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyService;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLServicePlugin;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
