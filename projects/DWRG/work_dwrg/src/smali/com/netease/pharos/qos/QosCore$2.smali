.class Lcom/netease/pharos/qos/QosCore$2;
.super Ljava/lang/Object;
.source "QosCore.java"

# interfaces
.implements Lcom/netease/pharos/network2/NetworkDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/qos/QosCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/pharos/network2/NetworkDealer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/QosCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/QosCore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/qos/QosCore$2;->this$0:Lcom/netease/pharos/qos/QosCore;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 10
    .param p1, "pInputStream"    # Ljava/io/InputStream;
    .param p2, "pCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 644
    .local p3, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "\u83b7\u53d6\u624b\u673a\u53f7\u7801---\u89e3\u6790\u5185\u5bb9"

    invoke-static {v7}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 645
    const/16 v6, 0xb

    .line 646
    .local v6, "result":I
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v7, "utf-8"

    invoke-direct {v4, p1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 647
    .local v4, "in":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 648
    .local v2, "e":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .local v0, "cache":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 655
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u83b7\u53d6\u624b\u673a\u53f7\u7801---\u89e3\u6790\u5185\u5bb9="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 662
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, "data":Lorg/json/JSONObject;
    const-string v7, "result"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 665
    iget-object v7, p0, Lcom/netease/pharos/qos/QosCore$2;->this$0:Lcom/netease/pharos/qos/QosCore;

    const-string v8, "result"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/qos/QosCore;->access$2(Lcom/netease/pharos/qos/QosCore;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :cond_0
    const/4 v6, 0x0

    .line 675
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/netease/pharos/qos/QosCore$2;->this$0:Lcom/netease/pharos/qos/QosCore;

    invoke-static {v7}, Lcom/netease/pharos/qos/QosCore;->access$3(Lcom/netease/pharos/qos/QosCore;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 676
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u83b7\u53d6\u624b\u673a\u53f7\u7801---\u89e3\u6790\u5185\u5bb9  phone="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/netease/pharos/qos/QosCore$2;->this$0:Lcom/netease/pharos/qos/QosCore;

    invoke-static {v9}, Lcom/netease/pharos/qos/QosCore;->access$3(Lcom/netease/pharos/qos/QosCore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v7, p0, Lcom/netease/pharos/qos/QosCore$2;->this$0:Lcom/netease/pharos/qos/QosCore;

    invoke-static {v7}, Lcom/netease/pharos/qos/QosCore;->access$4(Lcom/netease/pharos/qos/QosCore;)I

    move-result v6

    .line 684
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 652
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 670
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e2":Lorg/json/JSONException;
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u83b7\u53d6\u624b\u673a\u53f7\u7801---\u89e3\u6790\u5185\u5bb9  JSONException="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 680
    .end local v3    # "e2":Lorg/json/JSONException;
    :cond_3
    const-string v7, "QosCore"

    const-string v8, "\u83b7\u53d6\u624b\u673a\u53f7\u7801---\u89e3\u6790\u5185\u5bb9  phone \u9519\u8bef\uff0c\u4e0d\u53d1\u8d77Qos"

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/pharos/qos/QosCore$2;->processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public processHeader(Ljava/util/Map;ILjava/util/Map;)V
    .locals 0
    .param p2, "pCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
