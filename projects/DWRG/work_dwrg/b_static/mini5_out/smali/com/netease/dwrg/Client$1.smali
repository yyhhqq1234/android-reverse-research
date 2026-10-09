.class Lcom/netease/dwrg/Client$1;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 594
    iput-object p1, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    iput-object p2, p0, Lcom/netease/dwrg/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 619
    invoke-virtual {p0}, Lcom/netease/dwrg/Client$1;->onUpdateViewSize()V

    .line 621
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 623
    iget-object v1, p0, Lcom/netease/dwrg/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 624
    iget-object v1, p0, Lcom/netease/dwrg/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 625
    iget-object v2, p0, Lcom/netease/dwrg/Client$1;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 626
    iget-object v3, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v3}, Lcom/netease/dwrg/Client;->access$300(Lcom/netease/dwrg/Client;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v3}, Lcom/netease/dwrg/Client;->access$400(Lcom/netease/dwrg/Client;)I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 655
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardShown(I)V

    .line 656
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/dwrg/Client;->access$602(Lcom/netease/dwrg/Client;Z)Z

    goto :goto_1

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$600(Lcom/netease/dwrg/Client;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$500(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$500(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/InputView;->isBorderless()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$500(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    .line 665
    :cond_2
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardHidden()V

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0, v4}, Lcom/netease/dwrg/Client;->access$602(Lcom/netease/dwrg/Client;Z)Z

    .line 668
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$000(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 670
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$000(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    goto :goto_1

    .line 628
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0, v2}, Lcom/netease/dwrg/Client;->access$302(Lcom/netease/dwrg/Client;I)I

    .line 629
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0, v1}, Lcom/netease/dwrg/Client;->access$402(Lcom/netease/dwrg/Client;I)I

    .line 631
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$500(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/dwrg/InputView;->show(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onUpdateViewSize()V
    .locals 6

    .line 597
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$000(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/neox/NeoXView;->getWidth()I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v1}, Lcom/netease/dwrg/Client;->access$000(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getHeight()I

    move-result v1

    .line 599
    iget-object v2, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v2}, Lcom/netease/dwrg/Client;->access$100(Lcom/netease/dwrg/Client;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v2}, Lcom/netease/dwrg/Client;->access$100(Lcom/netease/dwrg/Client;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 602
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v2, v5}, Lcom/netease/dwrg/Client;->access$102(Lcom/netease/dwrg/Client;Landroid/graphics/Point;)Landroid/graphics/Point;

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x2

    .line 604
    new-array v1, v1, [I

    .line 605
    iget-object v2, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v2}, Lcom/netease/dwrg/Client;->access$000(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/neox/NeoXView;->getLocationInWindow([I)V

    .line 606
    aget v2, v1, v4

    iget-object v5, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v5}, Lcom/netease/dwrg/Client;->access$200(Lcom/netease/dwrg/Client;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v2, v5, :cond_3

    aget v2, v1, v3

    iget-object v5, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v5}, Lcom/netease/dwrg/Client;->access$200(Lcom/netease/dwrg/Client;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eq v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_3

    .line 609
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/netease/dwrg/Client$1;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/Client;->access$200(Lcom/netease/dwrg/Client;)Landroid/graphics/Point;

    move-result-object v0

    aget v2, v1, v4

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    :goto_3
    if-eqz v3, :cond_4

    .line 613
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnSizeChanged()V

    :cond_4
    return-void
.end method
