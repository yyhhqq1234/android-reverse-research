.class Lcom/tencent/msdk/realnameauth/ImageDialog$2;
.super Ljava/lang/Object;
.source "ImageDialog.java"

# interfaces
.implements Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/realnameauth/ImageDialog;->downImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

.field final synthetic val$imageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/ImageDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    iput-object p2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->val$imageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(I[B)V
    .locals 8
    .param p1, "flag"    # I
    .param p2, "imageData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image download flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 225
    if-nez p1, :cond_0

    .line 226
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    array-length v7, p2

    invoke-static {p2, v5, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$102(Lcom/tencent/msdk/realnameauth/ImageDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 228
    :cond_0
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$200(Lcom/tencent/msdk/realnameauth/ImageDialog;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 229
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$200(Lcom/tencent/msdk/realnameauth/ImageDialog;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 230
    .local v4, "msg":Landroid/os/Message;
    const/4 v6, 0x2

    iput v6, v4, Landroid/os/Message;->what:I

    .line 231
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$200(Lcom/tencent/msdk/realnameauth/ImageDialog;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    if-nez p1, :cond_3

    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$100(Lcom/tencent/msdk/realnameauth/ImageDialog;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 236
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->this$0:Lcom/tencent/msdk/realnameauth/ImageDialog;

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/ImageDialog;->access$300(Lcom/tencent/msdk/realnameauth/ImageDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, "imageDirFile":Ljava/io/File;
    new-instance v6, Lcom/tencent/msdk/realnameauth/ImageDialog$2$1;

    invoke-direct {v6, p0}, Lcom/tencent/msdk/realnameauth/ImageDialog$2$1;-><init>(Lcom/tencent/msdk/realnameauth/ImageDialog$2;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 247
    .local v2, "files":[Ljava/io/File;
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 248
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "imageDirFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "delete all image error!"

    invoke-static {v5}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method
