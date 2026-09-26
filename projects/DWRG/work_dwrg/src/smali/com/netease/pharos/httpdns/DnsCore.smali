.class public Lcom/netease/pharos/httpdns/DnsCore;
.super Ljava/lang/Object;
.source "DnsCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DnsCore"

.field private static sDnsCore:Lcom/netease/pharos/httpdns/DnsCore;


# instance fields
.field private mDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/httpdns/DnsCore;->sDnsCore:Lcom/netease/pharos/httpdns/DnsCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/httpdns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/httpdns/DnsCore;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netease/pharos/httpdns/DnsCore;->sDnsCore:Lcom/netease/pharos/httpdns/DnsCore;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/netease/pharos/httpdns/DnsCore;

    invoke-direct {v0}, Lcom/netease/pharos/httpdns/DnsCore;-><init>()V

    sput-object v0, Lcom/netease/pharos/httpdns/DnsCore;->sDnsCore:Lcom/netease/pharos/httpdns/DnsCore;

    .line 40
    :cond_0
    sget-object v0, Lcom/netease/pharos/httpdns/DnsCore;->sDnsCore:Lcom/netease/pharos/httpdns/DnsCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/httpdns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/pharos/httpdns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/netease/pharos/httpdns/DnsCore;->mDomains:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 54
    return-void
.end method

.method public init([Ljava/lang/String;)V
    .locals 1
    .param p1, "domains"    # [Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/httpdns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/netease/pharos/httpdns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public start()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/httpdns/DnsParams$Unit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v9, 0x0

    .line 58
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/DnsParams$Unit;>;"
    const/4 v8, 0x0

    .line 60
    .local v8, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v11, 0x0

    .line 61
    .local v11, "startTime":J
    const-wide/16 v4, 0x0

    .line 62
    .local v4, "endTime":J
    new-instance v1, Lcom/netease/pharos/httpdns/DnsParams;

    invoke-direct {v1}, Lcom/netease/pharos/httpdns/DnsParams;-><init>()V

    .line 64
    .local v1, "dnsParams":Lcom/netease/pharos/httpdns/DnsParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/httpdns/DnsCore;->mDomains:[Ljava/lang/String;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_0
    if-lt v13, v15, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/netease/pharos/httpdns/DnsParams;->getDnsIpNodeUnitList()Ljava/util/ArrayList;

    move-result-object v9

    .line 93
    return-object v9

    .line 64
    :cond_0
    aget-object v2, v14, v13

    .line 65
    .local v2, "domain":Ljava/lang/String;
    const-string v16, "DnsCore"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "url="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v8    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    :try_start_0
    const-string v16, "DnsCore"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "domain="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 72
    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 73
    .local v10, "returnStr":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 75
    const/4 v7, 0x0

    .line 76
    .local v7, "ip":Ljava/lang/String;
    const-string v16, "DnsCore"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "returnStr.length="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v10

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v10

    move/from16 v16, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v16

    if-lt v6, v0, :cond_1

    .line 89
    .end local v6    # "i":I
    .end local v7    # "ip":Ljava/lang/String;
    .end local v10    # "returnStr":[Ljava/net/InetAddress;
    :goto_2
    invoke-virtual {v1, v2, v8}, Lcom/netease/pharos/httpdns/DnsParams;->add(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 79
    .restart local v6    # "i":I
    .restart local v7    # "ip":Ljava/lang/String;
    .restart local v10    # "returnStr":[Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    aget-object v16, v10, v6

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 80
    const-string v16, "DnsCore"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "dns ip="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    .end local v6    # "i":I
    .end local v7    # "ip":Ljava/lang/String;
    .end local v10    # "returnStr":[Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2
.end method
