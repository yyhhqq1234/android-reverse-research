.class Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->startLogcacheThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;


# direct methods
.method constructor <init>(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;->this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    iget-object v6, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;->this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-static {v6}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->access$100(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v4

    .line 169
    :cond_1
    iget-object v6, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;->this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-static {v6}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->access$100(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 172
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 173
    .local v1, "logLevel":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "tag"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "tag":Ljava/lang/String;
    const-string v6, "msg"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "message":Ljava/lang/String;
    const-string v6, "LogUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addCache->tag["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v6, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;->this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-static {v6}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->access$200(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v3, v8, v4

    aput-object v2, v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    iget-object v4, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;->this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-static {v4}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->access$108(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)I

    move v4, v5

    .line 179
    goto :goto_0
.end method
