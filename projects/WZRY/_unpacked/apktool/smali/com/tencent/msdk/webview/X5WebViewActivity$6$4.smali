.class Lcom/tencent/msdk/webview/X5WebViewActivity$6$4;
.super Ljava/util/HashMap;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getLocalResource(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
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
    .line 1475
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6$4;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1476
    const-string v0, "Development-Department"

    const-string v1, "TIEM"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    return-void
.end method
