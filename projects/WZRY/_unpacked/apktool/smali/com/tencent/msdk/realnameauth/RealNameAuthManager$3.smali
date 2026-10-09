.class Lcom/tencent/msdk/realnameauth/RealNameAuthManager$3;
.super Landroid/os/Handler;
.source "RealNameAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/realnameauth/RealNameAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$3;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 259
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 260
    .local v1, "flag":I
    const-string v0, ""

    .line 261
    .local v0, "desc":Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "desc":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 264
    .restart local v0    # "desc":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$3;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$600(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Lcom/tencent/msdk/realnameauth/RealNameAuthListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$3;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$600(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Lcom/tencent/msdk/realnameauth/RealNameAuthListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/tencent/msdk/realnameauth/RealNameAuthListener;->onRealNameAuthFinished(ILjava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "flag":I
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 268
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$3;->this$0:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->access$700(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)V

    goto :goto_0

    .line 270
    :cond_4
    const-string/jumbo v2, "unknown message"

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method
