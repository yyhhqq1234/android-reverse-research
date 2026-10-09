.class Lcom/tencent/msdk/webview/X5WebViewActivity$3;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downX:I

.field private downY:I

.field private lastX:I

.field private lastY:I

.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    const/4 v0, 0x0

    .line 783
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastX:I

    iput v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastY:I

    iput v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->downX:I

    iput v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->downY:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 790
    :try_start_0
    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v6, "screenWidth":I
    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 791
    .local v5, "screenHeight":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 841
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    :goto_0
    return v10

    .line 794
    .restart local v5    # "screenHeight":I
    .restart local v6    # "screenWidth":I
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastX:I

    .line 795
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastY:I

    .line 796
    iget v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastX:I

    iput v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->downX:I

    .line 797
    iget v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastY:I

    iput v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->downY:I

    goto :goto_0

    .line 838
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    :catch_0
    move-exception v8

    goto :goto_0

    .line 800
    .restart local v5    # "screenHeight":I
    .restart local v6    # "screenWidth":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastX:I

    sub-int v1, v8, v9

    .line 801
    .local v1, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastY:I

    sub-int v2, v8, v9

    .line 802
    .local v2, "dy":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int v3, v8, v1

    .line 803
    .local v3, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    add-int v7, v8, v2

    .line 804
    .local v7, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v4, v8, v1

    .line 805
    .local v4, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int v0, v8, v2

    .line 806
    .local v0, "bottom":I
    if-gez v3, :cond_0

    .line 808
    const/4 v3, 0x0

    .line 809
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v4, v3, v8

    .line 811
    :cond_0
    if-le v4, v6, :cond_1

    .line 813
    move v4, v6

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v3, v4, v8

    .line 816
    :cond_1
    if-gez v7, :cond_2

    .line 818
    const/4 v7, 0x0

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 821
    :cond_2
    if-le v0, v5, :cond_3

    .line 823
    move v0, v5

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int v7, v0, v8

    .line 826
    :cond_3
    invoke-virtual {p1, v3, v7, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 827
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastX:I

    .line 828
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->lastY:I

    goto :goto_0

    .line 831
    .end local v0    # "bottom":I
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v7    # "top":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->downX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v11, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->downY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v11, :cond_5

    .line 832
    :cond_4
    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$202(Lcom/tencent/msdk/webview/X5WebViewActivity;Z)Z

    goto/16 :goto_0

    .line 834
    :cond_5
    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$202(Lcom/tencent/msdk/webview/X5WebViewActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
