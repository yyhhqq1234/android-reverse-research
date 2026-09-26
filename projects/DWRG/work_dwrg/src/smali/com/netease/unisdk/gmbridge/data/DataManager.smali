.class public Lcom/netease/unisdk/gmbridge/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;
    }
.end annotation


# static fields
.field private static final GM_FILE_PREFIX:Ljava/lang/String; = "unisdk_gm_"

.field private static final PREFERENCES_KEY_GM_RED_IDS:Ljava/lang/String; = "gm_red_ids_"

.field private static final PREFERENCES_KEY_GM_TIME:Ljava/lang/String; = "gm_time_"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "uni_gm_bridge"

.field private static final TAG:Ljava/lang/String; = "gm_bridge DataManager"


# instance fields
.field private mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

.field private mBtnInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

.field private mGmData:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRedMenuIds:Ljava/lang/String;

.field private mRefer:Ljava/lang/String;

.field private mRoleId:Ljava/lang/String;

.field private mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleId"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 51
    const-string v0, "uni_gm_bridge"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 52
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_red_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/data/DataManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/data/DataManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge/data/DataManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/data/DataManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/data/DataManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/data/DataManager;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveData()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge/data/DataManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/data/DataManager;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Z)V

    return-void
.end method

.method private cacheOvertime()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 82
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gm_time_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 83
    .local v2, "time":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v4

    .line 86
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 87
    .local v0, "nowTime":J
    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "unisdk_gm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadData(Z)V
    .locals 5
    .param p1, "needParseMenu"    # Z

    .prologue
    .line 192
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->readCache()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 195
    :cond_0
    const-string v2, "gm_bridge DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->requestData(Z)V

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "jsonData":Lorg/json/JSONObject;
    invoke-direct {p0, v1, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v1    # "jsonData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "gm_bridge DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GmData JSON error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 207
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->requestData(Z)V

    goto :goto_0
.end method

.method private parseData(Lorg/json/JSONObject;Z)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "needParseMenu"    # Z

    .prologue
    .line 285
    if-eqz p2, :cond_0

    .line 286
    :try_start_0
    const-string v2, "menu"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 287
    .local v1, "menuArray":Lorg/json/JSONArray;
    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseMenu(Lorg/json/JSONArray;)V

    .line 295
    .end local v1    # "menuArray":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v2, "refer"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setRefer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "gm_bridge DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseData error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseData(Z)V
    .locals 5
    .param p1, "needParseMenu"    # Z

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "jsonData":Lorg/json/JSONObject;
    invoke-direct {p0, v1, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "jsonData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "gm_bridge DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GmData JSON error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseMenu(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "menuArray"    # Lorg/json/JSONArray;

    .prologue
    .line 298
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 299
    .local v2, "len":I
    if-lez v2, :cond_1

    .line 300
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    .line 302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 303
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 304
    .local v3, "menuItem":Lorg/json/JSONObject;
    new-instance v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;-><init>()V

    .line 305
    .local v0, "btnInfo":Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    .line 306
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->name:Ljava/lang/String;

    .line 307
    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    .line 308
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mContext:Landroid/content/Context;

    const-string v5, "icon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->getBtnIcon(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "btnInfo":Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    .end local v3    # "menuItem":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v4, v5}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setBtnInfos(Ljava/util/List;)V

    .line 313
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private readCache()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "path":Ljava/lang/String;
    const-string v2, "gm_bridge DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read cache : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "textFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestData(Z)V
    .locals 3
    .param p1, "needParseMenu"    # Z

    .prologue
    .line 213
    const-string v0, "gm_bridge DataManager"

    const-string v1, "request data from server"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 216
    const-string v0, "gm_bridge DataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveData()V

    .line 218
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->parseData(Z)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    new-instance v1, Lcom/netease/unisdk/gmbridge/data/DataManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager$1;-><init>(Lcom/netease/unisdk/gmbridge/data/DataManager;Z)V

    invoke-interface {v0, v1}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;->getToken(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;)V

    goto :goto_0
.end method

.method private saveData()V
    .locals 8

    .prologue
    .line 234
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "jsonData":Lorg/json/JSONObject;
    const-string v3, "expireTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 241
    .local v4, "time":J
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 242
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gm_time_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    const-string v3, "gm_bridge DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save expireTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const-string v3, "gm_bridge DataManager"

    const-string v6, "save cache data success"

    invoke-static {v3, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "jsonData":Lorg/json/JSONObject;
    .end local v4    # "time":J
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "gm_bridge DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveData error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveRedIds()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_red_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public addRedIds(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "gm_bridge DataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRedIds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 100
    :goto_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveRedIds()V

    goto :goto_0

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->clearBtnInfos()V

    .line 323
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public clearBtnInfos()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    .line 320
    :cond_0
    return-void
.end method

.method public getBtnInfos(Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->cacheOvertime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "path":Ljava/lang/String;
    const-string v1, "gm_bridge DataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheOvertime,delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 177
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    .line 183
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 184
    :cond_1
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    .line 185
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->loadData(Z)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setBtnInfos(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getRedIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getRefer(Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->cacheOvertime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "path":Ljava/lang/String;
    const-string v1, "gm_bridge DataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheOvertime,delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 160
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 161
    iput-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    .line 163
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mDataCallback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    .line 165
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->loadData(Z)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setRefer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRedMenu(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeRedId(Ljava/lang/String;)V
    .locals 6
    .param p1, "deleteId"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const-string v2, ""

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->saveRedIds()V

    .line 152
    :cond_1
    return-void

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "ids":[Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    .line 138
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 139
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_3
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 143
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_1
.end method

.method public setAsynTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V
    .locals 0
    .param p1, "asynTokenRequest"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mAsynTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;

    .line 79
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 3
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRefer:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mBtnInfos:Ljava/util/List;

    .line 67
    :cond_2
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mGmData:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gm_red_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRoleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mRedMenuIds:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTokenRequest(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;)V
    .locals 0
    .param p1, "tokenRequest"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/data/DataManager;->mTokenRequest:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenRequest;

    .line 75
    return-void
.end method
