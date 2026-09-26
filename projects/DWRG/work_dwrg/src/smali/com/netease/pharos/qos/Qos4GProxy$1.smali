.class Lcom/netease/pharos/qos/Qos4GProxy$1;
.super Ljava/lang/Object;
.source "Qos4GProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/qos/Qos4GProxy;->pharosqosexec(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/Qos4GProxy;

.field private final synthetic val$duration:J

.field private final synthetic val$ip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/Qos4GProxy;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    iput-object p2, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$ip:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$duration:J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/netease/pharos/qos/Qos;

    invoke-direct {v0}, Lcom/netease/pharos/qos/Qos;-><init>()V

    .line 62
    .local v0, "qos":Lcom/netease/pharos/qos/Qos;
    iget-object v1, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    invoke-static {v1}, Lcom/netease/pharos/qos/Qos4GProxy;->access$0(Lcom/netease/pharos/qos/Qos4GProxy;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$ip:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$ip:Ljava/lang/String;

    iget-wide v2, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$duration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/pharos/qos/Qos;->pharosqosexec(Ljava/lang/String;J)I

    .line 65
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/pharos/PharosProxy;->pharosqosstatus(Ljava/lang/String;)V

    .line 68
    return-void
.end method
