.class Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity$5;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$5;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$result:Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/webview/X5WebViewActivity$5;

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$5;

    iput-object p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    iput-object p3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;->val$result:Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$7;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 1221
    return-void
.end method
