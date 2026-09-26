.class public abstract Lcom/netease/epay/sdk/controller/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/netease/epay/sdk/base/event/BaseEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public callback:Lcom/netease/epay/sdk/controller/ControllerCallback;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 0
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;

    .prologue
    .line 18
    .local p0, "this":Lcom/netease/epay/sdk/controller/BaseController;, "Lcom/netease/epay/sdk/controller/BaseController<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/netease/epay/sdk/controller/BaseController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    .line 20
    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/netease/epay/sdk/controller/BaseController;, "Lcom/netease/epay/sdk/controller/BaseController<TT;>;"
    .local p1, "baseEvent":Lcom/netease/epay/sdk/base/event/BaseEvent;, "TT;"
    return-void
.end method

.method protected exit(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BaseEvent;

    .prologue
    .line 33
    .local p0, "this":Lcom/netease/epay/sdk/controller/BaseController;, "Lcom/netease/epay/sdk/controller/BaseController<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/epay/sdk/controller/BaseController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected exit(Lcom/netease/epay/sdk/base/event/BaseEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BaseEvent;
    .param p2, "quickPayId"    # Ljava/lang/String;

    .prologue
    .line 37
    .local p0, "this":Lcom/netease/epay/sdk/controller/BaseController;, "Lcom/netease/epay/sdk/controller/BaseController<TT;>;"
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Lcom/netease/epay/sdk/ExitUtil;->successCallback(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected exit(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 1
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 28
    .local p0, "this":Lcom/netease/epay/sdk/controller/BaseController;, "Lcom/netease/epay/sdk/controller/BaseController<TT;>;"
    iget-object v0, p0, Lcom/netease/epay/sdk/controller/BaseController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/controller/BaseController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    goto :goto_0
.end method

.method public start(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    .local p0, "this":Lcom/netease/epay/sdk/controller/BaseController;, "Lcom/netease/epay/sdk/controller/BaseController<TT;>;"
    return-void
.end method
