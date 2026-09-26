.class Lcom/netease/dwrg/Client$2;
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
    .param p1, "this$0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    iput-object p2, p0, Lcom/netease/dwrg/Client$2;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 413
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 415
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 416
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 417
    .local v0, "height":I
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 418
    .local v3, "width":I
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$100(Lcom/netease/dwrg/Client;)I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$200(Lcom/netease/dwrg/Client;)I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 420
    :cond_0
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4, v3}, Lcom/netease/dwrg/Client;->access$102(Lcom/netease/dwrg/Client;I)I

    .line 421
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4, v0}, Lcom/netease/dwrg/Client;->access$202(Lcom/netease/dwrg/Client;I)I

    .line 422
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnWindowSizeChanged()V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_1

    .line 430
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v1, v0, v4

    .line 431
    .local v1, "heightDiff":I
    const/16 v4, 0x64

    if-le v1, v4, :cond_3

    .line 434
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardShown(I)V

    .line 435
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/netease/dwrg/Client;->access$302(Lcom/netease/dwrg/Client;Z)Z

    goto :goto_0

    .line 440
    :cond_3
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$300(Lcom/netease/dwrg/Client;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 442
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$400(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$400(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/dwrg/InputView;->isBorderless()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$400(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    .line 444
    :cond_4
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardHidden()V

    .line 446
    :cond_5
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4, v6}, Lcom/netease/dwrg/Client;->access$302(Lcom/netease/dwrg/Client;Z)Z

    .line 447
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$500(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 449
    iget-object v4, p0, Lcom/netease/dwrg/Client$2;->this$0:Lcom/netease/dwrg/Client;

    invoke-static {v4}, Lcom/netease/dwrg/Client;->access$500(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v4

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    goto :goto_0
.end method
