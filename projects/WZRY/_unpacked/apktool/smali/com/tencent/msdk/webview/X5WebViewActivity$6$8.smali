.class Lcom/tencent/msdk/webview/X5WebViewActivity$6$8;
.super Ljava/util/HashMap;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity$6;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V
    .locals 2
    .param p1, "this$1"    # Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$8;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Development-Department"

    const-string v1, "TIEM"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
