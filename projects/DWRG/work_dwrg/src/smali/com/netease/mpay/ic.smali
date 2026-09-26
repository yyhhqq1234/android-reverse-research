.class Lcom/netease/mpay/ic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hy;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netease/mpay/hy;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->g(Lcom/netease/mpay/hy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/ic;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->g(Lcom/netease/mpay/hy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->e(Lcom/netease/mpay/hy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->f(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->a(Lcom/netease/mpay/hy;)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->j(Lcom/netease/mpay/hy;)Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/mpay/hy;->k(Lcom/netease/mpay/hy;)Lcom/netease/mpay/hy;

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->g(Lcom/netease/mpay/hy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->h(Lcom/netease/mpay/hy;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->i(Lcom/netease/mpay/hy;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->a(Lcom/netease/mpay/hy;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->e(Lcom/netease/mpay/hy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->f(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->e(Lcom/netease/mpay/hy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->f(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->e(Lcom/netease/mpay/hy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->f(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->g(Lcom/netease/mpay/hy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->h(Lcom/netease/mpay/hy;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ic;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->b(Lcom/netease/mpay/hy;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
