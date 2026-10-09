.class public Lcom/tencent/component/app/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field protected mMainHandler:Landroid/os/Handler;

.field private mMainThread:Ljava/lang/Thread;

.field private mResumed:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 18
    new-instance v0, Lcom/tencent/component/app/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/app/BaseActivity$1;-><init>(Lcom/tencent/component/app/BaseActivity;)V

    iput-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mMainThread:Ljava/lang/Thread;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/app/BaseActivity;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mMainHandler:Landroid/os/Handler;

    .line 34
    iput-boolean v3, p0, Lcom/tencent/component/app/BaseActivity;->mResumed:Z

    .line 35
    iput-boolean v3, p0, Lcom/tencent/component/app/BaseActivity;->mStarted:Z

    return-void
.end method

.method private isBaseApplication()Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/component/app/BaseApplication;

    return v0
.end method


# virtual methods
.method public final getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected handleMessageLogic(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public final isActivityResumed()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/tencent/component/app/BaseActivity;->mResumed:Z

    return v0
.end method

.method public final isActivityStarted()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/tencent/component/app/BaseActivity;->mStarted:Z

    return v0
.end method

.method public final isMainThread()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mMainThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityResultInner(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityCreatedInner(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 92
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityDestroyedInner(Landroid/app/Activity;)V

    .line 95
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/app/BaseActivity;->mResumed:Z

    .line 74
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityPausedInner(Landroid/app/Activity;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/app/BaseActivity;->mResumed:Z

    .line 54
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityResumedInner(Landroid/app/Activity;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/component/app/BaseApplication;->dispatchActivitySaveInstanceStateInner(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/app/BaseActivity;->mStarted:Z

    .line 64
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityStartedInner(Landroid/app/Activity;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/app/BaseActivity;->mStarted:Z

    .line 84
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityStoppedInner(Landroid/app/Activity;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 116
    invoke-direct {p0}, Lcom/tencent/component/app/BaseActivity;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchActivityUserLeaveHintInner(Landroid/app/Activity;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/component/app/BaseActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method
