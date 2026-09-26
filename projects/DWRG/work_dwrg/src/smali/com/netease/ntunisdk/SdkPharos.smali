.class public Lcom/netease/ntunisdk/SdkPharos;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkPharos.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "pharos"

.field private static final TAG:Ljava/lang/String; = "SdkPharos"

.field private static final VER:Ljava/lang/String; = "1.1.5"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkPharos;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkPharos;->mForceOpen:Z

    .line 49
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkPharos;->mContext:Landroid/content/Context;

    .line 65
    const-string v0, "INNER_MODE_NO_PAY"

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkPharos;->setPropInt(Ljava/lang/String;I)V

    .line 66
    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkPharos;->setPropInt(Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method private checkCtx()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPharos;->myCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkPharos;->myCtx:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .param p1, "order"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 128
    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 16
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v13, "SdkPharos"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ntExtendFunc..., param json:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/ntunisdk/SdkPharos;->mContext:Landroid/content/Context;

    if-nez v13, :cond_1

    .line 155
    const-string v13, "SdkPharos"

    const-string v14, "SdkPharos Context is null"

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 160
    const-string v13, "SdkPharos"

    const-string v14, "SdkPharos params error"

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    const/4 v6, 0x0

    .line 167
    .local v6, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v6    # "obj":Lorg/json/JSONObject;
    .local v7, "obj":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    :try_start_1
    const-string v13, "force"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 170
    const-string v13, "force"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/netease/ntunisdk/SdkPharos;->mForceOpen:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    move-object v6, v7

    .line 178
    .end local v7    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    :goto_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKSwitcher;->getInstance()Lcom/netease/ntunisdk/base/SDKSwitcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/ntunisdk/base/SDKSwitcher;->getSDKSwitcherMap()Ljava/util/HashMap;

    move-result-object v11

    .line 179
    .local v11, "switcherMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 181
    .local v4, "isOpen":Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/netease/ntunisdk/SdkPharos;->mForceOpen:Z

    if-eqz v13, :cond_5

    .line 182
    const/4 v4, 0x1

    .line 191
    :cond_4
    :goto_2
    if-nez v4, :cond_6

    .line 192
    const-string v13, "SdkPharos"

    const-string v14, "SdkPharos is not open"

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v4    # "isOpen":Z
    .end local v11    # "switcherMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v13, "SdkPharos"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SdkPharos extendFunc Exception="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/netease/ntunisdk/SdkPharos;->mForceOpen:Z

    goto :goto_1

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "isOpen":Z
    .restart local v11    # "switcherMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_5
    const-string v13, "pharos"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 187
    const-string v13, "pharos"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    .line 198
    :cond_6
    if-eqz v6, :cond_0

    :try_start_2
    const-string v13, "methodId"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 199
    const-string v13, "methodId"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "methodId":Ljava/lang/String;
    const-string v13, "SdkPharos"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SdkPharos methodId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "pharosprobe"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 204
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v13

    const-string v14, "JF_GAMEID"

    invoke-interface {v13, v14}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "project":Ljava/lang/String;
    const/4 v8, 0x1

    .line 207
    .local v8, "options":I
    const-string v13, "options"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 208
    const-string v13, "options"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 211
    :cond_7
    const/4 v1, 0x0

    .line 212
    .local v1, "decision":I
    const-string v13, "decision"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 213
    const-string v13, "decision"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    :cond_8
    const/4 v3, 0x0

    .line 217
    .local v3, "ip":Ljava/lang/String;
    const-string v13, "ip"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 218
    const-string v13, "ip"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    :cond_9
    const/4 v9, 0x0

    .line 222
    .local v9, "port":Ljava/lang/String;
    const-string v13, "port"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 223
    const-string v13, "port"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 226
    :cond_a
    const/4 v12, 0x0

    .line 227
    .local v12, "url":Ljava/lang/String;
    const-string v13, "url"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 228
    const-string v13, "url"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 231
    :cond_b
    const-string v13, "project"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 232
    const-string v13, "project"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 235
    :cond_c
    const-string v13, "SdkPharos"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SdkPharos project="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", options="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", decision="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ip="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", port="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", url="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 238
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/ntunisdk/SdkPharos;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v10}, Lcom/netease/pharos/PharosProxy;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/netease/pharos/PharosProxy;->setmOption(I)V

    .line 240
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/netease/pharos/PharosProxy;->setmDecision(I)V

    .line 241
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/netease/pharos/PharosProxy;->setmIp(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/netease/pharos/PharosProxy;->setmPort(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/netease/pharos/PharosProxy;->setmHighSpeedUrl(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/pharos/PharosProxy;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 251
    .end local v1    # "decision":I
    .end local v3    # "ip":Ljava/lang/String;
    .end local v5    # "methodId":Ljava/lang/String;
    .end local v8    # "options":I
    .end local v9    # "port":Ljava/lang/String;
    .end local v10    # "project":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "decision":I
    .restart local v3    # "ip":Ljava/lang/String;
    .restart local v5    # "methodId":Ljava/lang/String;
    .restart local v8    # "options":I
    .restart local v9    # "port":Ljava/lang/String;
    .restart local v10    # "project":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_d
    :try_start_3
    const-string v13, "SdkPharos"

    const-string v14, "SdkPharos params project is null"

    invoke-static {v13, v14}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 173
    .end local v1    # "decision":I
    .end local v3    # "ip":Ljava/lang/String;
    .end local v4    # "isOpen":Z
    .end local v5    # "methodId":Ljava/lang/String;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "options":I
    .end local v9    # "port":Ljava/lang/String;
    .end local v10    # "project":Ljava/lang/String;
    .end local v11    # "switcherMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v12    # "url":Ljava/lang/String;
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    move-object v6, v7

    .end local v7    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_3
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "pharos"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkPharos;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "SESSION"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkPharos;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "not_login"

    goto :goto_0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkPharos;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, ""

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UIN"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkPharos;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "1.1.5"

    return-object v0
.end method

.method public getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, "1.1.5"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2
    .param p1, "initListner"    # Lcom/netease/ntunisdk/base/OnFinishInitListener;

    .prologue
    .line 71
    const-string v0, "SdkPharos"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    .line 79
    return-void
.end method

.method public login()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public openManager()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method
