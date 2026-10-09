.class public Lcom/tencent/msdk/request/QosReport;
.super Ljava/lang/Object;
.source "QosReport.java"


# static fields
.field public static final QOS_INNET_ADDRESS:Ljava/lang/String; = "localIP"

.field private static volatile instance:Lcom/tencent/msdk/request/QosReport;


# instance fields
.field private localIP:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/QosReport;->localIP:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/request/QosReport;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/msdk/request/QosReport;->instance:Lcom/tencent/msdk/request/QosReport;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/tencent/msdk/request/QosReport;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/request/QosReport;->instance:Lcom/tencent/msdk/request/QosReport;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/tencent/msdk/request/QosReport;

    invoke-direct {v0}, Lcom/tencent/msdk/request/QosReport;-><init>()V

    sput-object v0, Lcom/tencent/msdk/request/QosReport;->instance:Lcom/tencent/msdk/request/QosReport;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/tencent/msdk/request/QosReport;->instance:Lcom/tencent/msdk/request/QosReport;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public fillInnerIp(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/msdk/request/QosReport;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "innetAddress":Ljava/lang/String;
    const-string v2, "localIP"

    if-nez v1, :cond_1

    const-string v1, ""

    .end local v1    # "innetAddress":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 52
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 54
    .local v4, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 55
    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 57
    .local v3, "mInetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 58
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 66
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "mInetAddress":Ljava/net/InetAddress;
    .end local v4    # "nif":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 66
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
