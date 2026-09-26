.class Lcom/netease/pharos/qos/Qos4GProxy$2;
.super Ljava/lang/Object;
.source "Qos4GProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/qos/Qos4GProxy;->cancel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/Qos4GProxy;

.field private final synthetic val$ip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/Qos4GProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    iput-object p2, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->val$ip:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 92
    const/16 v1, 0xb

    .line 93
    .local v1, "result":I
    iget-object v2, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    invoke-static {v2}, Lcom/netease/pharos/qos/Qos4GProxy;->access$0(Lcom/netease/pharos/qos/Qos4GProxy;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->val$ip:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/qos/Qos;

    .line 94
    .local v0, "qos":Lcom/netease/pharos/qos/Qos;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/netease/pharos/qos/Qos;->clean()I

    move-result v1

    .line 98
    :cond_0
    if-nez v1, :cond_1

    .line 99
    const-string v2, "Qos4GProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Qos4GProxy [cancel] mQosMap remove ip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->val$ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    invoke-static {v2}, Lcom/netease/pharos/qos/Qos4GProxy;->access$0(Lcom/netease/pharos/qos/Qos4GProxy;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->val$ip:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    const-string v2, "Qos4GProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Qos4GProxy [cancel] \u53d6\u6d88\u540e mQosMap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    invoke-static {v4}, Lcom/netease/pharos/qos/Qos4GProxy;->access$0(Lcom/netease/pharos/qos/Qos4GProxy;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u53d6\u6d88\u7ed3\u679c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
