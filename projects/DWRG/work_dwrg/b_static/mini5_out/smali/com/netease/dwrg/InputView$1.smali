.class Lcom/netease/dwrg/InputView$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p1}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 142
    new-array p1, p1, [I

    .line 143
    iget-object p2, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p2}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 144
    aget p3, p1, p2

    iget-object p4, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p4}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->left:I

    const/4 p5, 0x1

    if-ne p3, p4, :cond_0

    aget p3, p1, p5

    iget-object p4, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p4}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    if-eq p3, p4, :cond_1

    .line 145
    :cond_0
    iget-object p3, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p3}, Lcom/netease/dwrg/InputView;->access$200(Lcom/netease/dwrg/InputView;)Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    .line 146
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    .line 147
    iget-object p6, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p6}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p6

    iget p6, p6, Landroid/graphics/Rect;->left:I

    aget p2, p1, p2

    iget-object p7, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p7}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p7

    iget p7, p7, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p7

    sub-int/2addr p6, p2

    iput p6, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 148
    iget-object p2, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p2}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    aget p1, p1, p5

    iget-object p5, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p5}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p5

    sub-int/2addr p2, p1

    iput p2, p4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 149
    iget-object p1, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p1}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 150
    iget-object p1, p0, Lcom/netease/dwrg/InputView$1;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p1}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 151
    invoke-virtual {p3, p4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
