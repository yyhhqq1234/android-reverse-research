.class public Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;
.super Ljava/lang/Object;
.source "HttpdnsDomain2IpParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsDomain2IpParams"

.field private static sHttpdnsDomain2IpParams:Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

.field private static volatile sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpParams:Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstances()Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpParams:Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

    invoke-direct {v0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;-><init>()V

    sput-object v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpParams:Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

    .line 38
    :cond_0
    sget-object v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpParams:Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

    return-object v0
.end method

.method private isContainCdn(Ljava/lang/String;)Z
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "result":Z
    sget-object v2, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;

    .line 45
    .local v1, "unit":Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;
    iget-object v3, v1, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;->domain:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method public declared-synchronized getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/lang/String;)Z
    .locals 12
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 64
    monitor-enter p0

    :try_start_0
    const-string v9, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668\uff0c\u521d\u59cb\u5316\u6570\u636e"

    invoke-static {v9}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 101
    :goto_0
    monitor-exit p0

    return v8

    .line 73
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .local v3, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "domain"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "domain":Ljava/lang/String;
    const-string v9, "addrs"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 81
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_2

    .line 85
    const-string v9, "ttl"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 86
    .local v6, "ttl":I
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "httpdns."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-direct {p0, v0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->isContainCdn(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 89
    new-instance v7, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;

    invoke-direct {v7, v0, v3, v6}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 90
    .local v7, "unit":Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;
    sget-object v9, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v7    # "unit":Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;
    :cond_1
    const-string v9, "HttpdnsDomain2IpParams"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668, \u89e3\u6790\u7ed3\u679c="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->sHttpdnsDomain2IpUnitList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v8, 0x1

    goto :goto_0

    .line 82
    .end local v6    # "ttl":I
    :cond_2
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 64
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
