.class public Lcom/netease/epay/sdk/pay/ui/a;
.super Ljava/lang/Object;
.source "ChildViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->topDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->d:Landroid/view/View;

    .line 18
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvAmount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->a:Landroid/widget/TextView;

    .line 19
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvDeadline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->b:Landroid/widget/TextView;

    .line 20
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvDesc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->c:Landroid/widget/TextView;

    .line 21
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->e:Landroid/view/View;

    .line 22
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->bottomDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->f:Landroid/view/View;

    .line 23
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->leftDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->g:Landroid/view/View;

    .line 24
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rightDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/a;->h:Landroid/view/View;

    .line 25
    return-void
.end method
