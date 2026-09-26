.class Lcom/netease/epay/sdk/pay/b$4$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "PayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/b$4;->rightClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/b$4;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/b$4;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/b$4$1;->a:Lcom/netease/epay/sdk/pay/b$4;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 1
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 141
    .local p0, "this":Lcom/netease/epay/sdk/pay/b$4$1;, "Lcom/netease/epay/sdk/pay/b$4$1;"
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$4$1;->a:Lcom/netease/epay/sdk/pay/b$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/b$4;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$4$1;->a:Lcom/netease/epay/sdk/pay/b$4;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/b$4;->leftClick()V

    goto :goto_0
.end method
