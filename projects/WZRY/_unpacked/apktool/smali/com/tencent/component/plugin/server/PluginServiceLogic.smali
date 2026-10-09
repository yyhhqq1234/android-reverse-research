.class public final Lcom/tencent/component/plugin/server/PluginServiceLogic;
.super Ljava/lang/Object;
.source "PluginServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;
    }
.end annotation


# static fields
.field private static final ARGS_PLATFORM_ID:Ljava/lang/String; = "platformId"

.field private static final PLUGIN_SERVICE_ACTION:Ljava/lang/String; = "com.tencent.component.plugin.server.PluginService"

.field private static final TAG:Ljava/lang/String; = "PlguinService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool;

    const-string v1, "plugin-server-pool"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/component/utils/thread/ThreadPool;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic;->mThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;

    .line 39
    return-void
.end method

.method public static bindPluginService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Landroid/content/ServiceConnection;
    .param p2, "platformId"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.component.plugin.server.PluginService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "platformId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 57
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const-string v1, "platformId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "platformId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "PlguinService"

    const-string v2, "Illeagal bind request as platformId is empty!"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;

    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic;->mThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/utils/thread/ThreadPool;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
