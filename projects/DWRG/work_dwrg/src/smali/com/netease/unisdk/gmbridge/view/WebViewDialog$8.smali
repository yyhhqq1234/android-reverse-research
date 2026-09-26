.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->interceptUrl(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

.field final synthetic val$callbackFunc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;->val$callbackFunc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;->val$callbackFunc:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method
