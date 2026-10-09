.class Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebviewAnimationListener"
.end annotation


# static fields
.field private static final STATE_HIDE:I = 0x2

.field private static final STATE_SHOW:I = 0x1


# instance fields
.field private state:I

.field final synthetic this$0:Lcom/tencent/msdk/webview/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/webview/WebViewActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/WebViewActivity;
    .param p2, "state"    # I

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    iput p2, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->state:I

    .line 1328
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1342
    iget v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1346
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1352
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1357
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 1332
    iget v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->state:I

    if-ne v0, v1, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1334
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/WebViewActivity;)I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$WebviewAnimationListener;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1338
    :cond_0
    return-void
.end method
