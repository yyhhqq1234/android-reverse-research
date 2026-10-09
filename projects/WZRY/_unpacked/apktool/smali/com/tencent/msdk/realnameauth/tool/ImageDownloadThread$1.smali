.class Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;
.super Landroid/os/Handler;
.source "ImageDownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;->this$0:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 151
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 152
    .local v1, "flag":I
    const/4 v0, 0x0

    .line 153
    .local v0, "data":[B
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;->this$0:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->access$000(Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;)Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;->this$0:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->access$000(Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;)Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;->callback(I[B)V

    goto :goto_0
.end method
