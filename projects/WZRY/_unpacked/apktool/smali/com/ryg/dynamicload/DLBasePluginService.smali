.class public Lcom/ryg/dynamicload/DLBasePluginService;
.super Landroid/app/Service;
.source "DLBasePluginService.java"

# interfaces
.implements Lcom/ryg/dynamicload/DLServicePlugin;


# static fields
.field public static final TAG:Ljava/lang/String; = "DLBasePluginService"


# instance fields
.field protected mFrom:I

.field private mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field public that:Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-object p0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->that:Landroid/app/Service;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mFrom:I

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Service;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V
    .locals 3
    .param p1, "proxyService"    # Landroid/app/Service;
    .param p2, "pluginPackage"    # Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .prologue
    .line 40
    const-string v0, "DLBasePluginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLBasePluginService attach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/ryg/dynamicload/DLBasePluginService;->that:Landroid/app/Service;

    .line 42
    iput-object p2, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mFrom:I

    .line 44
    return-void
.end method

.method protected isInternalCall()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginService;->mFrom:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onBind"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 79
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onCreate"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onDestroy"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onLowMemory"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onRebind"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 66
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onStartCommand"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 111
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onTaskRemoved"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 91
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onTrimMemory"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v0, "DLBasePluginService"

    const-string v1, "DLBasePluginService onUnbind"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method
