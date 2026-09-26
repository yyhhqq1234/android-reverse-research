.class Lcom/netease/epay/sdk/pay/ui/card/b$2;
.super Ljava/lang/Object;
.source "AddCard2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/b;->a(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/b$2;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$2;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$2;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/i;->b()V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$2;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
