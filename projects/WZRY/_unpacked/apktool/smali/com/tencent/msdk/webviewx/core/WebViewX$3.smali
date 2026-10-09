.class Lcom/tencent/msdk/webviewx/core/WebViewX$3;
.super Ljava/lang/Object;
.source "WebViewX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webviewx/core/WebViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$3;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 579
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 580
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 581
    .local v0, "actionId":I
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$3;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v2}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$800(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$3;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v2}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$800(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;->OnClick(I)V

    .line 585
    .end local v0    # "actionId":I
    :cond_0
    return-void
.end method
