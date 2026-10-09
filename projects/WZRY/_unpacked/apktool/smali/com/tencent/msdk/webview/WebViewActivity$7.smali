.class Lcom/tencent/msdk/webview/WebViewActivity$7;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/WebViewActivity;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic this$0:Lcom/tencent/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$7;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$7;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$7;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1239
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1240
    .local v0, "animatorValue":I
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$7;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1241
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$7;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$7;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    return-void
.end method
