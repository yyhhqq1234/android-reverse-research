.class public Lcom/netease/pharos/deviceinfo/NetDnsInfo;
.super Ljava/lang/Object;
.source "NetDnsInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetDnsInfo"

.field private static sNetDnsInfo:Lcom/netease/pharos/deviceinfo/NetDnsInfo;


# instance fields
.field private mDns:Ljava/lang/String;

.field private mDns_city:Ljava/lang/String;

.field private mDns_isp:Ljava/lang/String;

.field private mDns_province:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIp_city:Ljava/lang/String;

.field private mIp_isp:Ljava/lang/String;

.field private mIp_province:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;

.field private mRes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_province:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_city:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_province:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mRes:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_city:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mMsg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceinfo/NetDnsInfo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    invoke-direct {v0}, Lcom/netease/pharos/deviceinfo/NetDnsInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    .line 35
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    return-object v0
.end method

.method public static getsNetDnsInfo()Lcom/netease/pharos/deviceinfo/NetDnsInfo;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    return-object v0
.end method

.method public static setsNetDnsInfo(Lcom/netease/pharos/deviceinfo/NetDnsInfo;)V
    .locals 0
    .param p0, "sNetDnsInfo"    # Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    .prologue
    .line 79
    sput-object p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->sNetDnsInfo:Lcom/netease/pharos/deviceinfo/NetDnsInfo;

    .line 80
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getMmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns_city()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_city:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns_isp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    return-object v0
.end method

.method public getmDns_province()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_province:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_city()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_city:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_isp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp_province()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_province:Ljava/lang/String;

    return-object v0
.end method

.method public getmRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mRes:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 5
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v2, "NetDnsInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u89e3\u6790\u5185\u5bb9---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "data":Lorg/json/JSONObject;
    const-string v2, "dns_province"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "dns_province"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_province:Ljava/lang/String;

    .line 47
    const-string v2, "ip_city"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ip_city"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_city:Ljava/lang/String;

    .line 48
    const-string v2, "ip"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ip"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp:Ljava/lang/String;

    .line 49
    const-string v2, "ip_province"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ip_province"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_province:Ljava/lang/String;

    .line 50
    const-string v2, "ip_isp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ip_isp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    .line 51
    const-string v2, "res"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "res"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mRes:Ljava/lang/String;

    .line 52
    const-string v2, "dns_city"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "dns_city"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_city:Ljava/lang/String;

    .line 53
    const-string v2, "dns_isp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "dns_isp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    .line 54
    const-string v2, "dns"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "dns"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns:Ljava/lang/String;

    .line 55
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    iput-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mMsg:Ljava/lang/String;

    .line 61
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_a
    return-void

    .line 46
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_1
    const-string v2, ""

    goto/16 :goto_0

    .line 47
    :cond_2
    const-string v2, ""

    goto/16 :goto_1

    .line 48
    :cond_3
    const-string v2, ""

    goto :goto_2

    .line 49
    :cond_4
    const-string v2, ""

    goto :goto_3

    .line 50
    :cond_5
    const-string v2, ""

    goto :goto_4

    .line 51
    :cond_6
    const-string v2, ""

    goto :goto_5

    .line 52
    :cond_7
    const-string v2, ""

    goto :goto_6

    .line 53
    :cond_8
    const-string v2, ""

    goto :goto_7

    .line 54
    :cond_9
    const-string v2, ""

    goto :goto_8

    .line 55
    :cond_a
    const-string v2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 57
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a
.end method

.method public setMmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "mmsg"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mMsg:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setmDns(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDns"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setmDns_city(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDns_city"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_city:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setmDns_isp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDns_isp"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setmDns_province(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDns_province"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_province:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setmIp_city(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_city"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_city:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setmIp_isp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_isp"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setmIp_province(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp_province"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_province:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setmRes(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRes"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mRes:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, "mDns_province = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const-string v1, "mIp_city = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, "mIp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v1, "mIp_province = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "mIp_isp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mIp_isp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v1, "mRes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mRes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, "mDns_city = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string v1, "mDns_isp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns_isp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v1, "mDns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mDns:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v1, "mmsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/NetDnsInfo;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
