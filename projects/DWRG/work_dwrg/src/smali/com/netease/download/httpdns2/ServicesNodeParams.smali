.class public Lcom/netease/download/httpdns2/ServicesNodeParams;
.super Ljava/lang/Object;
.source "ServicesNodeParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServicesNodeParams"

.field private static sServicesNodeParams:Lcom/netease/download/httpdns2/ServicesNodeParams;


# instance fields
.field private mHttpdnsServicesUnitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/httpdns2/ServicesNodeParams;->sServicesNodeParams:Lcom/netease/download/httpdns2/ServicesNodeParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public static getInstances()Lcom/netease/download/httpdns2/ServicesNodeParams;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/netease/download/httpdns2/ServicesNodeParams;->sServicesNodeParams:Lcom/netease/download/httpdns2/ServicesNodeParams;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/netease/download/httpdns2/ServicesNodeParams;

    invoke-direct {v0}, Lcom/netease/download/httpdns2/ServicesNodeParams;-><init>()V

    sput-object v0, Lcom/netease/download/httpdns2/ServicesNodeParams;->sServicesNodeParams:Lcom/netease/download/httpdns2/ServicesNodeParams;

    .line 39
    :cond_0
    sget-object v0, Lcom/netease/download/httpdns2/ServicesNodeParams;->sServicesNodeParams:Lcom/netease/download/httpdns2/ServicesNodeParams;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public contain(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, "result":Z
    iget-object v2, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    :cond_1
    return v1

    .line 47
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;

    .line 49
    .local v0, "httpdnsServicesUnit":Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    iget-object v3, v0, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;->zone:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "unit":Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    iget-object v2, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 72
    :cond_1
    :goto_0
    return-object v1

    .line 63
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;

    .line 65
    .local v0, "httpdnsServicesUnit":Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    iget-object v3, v0, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;->zone:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    move-object v1, v0

    .line 67
    goto :goto_0
.end method

.method public getHttpdnsServicesUnitList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init(Ljava/lang/String;)Z
    .locals 14
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 85
    const-string v11, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668\uff0c\u521d\u59cb\u5316\u6570\u636e"

    invoke-static {v11}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 88
    const-string v11, "ServicesNodeParams"

    const-string v12, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668\uff0c\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return v10

    .line 94
    :cond_0
    const/4 v3, 0x0

    .line 97
    .local v3, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    .local v6, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "keys":Ljava/util/Iterator;
    move-object v4, v3

    .line 100
    .end local v3    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 117
    const-string v11, "ServicesNodeParams"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668 , \u89e3\u6790\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v10, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 102
    .local v9, "zone":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .end local v4    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    invoke-virtual {p0, v9}, Lcom/netease/download/httpdns2/ServicesNodeParams;->contain(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 105
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 107
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v1, v11, :cond_3

    .line 112
    new-instance v8, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;

    invoke-direct {v8, v9, v3}, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    .local v8, "unit":Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    iget-object v11, p0, Lcom/netease/download/httpdns2/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "unit":Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    :cond_2
    move-object v4, v3

    .end local v3    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 108
    .end local v4    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v3    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "ip":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    .end local v1    # "i":I
    .end local v2    # "ip":Ljava/lang/String;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "keys":Ljava/util/Iterator;
    .end local v9    # "zone":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "keys":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method
