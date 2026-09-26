.class Lcom/netease/pharos/linkcheck/ScanProxy$1;
.super Ljava/lang/Object;
.source "ScanProxy.java"

# interfaces
.implements Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/linkcheck/ScanProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/linkcheck/ScanProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/linkcheck/ScanProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;)V
    .locals 8
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$0(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$0(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getmCycleList()Ljava/util/ArrayList;

    move-result-object v2

    .line 85
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v4, "tList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 95
    :try_start_0
    const-string v5, "ScanProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mCheckCycleTypeList\u5faa\u73af debug="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    const-string v5, "ScanProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mCheckCycleTypeList\u5faa\u73af="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v7}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$0(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$0(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$0(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 116
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/qos/QosProxy;->clean()V

    .line 117
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/qos/QosProxy;->start_qosCore()V

    .line 119
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 120
    .local v1, "infoJson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->setmPharosResultCache(Lorg/json/JSONObject;)V

    .line 136
    .end local v1    # "infoJson":Lorg/json/JSONObject;
    :cond_2
    return-void

    .line 87
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 101
    .end local v3    # "string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ScanProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mCheckCycleTypeList\u5faa\u73af Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
