.class public Lcom/netease/pharos/qos/CheckHighSpeedListCore;
.super Ljava/lang/Object;
.source "CheckHighSpeedListCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighSpeedListCore"


# instance fields
.field private mData:Lorg/json/JSONObject;

.field private mHighSpeedIpCount:I

.field private mHighSpeedUdpResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIp:Ljava/lang/String;

.field private mListener:Lcom/netease/pharos/link/LinkCheckListener;

.field private mPort:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    .line 42
    iput-object v2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    .line 48
    iput v1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;-><init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V

    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 53
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/netease/pharos/qos/CheckHighSpeedListCore;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    return v0
.end method

.method static synthetic access$4(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->sort()I

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    .line 164
    iput v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIndex:I

    .line 165
    return-void
.end method

.method private sort()I
    .locals 6

    .prologue
    .line 168
    const/16 v1, 0xb

    .line 170
    .local v1, "result":I
    iget-object v3, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 171
    :cond_0
    const-string v3, "HighSpeedListCore"

    const-string v4, "CheckHighSpeedList [chooseBest] \u53c2\u6570\u9519\u8bef1"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/16 v1, 0xe

    move v2, v1

    .line 214
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 177
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    new-instance v4, Lcom/netease/pharos/qos/CheckHighSpeedListCore$2;

    invoke-direct {v4, p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$2;-><init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    iget-object v3, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    new-instance v4, Lcom/netease/pharos/qos/CheckHighSpeedListCore$3;

    invoke-direct {v4, p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore$3;-><init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 214
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 210
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HighSpeedListCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CheckHighSpeedList [chooseBest] Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method


# virtual methods
.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    .line 60
    return-void
.end method

.method public start()I
    .locals 24

    .prologue
    .line 101
    const/16 v19, 0xb

    .line 102
    .local v19, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->reset()V

    .line 104
    const-string v1, "HighSpeedListCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CheckHighSpeedList [start] \u53c2\u6570 mIp="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mPort="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mData="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    const-string v1, "HighSpeedListCore"

    const-string v2, "CheckHighSpeedList [start] \u53c2\u6570\u9519\u8bef1"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v19, 0xe

    move/from16 v20, v19

    .line 159
    .end local v19    # "result":I
    .local v20, "result":I
    :goto_0
    return v20

    .line 111
    .end local v20    # "result":I
    .restart local v19    # "result":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    const-string v1, "HighSpeedListCore"

    const-string v2, "CheckHighSpeedList [start] \u53c2\u6570\u9519\u8bef2"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/16 v19, 0xe

    move/from16 v20, v19

    .line 114
    .end local v19    # "result":I
    .restart local v20    # "result":I
    goto :goto_0

    .line 117
    .end local v20    # "result":I
    .restart local v19    # "result":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mData:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 119
    .local v14, "data":Lorg/json/JSONObject;
    if-eqz v14, :cond_4

    .line 120
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 121
    .local v16, "iterator":Ljava/util/Iterator;
    const/16 v21, 0x0

    .line 123
    .local v21, "udpStart":Z
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 150
    if-eqz v21, :cond_4

    .line 151
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/link/NetmonProxy;->start()I

    .line 156
    .end local v16    # "iterator":Ljava/util/Iterator;
    .end local v21    # "udpStart":Z
    :cond_4
    const/16 v19, 0x0

    move/from16 v20, v19

    .line 159
    .end local v19    # "result":I
    .restart local v20    # "result":I
    goto :goto_0

    .line 124
    .end local v20    # "result":I
    .restart local v16    # "iterator":Ljava/util/Iterator;
    .restart local v19    # "result":I
    .restart local v21    # "udpStart":Z
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 125
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 127
    .local v22, "value":Lorg/json/JSONObject;
    const-string v1, "HighSpeedListCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CheckHighSpeedList [start] key="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", value="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mPort="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 132
    .local v15, "info":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 133
    .local v3, "ip":Ljava/lang/String;
    const/16 v18, -0x1

    .line 135
    .local v18, "port":I
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 136
    const-string v1, "HighSpeedListCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "info="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", 0="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", 1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v18

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x1

    move/from16 v0, v18

    if-eq v1, v0, :cond_3

    .line 141
    const/16 v21, 0x1

    .line 142
    move-object/from16 v0, p0

    iget v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mHighSpeedIpCount:I

    .line 143
    const-string v1, "HighSpeedListCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CheckHighSpeedList [start]  \u63d0\u4ea4udp\u63a2\u6d4b \u53c2\u6570 ip="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", port="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", \u6e38\u620f\u670d\u52a1\u5668port="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v4, 0x1f41

    const/4 v5, 0x4

    const/16 v6, 0x320

    const/16 v7, 0x200

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->mPort:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v1 .. v13}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILjava/lang/String;Lcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
