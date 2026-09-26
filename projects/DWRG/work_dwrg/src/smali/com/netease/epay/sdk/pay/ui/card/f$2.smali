.class Lcom/netease/epay/sdk/pay/ui/card/f$2;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "AddCardMustSetPwdPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/pay/ui/card/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/c;

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/card/f;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/f;Lcom/netease/epay/sdk/pay/ui/card/c;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/f$2;->b:Lcom/netease/epay/sdk/pay/ui/card/f;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/card/f$2;->a:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 1
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f$2;->a:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/pay/ui/card/c;->a(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 65
    return-void
.end method
