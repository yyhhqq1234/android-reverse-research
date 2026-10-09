.class Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;
.super Ljava/lang/Object;
.source "PBProxyManager.java"

# interfaces
.implements Lcom/tencent/component/event/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/tencent/component/event/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/tencent/component/event/Event;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->access$000(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget v1, p1, Lcom/tencent/component/event/Event;->what:I

    if-nez v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->access$002(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;Z)Z

    .line 65
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->access$100(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;

    .line 66
    .local v0, "proxy":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
    iget-object v2, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    invoke-static {v2}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->access$200(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proxy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is send!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;->sendRequest()V

    goto :goto_1

    .line 69
    .end local v0    # "proxy":Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
    :cond_2
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->access$100(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;->this$0:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    invoke-static {v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->access$200(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/component/event/Event;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
