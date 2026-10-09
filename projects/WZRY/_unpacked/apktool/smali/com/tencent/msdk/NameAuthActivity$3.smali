.class Lcom/tencent/msdk/NameAuthActivity$3;
.super Ljava/lang/Object;
.source "NameAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/NameAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/NameAuthActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/NameAuthActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/NameAuthActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$500(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$600(Lcom/tencent/msdk/NameAuthActivity;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$700(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 429
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$800(Lcom/tencent/msdk/NameAuthActivity;)V

    .line 431
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$900(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 433
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$1000(Lcom/tencent/msdk/NameAuthActivity;)V

    .line 435
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$1100(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 437
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$1200(Lcom/tencent/msdk/NameAuthActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$1200(Lcom/tencent/msdk/NameAuthActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$1200(Lcom/tencent/msdk/NameAuthActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 440
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$1300(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 441
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$1400(Lcom/tencent/msdk/NameAuthActivity;)V

    goto :goto_0

    .line 442
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$1500(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 443
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$1600(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v2}, Lcom/tencent/msdk/NameAuthActivity;->access$1700(Lcom/tencent/msdk/NameAuthActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/NameAuthActivity;->access$1800(Lcom/tencent/msdk/NameAuthActivity;Landroid/widget/TextView;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$1900(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 445
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$2000(Lcom/tencent/msdk/NameAuthActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v2}, Lcom/tencent/msdk/NameAuthActivity;->access$2100(Lcom/tencent/msdk/NameAuthActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/NameAuthActivity;->access$1800(Lcom/tencent/msdk/NameAuthActivity;Landroid/widget/TextView;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$2200(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 447
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$2300(Lcom/tencent/msdk/NameAuthActivity;)V

    .line 448
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$2400(Lcom/tencent/msdk/NameAuthActivity;)V

    goto/16 :goto_0

    .line 449
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v1}, Lcom/tencent/msdk/NameAuthActivity;->access$2500(Lcom/tencent/msdk/NameAuthActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$2300(Lcom/tencent/msdk/NameAuthActivity;)V

    .line 451
    iget-object v0, p0, Lcom/tencent/msdk/NameAuthActivity$3;->this$0:Lcom/tencent/msdk/NameAuthActivity;

    invoke-static {v0}, Lcom/tencent/msdk/NameAuthActivity;->access$2400(Lcom/tencent/msdk/NameAuthActivity;)V

    goto/16 :goto_0
.end method
