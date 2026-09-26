.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->destroy()V

    .line 74
    sput-object v2, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    .line 85
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 78
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->destroy()V

    .line 81
    sput-object v2, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    goto :goto_0
.end method
