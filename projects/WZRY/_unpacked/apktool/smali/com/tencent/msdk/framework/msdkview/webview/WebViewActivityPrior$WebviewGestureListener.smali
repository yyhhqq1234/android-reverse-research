.class Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebViewActivityPrior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebviewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 481
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 483
    .local v0, "contentHeight":I
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$400(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    if-ge v0, v3, :cond_1

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WebViewHeight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 579
    :cond_0
    :goto_0
    return v5

    .line 488
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 493
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$400(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$402(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 498
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_6

    .line 500
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    neg-float v4, p4

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 501
    .local v1, "durationTime":I
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3, v1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$800(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;I)V

    .line 503
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 506
    :cond_2
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v3

    if-ne v6, v3, :cond_5

    .line 507
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 508
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 509
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1400(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 536
    .end local v1    # "durationTime":I
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$400(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$402(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 542
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_a

    .line 544
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    div-float/2addr v3, p4

    float-to-int v1, v3

    .line 545
    .restart local v1    # "durationTime":I
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3, v1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$800(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;I)V

    .line 547
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 548
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1800(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 550
    :cond_4
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v3

    if-ne v6, v3, :cond_9

    .line 551
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 553
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 575
    .end local v1    # "durationTime":I
    :catch_0
    move-exception v2

    .line 576
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 512
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "durationTime":I
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 513
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 514
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1400(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 531
    .end local v1    # "durationTime":I
    :catch_1
    move-exception v2

    .line 532
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 518
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 519
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 521
    :cond_7
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v3

    if-ne v6, v3, :cond_8

    .line 522
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 523
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 526
    :cond_8
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 527
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 556
    .restart local v1    # "durationTime":I
    :cond_9
    :try_start_4
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 558
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 562
    .end local v1    # "durationTime":I
    :cond_a
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 563
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 565
    :cond_b
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)I

    move-result v3

    if-ne v6, v3, :cond_c

    .line 566
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 570
    :cond_c
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$1500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$WebviewGestureListener;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
