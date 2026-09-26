.class Lcom/netease/epay/sdk/ResponseParser$2$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/ResponseParser$2;->rightClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/ResponseParser$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/ResponseParser$2;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/netease/epay/sdk/ResponseParser$2$1;->a:Lcom/netease/epay/sdk/ResponseParser$2;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 3
    .param p1, "result"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 94
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$2$1;->a:Lcom/netease/epay/sdk/ResponseParser$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/ResponseParser$2;->c:Lcom/netease/epay/sdk/base/network/INetCallback;

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$2$1;->a:Lcom/netease/epay/sdk/ResponseParser$2;

    iget-object v1, v1, Lcom/netease/epay/sdk/ResponseParser$2;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/ResponseParser$2$1;->a:Lcom/netease/epay/sdk/ResponseParser$2;

    iget-object v2, v2, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-interface {v0, v1, v2}, Lcom/netease/epay/sdk/base/network/INetCallback;->onLaterDeal(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
