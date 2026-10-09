.class Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebviewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

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

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 1367
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$900(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$900(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 1369
    .local v0, "contentHeight":I
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$900(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/WebView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    if-ge v0, v3, :cond_1

    .line 1370
    const-string v3, "[MSDK WebViewActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentHeight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WebViewHeight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v5}, Lcom/tencent/msdk/webview/WebViewActivity;->access$900(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/WebView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    :goto_0
    return v6

    .line 1374
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1800(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1800(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 1379
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1382
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1702(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1384
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_6

    .line 1386
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2000(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    neg-float v4, p4

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 1387
    .local v1, "durationTime":I
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2100(Lcom/tencent/msdk/webview/WebViewActivity;I)V

    .line 1389
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1390
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1392
    :cond_2
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v3

    if-ne v5, v3, :cond_5

    .line 1393
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2400(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1394
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1395
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2600(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1422
    .end local v1    # "durationTime":I
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1423
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1426
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1702(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1428
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_a

    .line 1430
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2000(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    div-float/2addr v3, p4

    float-to-int v1, v3

    .line 1431
    .restart local v1    # "durationTime":I
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2100(Lcom/tencent/msdk/webview/WebViewActivity;I)V

    .line 1433
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1434
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3000(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1436
    :cond_4
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v3

    if-ne v5, v3, :cond_9

    .line 1437
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2400(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1438
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3100(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1439
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1461
    .end local v1    # "durationTime":I
    :catch_0
    move-exception v2

    .line 1462
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1398
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "durationTime":I
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1399
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1400
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2600(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1417
    .end local v1    # "durationTime":I
    :catch_1
    move-exception v2

    .line 1418
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1404
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1405
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2800(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1407
    :cond_7
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v3

    if-ne v5, v3, :cond_8

    .line 1408
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2400(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1409
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2900(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 1412
    :cond_8
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1413
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2900(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1442
    .restart local v1    # "durationTime":I
    :cond_9
    :try_start_4
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1443
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3100(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1444
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3200(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1448
    .end local v1    # "durationTime":I
    :cond_a
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1449
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1451
    :cond_b
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v3

    if-ne v5, v3, :cond_c

    .line 1452
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2400(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1453
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1456
    :cond_c
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$2700(Lcom/tencent/msdk/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1457
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewGestureListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$3400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
