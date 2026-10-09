.class Lcom/netease/dwrg/InputDialogController$9$2;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputDialogController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/InputDialogController$9;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputDialogController$9;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v1, v1, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/dwrg/InputDialogController;->access$102(Lcom/netease/dwrg/InputDialogController;I)I

    .line 307
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v1, v1, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/dwrg/InputDialogController;->access$502(Lcom/netease/dwrg/InputDialogController;I)I

    .line 309
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 310
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v1, v1, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 311
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v0

    const/16 v1, 0x438

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 312
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController$9$2;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v2, v2, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v2}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
