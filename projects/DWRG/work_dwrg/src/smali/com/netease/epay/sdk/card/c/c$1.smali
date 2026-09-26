.class Lcom/netease/epay/sdk/card/c/c$1;
.super Ljava/lang/Object;
.source "AddCardMustSetPwdPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/ui/c;Lcom/netease/epay/sdk/base/view/SendSmsButton;Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)Z
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
    .line 48
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/c$1;->b:Lcom/netease/epay/sdk/card/c/c;

    iput-object p2, p0, Lcom/netease/epay/sdk/card/c/c$1;->a:Lcom/netease/epay/sdk/card/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$1;->b:Lcom/netease/epay/sdk/card/c/c;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/c$1;->a:Lcom/netease/epay/sdk/card/ui/c;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/c/c;Lcom/netease/epay/sdk/card/ui/c;)V

    .line 52
    return-void
.end method
