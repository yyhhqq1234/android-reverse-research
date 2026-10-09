.class Lcom/tencent/msdk/webview/X5WebViewActivity$10;
.super Ljava/util/ArrayList;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->sendToQQ(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$10;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iput-object p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$10;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$10;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity$10;->add(Ljava/lang/Object;)Z

    return-void
.end method
