.class Lcom/netease/epay/sdk/core/b$6$1$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/b$6$1;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/b$6$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/b$6$1;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/netease/epay/sdk/core/b$6$1$1;->a:Lcom/netease/epay/sdk/core/b$6$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 3
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netease/epay/sdk/core/b$6$1$1;->a:Lcom/netease/epay/sdk/core/b$6$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/b$6$1;->a:Lcom/netease/epay/sdk/core/b$6;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/b$6;->b:Landroid/content/Context;

    const/4 v1, 0x1

    sget v2, Lcom/netease/epay/sdk/messenger/R$string;->epaysdk_sdk_ver_suc:I

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZI)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;->show()V

    .line 195
    invoke-static {}, Lcom/netease/epay/sdk/ExitUtil;->successCallback()V

    .line 196
    return-void
.end method
