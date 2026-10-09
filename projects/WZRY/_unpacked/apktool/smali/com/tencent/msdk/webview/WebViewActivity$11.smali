.class Lcom/tencent/msdk/webview/WebViewActivity$11;
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
.field final synthetic this$0:Lcom/tencent/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$11;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1302
    .local v0, "currentColor":I
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$11;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1303
    return-void
.end method
