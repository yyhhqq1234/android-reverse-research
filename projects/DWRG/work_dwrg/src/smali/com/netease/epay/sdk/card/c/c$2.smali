.class Lcom/netease/epay/sdk/card/c/c$2;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "AddCardMustSetPwdPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/ui/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/ui/c;

.field final synthetic b:Lcom/netease/epay/sdk/card/c/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/c;Lcom/netease/epay/sdk/card/ui/c;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/c$2;->b:Lcom/netease/epay/sdk/card/c/c;

    iput-object p2, p0, Lcom/netease/epay/sdk/card/c/c$2;->a:Lcom/netease/epay/sdk/card/ui/c;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 1
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$2;->a:Lcom/netease/epay/sdk/card/ui/c;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/card/ui/c;->a(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 67
    return-void
.end method
