.class public Lcom/tencent/component/app/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x4
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field private mApplication:Landroid/app/Application;

.field protected mMainHandler:Landroid/os/Handler;

.field private mMainThread:Ljava/lang/Thread;

.field private volatile mNotifyToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mMainThread:Ljava/lang/Thread;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/app/BaseFragment;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/app/BaseFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->obtainNotifyToast()Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private isBaseApplication()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    instance-of v0, v0, Lcom/tencent/component/app/BaseApplication;

    return v0
.end method

.method private obtainNotifyToast()Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mNotifyToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mNotifyToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mNotifyToast:Landroid/widget/Toast;

    .line 200
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mNotifyToast:Landroid/widget/Toast;

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 221
    :goto_0
    return v1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 213
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    :cond_1
    const-string v2, "BaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recevie service callback but activity is null or finished!("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    :cond_3
    const-string v2, "BaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recevie service callback but fragment is isRemoving or isDetached!("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p0, p1}, Lcom/tencent/component/app/BaseFragment;->handleMessageLogic(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected handleMessageLogic(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public final isMainThread()Z
    .locals 2
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mMainThread:Ljava/lang/Thread;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentActivityCreatedInner(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentOnActivityResultInner(Landroid/support/v4/app/Fragment;IILandroid/content/Intent;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    .line 39
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentAttachedInner(Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentCreatedInner(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 101
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentDestroyedInner(Landroid/support/v4/app/Fragment;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 110
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentDetachedInner(Landroid/support/v4/app/Fragment;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 76
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentPausedInner(Landroid/support/v4/app/Fragment;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentResumedInner(Landroid/support/v4/app/Fragment;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentSaveInstanceStateInner(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 60
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentStartedInner(Landroid/support/v4/app/Fragment;)V

    .line 63
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 84
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->isBaseApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/tencent/component/app/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/tencent/component/app/BaseApplication;->dispatchFragmentStoppedInner(Landroid/support/v4/app/Fragment;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tencent/component/app/BaseFragment;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public showNotifyMessage(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 158
    const/16 v0, 0x51

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/app/BaseFragment;->showNotifyMessage(II)V

    .line 159
    return-void
.end method

.method public showNotifyMessage(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "gravity"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/tencent/component/app/BaseFragment;->showNotifyMessage(Ljava/lang/String;I)V

    .line 169
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/component/app/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showNotifyMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 163
    const/16 v0, 0x51

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/app/BaseFragment;->showNotifyMessage(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public showNotifyMessage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "gravity"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/app/BaseFragment;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;->obtainNotifyToast()Landroid/widget/Toast;

    move-result-object v0

    .line 178
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 180
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 182
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_2
    new-instance v1, Lcom/tencent/component/app/BaseFragment$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/component/app/BaseFragment$1;-><init>(Lcom/tencent/component/app/BaseFragment;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/tencent/component/app/BaseFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
