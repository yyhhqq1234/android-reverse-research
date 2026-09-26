.class public Lcom/netease/pharos/qos/HighSpeedListInfo;
.super Ljava/lang/Object;
.source "HighSpeedListInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighSpeedListInfo"

.field private static sHighSpeedListInfo:Lcom/netease/pharos/qos/HighSpeedListInfo;


# instance fields
.field private mOriInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->sHighSpeedListInfo:Lcom/netease/pharos/qos/HighSpeedListInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListInfo;->mOriInfo:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method private create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 14
    .param p1, "sourcePort"    # Ljava/lang/String;
    .param p2, "sourcePortStepLength"    # Ljava/lang/String;
    .param p3, "lightenIp"    # Ljava/lang/String;
    .param p4, "lightenPort"    # Ljava/lang/String;
    .param p5, "lightenStepLength"    # Ljava/lang/String;
    .param p6, "stepNum"    # I

    .prologue
    .line 135
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v6, "result":Lorg/json/JSONObject;
    invoke-static/range {p4 .. p4}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v7

    .line 138
    .local v7, "tLightenPort":I
    invoke-static/range {p2 .. p2}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v10

    .line 139
    .local v10, "tSourcePortStepLength":I
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v9

    .line 140
    .local v9, "tSourcePort":I
    invoke-static/range {p5 .. p5}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v8

    .line 142
    .local v8, "tLightenStepLength":I
    const-string v11, "HighSpeedListInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "HighSpeedListInfo [create] param error lightenIp="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sourcePortStepLength="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", tLightenStepLength="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", step="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", tLightenPort="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", tSourcePort="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    if-lez p6, :cond_0

    const/4 v11, -0x1

    if-eq v11, v7, :cond_0

    const/4 v11, -0x1

    if-ne v11, v9, :cond_1

    .line 162
    :cond_0
    return-object v6

    .line 147
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p6

    if-ge v2, v0, :cond_0

    .line 148
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 149
    .local v3, "jsonArray":Lorg/json/JSONArray;
    mul-int v11, v2, v8

    add-int v4, v7, v11

    .line 150
    .local v4, "pLightenPort":I
    mul-int v11, v2, v10

    add-int v5, v9, v11

    .line 151
    .local v5, "pSourcePort":I
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 152
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 155
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Lorg/json/JSONException;
    const-string v11, "HighSpeedListInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "HighSpeedListInfo [create] Exception2="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/netease/pharos/qos/HighSpeedListInfo;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->sHighSpeedListInfo:Lcom/netease/pharos/qos/HighSpeedListInfo;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/netease/pharos/qos/HighSpeedListInfo;

    invoke-direct {v0}, Lcom/netease/pharos/qos/HighSpeedListInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->sHighSpeedListInfo:Lcom/netease/pharos/qos/HighSpeedListInfo;

    .line 45
    :cond_0
    sget-object v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->sHighSpeedListInfo:Lcom/netease/pharos/qos/HighSpeedListInfo;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "HighSpeedListInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HighSpeedListInfo [add] info ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListInfo;->mOriInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListInfo;->mOriInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public parse()Lorg/json/JSONObject;
    .locals 23

    .prologue
    .line 63
    const/16 v16, 0x0

    .line 65
    .local v16, "result":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->mOriInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->mOriInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 66
    :cond_0
    const-string v2, "HighSpeedListInfo"

    const-string v3, "HighSpeedListInfo [parse] param error"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v16

    .line 129
    .end local v16    # "result":Lorg/json/JSONObject;
    .local v17, "result":Lorg/json/JSONObject;
    :goto_0
    return-object v17

    .line 70
    .end local v17    # "result":Lorg/json/JSONObject;
    .restart local v16    # "result":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "HighSpeedListInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HighSpeedListInfo [parse] mOriInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->mOriInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v11, "firstData":Lorg/json/JSONObject;
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v18, "secondData":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/pharos/qos/HighSpeedListInfo;->mOriInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    const-string v2, "HighSpeedListInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "firstData="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    move-object/from16 v16, v11

    move-object/from16 v17, v16

    .line 129
    .end local v16    # "result":Lorg/json/JSONObject;
    .restart local v17    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 75
    .end local v17    # "result":Lorg/json/JSONObject;
    .restart local v16    # "result":Lorg/json/JSONObject;
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 77
    .local v19, "string":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    const-string v2, ":| "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "data":[Ljava/lang/String;
    if-eqz v9, :cond_2

    array-length v2, v9

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    .line 82
    const/4 v2, 0x3

    aget-object v2, v9, v2

    invoke-static {v2}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    aget-object v3, v9, v3

    invoke-static {v3}, Lcom/netease/pharos/util/Util;->string2Int(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 84
    .local v8, "step":I
    if-lez v8, :cond_2

    .line 86
    const/4 v2, 0x1

    aget-object v3, v9, v2

    const/4 v2, 0x2

    aget-object v4, v9, v2

    const/4 v2, 0x5

    aget-object v5, v9, v2

    const/4 v2, 0x6

    aget-object v6, v9, v2

    const/4 v2, 0x7

    aget-object v7, v9, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/netease/pharos/qos/HighSpeedListInfo;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v20

    .line 88
    .local v20, "thirdData":Lorg/json/JSONObject;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v9, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 89
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 90
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 92
    const/4 v2, 0x4

    aget-object v2, v9, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 93
    const/4 v2, 0x4

    aget-object v2, v9, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    const/4 v2, 0x4

    aget-object v2, v9, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 96
    .local v15, "pThirdData":Lorg/json/JSONObject;
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 98
    .local v13, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 105
    .end local v13    # "iterator":Ljava/util/Iterator;
    .end local v15    # "pThirdData":Lorg/json/JSONObject;
    :cond_4
    const/4 v2, 0x4

    aget-object v2, v9, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_5
    :goto_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    array-length v2, v9

    if-ge v12, v2, :cond_2

    .line 120
    const-string v2, "HighSpeedListInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \u4e2a\u5143\u7d20="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 99
    .end local v12    # "i":I
    .restart local v13    # "iterator":Ljava/util/Iterator;
    .restart local v15    # "pThirdData":Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 100
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 101
    .local v21, "value":Lorg/json/JSONArray;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 115
    .end local v13    # "iterator":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "pThirdData":Lorg/json/JSONObject;
    .end local v21    # "value":Lorg/json/JSONArray;
    :catch_0
    move-exception v10

    .line 116
    .local v10, "e":Lorg/json/JSONException;
    const-string v2, "HighSpeedListInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HighSpeedListInfo [parse] JSONException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 110
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_7
    const/4 v2, 0x4

    :try_start_2
    aget-object v2, v9, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const/4 v2, 0x0

    aget-object v2, v9, v2

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public start()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xb

    .line 59
    .local v0, "result":I
    return v0
.end method
