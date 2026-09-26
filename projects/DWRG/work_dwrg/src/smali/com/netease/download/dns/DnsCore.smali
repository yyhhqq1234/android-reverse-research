.class public Lcom/netease/download/dns/DnsCore;
.super Ljava/lang/Object;
.source "DnsCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DnsCore"

.field private static sDnsCore:Lcom/netease/download/dns/DnsCore;


# instance fields
.field private mDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/dns/DnsCore;->sDnsCore:Lcom/netease/download/dns/DnsCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/dns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getInstances()Lcom/netease/download/dns/DnsCore;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/netease/download/dns/DnsCore;->sDnsCore:Lcom/netease/download/dns/DnsCore;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/netease/download/dns/DnsCore;

    invoke-direct {v0}, Lcom/netease/download/dns/DnsCore;-><init>()V

    sput-object v0, Lcom/netease/download/dns/DnsCore;->sDnsCore:Lcom/netease/download/dns/DnsCore;

    .line 47
    :cond_0
    sget-object v0, Lcom/netease/download/dns/DnsCore;->sDnsCore:Lcom/netease/download/dns/DnsCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/dns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/download/dns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/netease/download/dns/DnsCore;->mDomains:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 61
    return-void
.end method

.method public init([Ljava/lang/String;)V
    .locals 1
    .param p1, "domains"    # [Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/dns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/netease/download/dns/DnsCore;->mDomains:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public start()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/dns/DnsParams$Unit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v10, 0x0

    .line 65
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    const/4 v9, 0x0

    .line 67
    .local v9, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v12, 0x0

    .line 68
    .local v12, "startTime":J
    const-wide/16 v6, 0x0

    .line 69
    .local v6, "endTime":J
    new-instance v2, Lcom/netease/download/dns/DnsParams;

    invoke-direct {v2}, Lcom/netease/download/dns/DnsParams;-><init>()V

    .line 71
    .local v2, "dnsParams":Lcom/netease/download/dns/DnsParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/download/dns/DnsCore;->mDomains:[Ljava/lang/String;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-lt v14, v0, :cond_0

    .line 102
    invoke-virtual {v2}, Lcom/netease/download/dns/DnsParams;->getDnsIpNodeUnitList()Ljava/util/ArrayList;

    move-result-object v10

    .line 103
    return-object v10

    .line 71
    :cond_0
    aget-object v3, v15, v14

    .line 72
    .local v3, "domain":Ljava/lang/String;
    const-string v17, "DnsCore"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "url="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v18, Lcom/netease/download/reporter/KeyConst;->KEY_PATCH_HOST:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .restart local v9    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    :try_start_0
    const-string v17, "DnsCore"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "domain="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 80
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v11

    .line 81
    .local v11, "returnStr":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 82
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sub-long v18, v6, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v8, 0x0

    .line 85
    .local v8, "ip":Ljava/lang/String;
    const-string v17, "DnsCore"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "returnStr.length="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v11

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v17, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v17

    if-lt v5, v0, :cond_1

    .line 98
    .end local v5    # "i":I
    .end local v8    # "ip":Ljava/lang/String;
    .end local v11    # "returnStr":[Ljava/net/InetAddress;
    :goto_2
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "dns."

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v2, v3, v9}, Lcom/netease/download/dns/DnsParams;->add(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 88
    .restart local v5    # "i":I
    .restart local v8    # "ip":Ljava/lang/String;
    .restart local v11    # "returnStr":[Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    aget-object v17, v11, v5

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 89
    const-string v17, "DnsCore"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "dns ip="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    .end local v5    # "i":I
    .end local v8    # "ip":Ljava/lang/String;
    .end local v11    # "returnStr":[Ljava/net/InetAddress;
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2
.end method
