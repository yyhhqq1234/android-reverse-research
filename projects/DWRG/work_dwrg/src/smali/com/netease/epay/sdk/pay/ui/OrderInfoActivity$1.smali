.class Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "OrderInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->a(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->orderAmount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->b(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(\u624b\u7eed\u8d39 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->handFee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->c(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->orderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->d(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->platformName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->e(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->f(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->orderTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->g(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->behavior:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->h(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->userNotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->i(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->orderStatusDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;)V

    return-void
.end method
