.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;
.super Landroid/webkit/WebViewClient;
.source "WebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->initWebView()V
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
    .line 156
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "gm_bridge WebViewDialog"

    const-string v1, "shouldOverrideUrlLoading url >> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$100(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
