.class Lcom/netease/dwrg/InputView$5;
.super Landroid/app/Dialog;
.source "InputView.java"


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
.method constructor <init>(Lcom/netease/dwrg/InputView;Landroid/content/Context;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/netease/dwrg/InputView$5;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/netease/dwrg/InputView$5;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$300(Lcom/netease/dwrg/InputView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/netease/dwrg/InputView$5;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 199
    new-array v1, v1, [I

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x0

    .line 203
    aget v5, v1, v4

    int-to-float v6, v5

    const/4 v7, 0x1

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    aget v1, v1, v7

    int-to-float v2, v1

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/InputView$5;->this$0:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, v4}, Lcom/netease/dwrg/InputView;->inputFinish(Z)V

    .line 208
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 209
    new-instance v1, Lcom/netease/dwrg/InputView$5$1;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$5$1;-><init>(Lcom/netease/dwrg/InputView$5;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 219
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnMotionEvent(Landroid/view/MotionEvent;)V

    .line 221
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 222
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 223
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnMotionEvent(Landroid/view/MotionEvent;)V

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v7

    .line 229
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
