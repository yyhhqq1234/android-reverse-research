.class Lcom/tencent/msdk/webview/X5WebViewActivity$5$5;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/webview/X5WebViewActivity$5;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$5$5;->this$1:Lcom/tencent/msdk/webview/X5WebViewActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 930
    const/4 v0, 0x1

    return v0
.end method
