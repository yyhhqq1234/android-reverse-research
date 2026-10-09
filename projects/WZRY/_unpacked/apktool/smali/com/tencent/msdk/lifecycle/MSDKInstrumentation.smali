.class public Lcom/tencent/msdk/lifecycle/MSDKInstrumentation;
.super Landroid/app/Instrumentation;
.source "MSDKInstrumentation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 21
    const-string v0, "Lifecycle callActivityOnCreate"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 23
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LifeCycle_OnCreate"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 25
    :cond_0
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    const-string v0, "Lifecycle callActivityOnDestroy"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 40
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LifeCycle_OnDestroy"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 43
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 29
    const-string v0, "Lifecycle callActivityOnPause"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->onPausedAdd(Z)V

    .line 32
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->handlerOnPause()V

    .line 33
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const-string v1, "LifeCycle_OnPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 35
    :cond_0
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 47
    const-string v0, "Lifecycle callActivityOnResume"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 49
    invoke-static {}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->onResumeAdd(Z)V

    .line 50
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->handlerOnResume()V

    .line 51
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const-string v1, "LifeCycle_OnResume"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 53
    :cond_0
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 57
    const-string v0, "Lifecycle callActivityOnStart"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 59
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LifeCycle_OnStart"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 61
    :cond_0
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 65
    const-string v0, "Lifecycle callActivityOnStop"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 67
    invoke-static {}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->onStoppedAdd(Z)V

    .line 68
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->handlerOnStop()V

    .line 69
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const-string v1, "LifeCycle_OnStop"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 71
    :cond_0
    return-void
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v0, "Lifecycle finish"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    .line 77
    return-void
.end method
