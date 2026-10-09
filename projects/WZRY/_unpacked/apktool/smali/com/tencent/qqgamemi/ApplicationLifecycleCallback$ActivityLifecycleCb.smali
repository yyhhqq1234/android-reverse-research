.class final Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;
.super Ljava/lang/Object;
.source "ApplicationLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityLifecycleCb"
.end annotation


# instance fields
.field private gameActivity:Landroid/app/Activity;

.field private gameActivityName:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isForeground:Z

.field private onPausedRunnable:Ljava/lang/Runnable;

.field private onResumedRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->gameActivity:Landroid/app/Activity;

    .line 69
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->gameActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->gameActivityName:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityLifecycleCb gameActivityName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->gameActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->isForeground:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->handler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$1;-><init>(Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onPausedRunnable:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb$2;-><init>(Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onResumedRunnable:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->isForeground:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->isForeground:Z

    return p1
.end method

.method private isFilterActivity(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->gameActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final detach()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onResumedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onPausedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/Activity;
    .param p2, "var2"    # Landroid/os/Bundle;

    .prologue
    .line 96
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 99
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-static {}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onActivityPaused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->isFilterActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onResumedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onPausedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->isFilterActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onActivityResumed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onPausedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback$ActivityLifecycleCb;->onResumedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/Activity;
    .param p2, "var2"    # Landroid/os/Bundle;

    .prologue
    .line 116
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 119
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 122
    invoke-static {}, Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onActivityStopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
