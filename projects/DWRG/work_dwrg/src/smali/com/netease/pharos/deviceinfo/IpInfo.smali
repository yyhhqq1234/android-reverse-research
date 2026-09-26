.class public Lcom/netease/pharos/deviceinfo/IpInfo;
.super Ljava/lang/Object;
.source "IpInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpInfo"

.field private static sIpInfo:Lcom/netease/pharos/deviceinfo/IpInfo;


# instance fields
.field private mIp_addr:Ljava/lang/String;

.field private mIp_continent:Ljava/lang/String;

.field private mIp_country:Ljava/lang/String;

.field private mIp_payload:Ljava/lang/String;

.field private mIp_province:Ljava/lang/String;

.field private mIp_sig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/deviceinfo/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceinfo/IpInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_addr:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_continent:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_country:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_province:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_payload:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_sig:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceinfo/IpInfo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netease/pharos/deviceinfo/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceinfo/IpInfo;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/pharos/deviceinfo/IpInfo;

    invoke-direct {v0}, Lcom/netease/pharos/deviceinfo/IpInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceinfo/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceinfo/IpInfo;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceinfo/IpInfo;->sIpInfo:Lcom/netease/pharos/deviceinfo/IpInfo;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public getmIp_addr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_addr:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_continent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_continent:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_country()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_country:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_payload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_payload:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_province()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_province:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_sig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_sig:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 10
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v7, "IpInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u89e3\u6790\u5185\u5bb9---"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 43
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "data":Lorg/json/JSONObject;
    const-string v7, "payload"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "payload"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "payload":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    .line 47
    .local v2, "jsonStr":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v4, "payloadObj":Lorg/json/JSONObject;
    const-string v7, "ip"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "ip"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iput-object v7, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_addr:Ljava/lang/String;

    .line 50
    const/4 v5, 0x0

    .line 51
    .local v5, "temp1":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 53
    .local v6, "temp2":Lorg/json/JSONObject;
    const-string v7, "subdivisions"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 54
    const-string v7, "subdivisions"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 56
    const-string v7, "names"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    const-string v7, "names"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 59
    const-string v7, "en"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    const-string v7, "en"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_province:Ljava/lang/String;

    .line 65
    :cond_0
    const-string v7, "country"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    const-string v7, "country"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 68
    const-string v7, "names"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    const-string v7, "names"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 71
    const-string v7, "en"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    const-string v7, "en"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_country:Ljava/lang/String;

    .line 77
    :cond_1
    const-string v7, "continent"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    const-string v7, "continent"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 80
    const-string v7, "names"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    const-string v7, "names"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 83
    const-string v7, "en"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    const-string v7, "en"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_continent:Ljava/lang/String;

    .line 89
    :cond_2
    iput-object v3, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_payload:Ljava/lang/String;

    .line 90
    const-string v7, "sig"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "sig"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    iput-object v7, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_sig:Ljava/lang/String;

    .line 97
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "payload":Ljava/lang/String;
    .end local v4    # "payloadObj":Lorg/json/JSONObject;
    .end local v5    # "temp1":Lorg/json/JSONObject;
    .end local v6    # "temp2":Lorg/json/JSONObject;
    :cond_3
    :goto_3
    return-void

    .line 44
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_4
    const-string v3, ""

    goto/16 :goto_0

    .line 48
    .restart local v2    # "jsonStr":Ljava/lang/String;
    .restart local v3    # "payload":Ljava/lang/String;
    .restart local v4    # "payloadObj":Lorg/json/JSONObject;
    :cond_5
    const-string v7, ""

    goto/16 :goto_1

    .line 90
    .restart local v5    # "temp1":Lorg/json/JSONObject;
    .restart local v6    # "temp2":Lorg/json/JSONObject;
    :cond_6
    const-string v7, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 92
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "payload":Ljava/lang/String;
    .end local v4    # "payloadObj":Lorg/json/JSONObject;
    .end local v5    # "temp1":Lorg/json/JSONObject;
    .end local v6    # "temp2":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "IpInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u89e3\u6790\u5185\u5bb9="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public setmIp_addr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_addr"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_addr:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setmIp_continent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_continent"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_continent:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setmIp_country(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_country"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_country:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setmIp_payload(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_payload"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_payload:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setmIp_province(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_province"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_province:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setmIp_sig(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_sig"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_sig:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "mIp_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "mIp_continent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_continent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "mIp_country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, "mIp_province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "mIp_payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, "mIp_sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/IpInfo;->mIp_sig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
