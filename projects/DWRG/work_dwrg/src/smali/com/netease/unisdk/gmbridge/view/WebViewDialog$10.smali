.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->startUpload(Ljava/lang/Object;)V
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
    .line 394
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$402(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v1, "cancel"

    invoke-virtual {v0, v1, p2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0, p1, p2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
