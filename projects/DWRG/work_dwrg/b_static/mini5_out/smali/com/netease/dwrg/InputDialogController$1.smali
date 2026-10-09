.class Lcom/netease/dwrg/InputDialogController$1;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 81
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 84
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$000(Lcom/netease/dwrg/InputDialogController;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$100(Lcom/netease/dwrg/InputDialogController;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$500(Lcom/netease/dwrg/InputDialogController;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 95
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$200(Lcom/netease/dwrg/InputDialogController;)[I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 96
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 97
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$200(Lcom/netease/dwrg/InputDialogController;)[I

    move-result-object p1

    aget p1, p1, v0

    int-to-float p1, p1

    invoke-virtual {p2, p1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 98
    invoke-static {p2}, Lcom/netease/neox/NativeInterface;->NativeOnMotionEvent(Landroid/view/MotionEvent;)V

    return v1

    .line 87
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$200(Lcom/netease/dwrg/InputDialogController;)[I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 88
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget-object v3, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v3}, Lcom/netease/dwrg/InputDialogController;->access$400(Lcom/netease/dwrg/InputDialogController;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 89
    iget-object p1, p0, Lcom/netease/dwrg/InputDialogController$1;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {p1}, Lcom/netease/dwrg/InputDialogController;->access$200(Lcom/netease/dwrg/InputDialogController;)[I

    move-result-object p1

    aget p1, p1, v0

    int-to-float p1, p1

    invoke-virtual {p2, p1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 90
    invoke-static {p2}, Lcom/netease/neox/NativeInterface;->NativeOnMotionEvent(Landroid/view/MotionEvent;)V

    return v1
.end method
