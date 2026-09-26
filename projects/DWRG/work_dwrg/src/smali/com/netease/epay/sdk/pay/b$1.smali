.class Lcom/netease/epay/sdk/pay/b$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "PayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/b;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/pay/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/b;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/b$1;->b:Lcom/netease/epay/sdk/pay/b;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/b$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 65
    .local p0, "this":Lcom/netease/epay/sdk/pay/b$1;, "Lcom/netease/epay/sdk/pay/b$1;"
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$1;->b:Lcom/netease/epay/sdk/pay/b;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/b$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/b;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 66
    return-void
.end method
