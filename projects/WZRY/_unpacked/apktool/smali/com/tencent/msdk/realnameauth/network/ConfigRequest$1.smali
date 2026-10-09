.class Lcom/tencent/msdk/realnameauth/network/ConfigRequest$1;
.super Landroid/os/Handler;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/realnameauth/network/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/realnameauth/network/ConfigRequest;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/network/ConfigRequest;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/realnameauth/network/ConfigRequest;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest$1;->this$0:Lcom/tencent/msdk/realnameauth/network/ConfigRequest;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 142
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 143
    .local v0, "flag":I
    const/4 v1, 0x0

    .line 144
    .local v1, "params":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    if-eqz v2, :cond_2

    .line 145
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "params":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    check-cast v1, Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    .line 147
    .restart local v1    # "params":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    :cond_2
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest$1;->this$0:Lcom/tencent/msdk/realnameauth/network/ConfigRequest;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->access$000(Lcom/tencent/msdk/realnameauth/network/ConfigRequest;)Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest$1;->this$0:Lcom/tencent/msdk/realnameauth/network/ConfigRequest;

    invoke-static {v2}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->access$000(Lcom/tencent/msdk/realnameauth/network/ConfigRequest;)Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;->callback(ILcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    goto :goto_0
.end method
