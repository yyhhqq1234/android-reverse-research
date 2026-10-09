.class public abstract Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;
.super Landroid/app/Activity;
.source "MSDKViewPanel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onViewCreate()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method_on_view_create"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private onViewDestory()V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method_on_view_destroy"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private onViewResume()V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method_on_view_resume"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private onViewStop()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method_on_view_stop"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public abstract finishView()V
.end method

.method public abstract getViewName()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->addView(Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;)Z

    .line 24
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onViewCreate()V

    .line 25
    return-void
.end method

.method protected onCreateNotAddView(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onViewCreate()V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 47
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->removeView(Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;)Z

    .line 48
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onViewDestory()V

    .line 49
    return-void
.end method

.method protected onDestroyNotRemoveView()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 53
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onViewDestory()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onViewResume()V

    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 41
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onViewStop()V

    .line 42
    return-void
.end method

.method public abstract recvEvent(Ljava/lang/String;)V
.end method

.method public sendEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->getViewName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method_send_event"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
