.class Lcom/tencent/msdk/NameAuthActivity$4;
.super Ljava/lang/Object;
.source "NameAuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/NameAuthActivity;->showSelectDialog(Landroid/widget/TextView;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/NameAuthActivity;

.field final synthetic val$items:[Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/NameAuthActivity;Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/tencent/msdk/NameAuthActivity$4;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    iput-object p2, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 695
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$view:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$view:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$4;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$1600(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$4;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$2600(Lcom/tencent/msdk/NameAuthActivity;)Z

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$4;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$4;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$2000(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 703
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$4;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$2700(Lcom/tencent/msdk/NameAuthActivity;)Z

    .line 705
    :cond_2
    return-void
.end method
