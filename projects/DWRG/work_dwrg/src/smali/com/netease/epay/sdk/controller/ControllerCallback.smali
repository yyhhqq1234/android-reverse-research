.class public abstract Lcom/netease/epay/sdk/controller/ControllerCallback;
.super Ljava/lang/Object;
.source "ControllerCallback.java"


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end method

.method removeSelf()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/controller/ControllerCallback;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->removeController(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 0
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;->removeSelf()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 20
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netease/epay/sdk/controller/ControllerCallback;->key:Ljava/lang/String;

    .line 24
    return-void
.end method
