.class Lcom/netease/dwrg/InputDialogController$7;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputDialogController;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputDialogController;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputDialogController;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$700(Lcom/netease/dwrg/InputDialogController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$800(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 159
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$800(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v2}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 165
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v2}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 167
    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 168
    iget-object v4, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v4}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 171
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-lez v3, :cond_1

    .line 172
    iget v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v3, v5, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_2

    .line 173
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_1
    iput v3, v5, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_3

    .line 174
    iget v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_2
    iput v1, v5, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_4

    .line 175
    iget v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$900(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 178
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-gez v1, :cond_5

    .line 180
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 182
    :cond_5
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-le v0, v4, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-ltz v0, :cond_7

    if-gt v0, v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-nez v5, :cond_8

    if-eqz v2, :cond_9

    .line 191
    :cond_8
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$700(Lcom/netease/dwrg/InputDialogController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 194
    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v2}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v2

    sub-int v0, v1, v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 195
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 196
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1000(Lcom/netease/dwrg/InputDialogController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 198
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x33

    .line 199
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 200
    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v2}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 201
    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController$7;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v2}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_9
    return-void
.end method
