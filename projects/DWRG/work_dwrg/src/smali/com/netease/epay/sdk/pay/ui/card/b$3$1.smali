.class Lcom/netease/epay/sdk/pay/ui/card/b$3$1;
.super Ljava/lang/Object;
.source "AddCard2Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/b$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/b$3;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/b$3;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mmyy"    # Ljava/lang/String;
    .param p2, "yymm"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/b$3;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/b$3;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iput-object p2, v0, Lcom/netease/epay/sdk/pay/ui/card/b;->d:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/b$3;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/b$3;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b$3;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/b$3;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method
