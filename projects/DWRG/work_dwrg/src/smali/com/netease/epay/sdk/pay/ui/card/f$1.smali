.class Lcom/netease/epay/sdk/pay/ui/card/f$1;
.super Ljava/lang/Object;
.source "AddCardMustSetPwdPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/pay/ui/card/c;Lcom/netease/epay/sdk/base/view/SendSmsButton;Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)Z
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
    .line 46
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/f$1;->b:Lcom/netease/epay/sdk/pay/ui/card/f;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/card/f$1;->a:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f$1;->b:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/f$1;->a:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/pay/ui/card/f;Lcom/netease/epay/sdk/pay/ui/card/c;)V

    .line 50
    return-void
.end method
