.class Lcom/tencent/msdk/webview/X5WebViewActivity$5$4;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity$5;->onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$5;

.field final synthetic val$result:Lcom/tencent/smtt/export/external/interfaces/JsResult;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;Lcom/tencent/smtt/export/external/interfaces/JsResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/webview/X5WebViewActivity$5;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$4;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$5;

    iput-object p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$4;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$4;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsResult;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->confirm()V

    .line 914
    return-void
.end method
