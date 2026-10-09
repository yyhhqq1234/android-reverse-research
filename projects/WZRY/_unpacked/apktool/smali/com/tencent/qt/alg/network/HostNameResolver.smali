.class public Lcom/tencent/qt/alg/network/HostNameResolver;
.super Ljava/lang/Object;
.source "HostNameResolver.java"


# static fields
.field private static final NEED_HOST_RESOVLING:Z

.field private static hostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/qt/alg/network/HostNameResolver;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNameMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v1, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    .line 48
    :cond_0
    sget-object v1, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "sip":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 50
    sget-object v1, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static isNeedHostResovling()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public static resovleHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "server"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Lcom/tencent/qt/alg/network/HostNameResolver;->isNeedHostResovling()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 77
    .end local p0    # "server":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 70
    .restart local p0    # "server":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "ip":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "ips":[Ljava/lang/String;
    sget-object v3, Lcom/tencent/qt/alg/network/HostNameResolver;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const v4, 0xf4240

    mul-int/2addr v3, v4

    array-length v4, v2

    rem-int v0, v3, v4

    .line 77
    .local v0, "index":I
    aget-object p0, v2, v0

    goto :goto_0
.end method

.method public static resovleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/tencent/qt/alg/network/HostNameResolver;->isNeedHostResovling()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v4, p0

    .line 111
    :cond_1
    :goto_0
    return-object v4

    .line 92
    :cond_2
    move-object v4, p0

    .line 95
    .local v4, "realUrl":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .local v5, "u":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "host":Ljava/lang/String;
    sget-object v6, Lcom/tencent/qt/alg/network/HostNameResolver;->hostMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "ip":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 100
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "ips":[Ljava/lang/String;
    sget-object v6, Lcom/tencent/qt/alg/network/HostNameResolver;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    const v7, 0xf4240

    mul-int/2addr v6, v7

    array-length v7, v3

    rem-int v1, v6, v7

    .line 103
    .local v1, "index":I
    aget-object v6, v3, v1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 106
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "ip":Ljava/lang/String;
    .end local v3    # "ips":[Ljava/lang/String;
    .end local v5    # "u":Ljava/net/URL;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
