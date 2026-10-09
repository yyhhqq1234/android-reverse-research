.class Lcom/tencent/msdk/webview/X5WebViewActivity$6$2;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity$6;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$2;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$2;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->showUi()V

    .line 1396
    return-void
.end method
