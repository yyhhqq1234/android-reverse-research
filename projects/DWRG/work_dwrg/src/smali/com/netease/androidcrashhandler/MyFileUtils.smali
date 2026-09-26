.class public Lcom/netease/androidcrashhandler/MyFileUtils;
.super Ljava/lang/Object;
.source "MyFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/MyFileUtils$MyFilesUtilsHolder;
    }
.end annotation


# static fields
.field static final ANR_FILE_PATH:Ljava/lang/String; = "/data/anr/traces.txt"

.field static final ANR_TIME_RECORD_FILE_NAME:Ljava/lang/String; = "MyANRTime.txt"

.field static final BASICINFOS_JSON_NAME:Ljava/lang/String; = "BasicInfos"

.field private static final BUFFER_SIZE:I = 0x1000

.field static final CFG_SUFFIX:Ljava/lang/String; = ".javacfg"

.field static final CONFIG_ARRAY_NAME:Ljava/lang/String; = "ConfigArray"

.field static final CONFIG_FILE_NAME:Ljava/lang/String; = "MyConfig.txt"

.field static final CRLF:Ljava/lang/String;

.field static final DI_SUFFIX:Ljava/lang/String; = ".di"

.field static final DMP_SUFFIX:Ljava/lang/String; = ".dmp"

.field static final FILENAME_JSON_NAME:Ljava/lang/String; = "FileName"

.field static final FILES_JSON_NAME:Ljava/lang/String; = "Files"

.field static final JE_SUFFIX:Ljava/lang/String; = ".aci"

.field static final JNI_CFG_SUFFIX:Ljava/lang/String; = ".jnicfg"

.field static final PARAMS_JSON_NAME:Ljava/lang/String; = "Params"

.field static final SEPARATOR:Ljava/lang/String;

.field static final UPLOADTYPE_JSON_NAME:Ljava/lang/String; = "UploadType"

.field static final USERDESCS_JSON_NAME:Ljava/lang/String; = "UserDescs"

.field static final ZIP_SUFFIX:Ljava/lang/String; = ".zip"


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/netease/androidcrashhandler/MyFileUtils;->SEPARATOR:Ljava/lang/String;

    .line 56
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/MyFileUtils;->CRLF:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/androidcrashhandler/MyFileUtils;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/MyFileUtils;-><init>()V

    return-void
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 896
    const-wide/16 v0, -0x1

    .line 898
    .local v0, "data":J
    if-eqz p0, :cond_0

    .line 899
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 900
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-wide/16 v4, -0x1

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 903
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-wide v0
.end method

.method static getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/netease/androidcrashhandler/MyFileUtils$MyFilesUtilsHolder;->INSTANCE:Lcom/netease/androidcrashhandler/MyFileUtils;

    return-object v0
.end method

.method public static orderByDate(Ljava/lang/String;)[Ljava/io/File;
    .locals 8
    .param p0, "fliePath"    # Ljava/lang/String;

    .prologue
    .line 845
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "orderByDate param = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    const-string v3, "trace"

    const-string v4, "orderByDate param error"

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v2, 0x0

    .line 881
    :cond_0
    :goto_0
    return-object v2

    .line 851
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 852
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 853
    .local v2, "fs":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 854
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 855
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 856
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_3

    .line 862
    :cond_2
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 863
    new-instance v3, Lcom/netease/androidcrashhandler/MyFileUtils$2;

    invoke-direct {v3}, Lcom/netease/androidcrashhandler/MyFileUtils$2;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 856
    :cond_3
    aget-object v1, v2, v3

    .line 857
    .local v1, "file2":Ljava/io/File;
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file2 name="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setInfo(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # J

    .prologue
    .line 887
    if-eqz p0, :cond_0

    .line 888
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 889
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 890
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 891
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 893
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method config2File(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .prologue
    .line 399
    const/16 v17, 0x1

    .line 400
    .local v17, "result":Z
    const/4 v13, 0x0

    .line 402
    .local v13, "jsonData":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 403
    const/16 v20, 0x0

    .line 461
    :goto_0
    return v20

    .line 407
    :cond_0
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 409
    .local v14, "obj":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v15

    .line 410
    .local v15, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 411
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 412
    .local v16, "paramsObj":Lorg/json/JSONObject;
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 415
    const-string v20, "Params"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    .end local v16    # "paramsObj":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getUserDesc()Ljava/util/Map;

    move-result-object v18

    .line 419
    .local v18, "userdesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    .line 420
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 421
    .local v19, "userdescObj":Lorg/json/JSONObject;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_6

    .line 424
    const-string v20, "UserDescs"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    .end local v19    # "userdescObj":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v4

    .line 428
    .local v4, "basicinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    .line 429
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .local v5, "basicinfoObj":Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_7

    .line 433
    const-string v20, "BasicInfos"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    .end local v5    # "basicinfoObj":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v11

    .line 437
    .local v11, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_4

    .line 438
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 439
    .local v12, "filesArray":Lorg/json/JSONArray;
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 445
    const-string v20, "Files"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    .end local v12    # "filesArray":Lorg/json/JSONArray;
    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 449
    .local v3, "array":Lorg/json/JSONArray;
    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 451
    new-instance v20, Lorg/json/JSONStringer;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v20

    const-string v21, "ConfigArray"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v20

    .line 452
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 454
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 455
    .local v10, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/netease/androidcrashhandler/MyFileUtils;->str2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 456
    const-string v20, "JSONFILE"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v4    # "basicinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "filename":Ljava/lang/String;
    .end local v11    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v15    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "userdesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_5
    move/from16 v20, v17

    .line 461
    goto/16 :goto_0

    .line 412
    .restart local v14    # "obj":Lorg/json/JSONObject;
    .restart local v15    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "paramsObj":Lorg/json/JSONObject;
    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 413
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 457
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "obj":Lorg/json/JSONObject;
    .end local v15    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "paramsObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 458
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 459
    const/16 v17, 0x0

    goto :goto_5

    .line 421
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v14    # "obj":Lorg/json/JSONObject;
    .restart local v15    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "userdesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "userdescObj":Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 422
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 430
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "userdescObj":Lorg/json/JSONObject;
    .restart local v4    # "basicinfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "basicinfoObj":Lorg/json/JSONObject;
    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 431
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 439
    .end local v5    # "basicinfoObj":Lorg/json/JSONObject;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    .restart local v12    # "filesArray":Lorg/json/JSONArray;
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 440
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 441
    .local v9, "fileObj":Lorg/json/JSONObject;
    const-string v20, "FileName"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v22, "UploadType"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;

    invoke-virtual/range {v20 .. v20}, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->getUploadType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 608
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 611
    :cond_0
    return-void
.end method

.method deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 596
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .local v0, "file":Ljava/io/File;
    const-string v1, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "======file path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 600
    :cond_0
    return-void
.end method

.method public file2Properties(Ljava/io/File;)Ljava/util/Properties;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 317
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 319
    .local v2, "info":Ljava/util/Properties;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 320
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "info":Ljava/util/Properties;
    :goto_0
    return-object v2

    .line 321
    .restart local v2    # "info":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method file2Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 367
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 370
    .local v6, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 372
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 373
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 374
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 379
    if-eqz v5, :cond_0

    .line 380
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 381
    :cond_0
    if-eqz v2, :cond_1

    .line 382
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 388
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v8

    .line 375
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    sget-object v8, Lcom/netease/androidcrashhandler/MyFileUtils;->CRLF:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 378
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 379
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_2
    if-eqz v4, :cond_3

    .line 380
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 381
    :cond_3
    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 383
    :cond_4
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    const/4 v8, 0x0

    goto :goto_1

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 378
    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v8

    goto :goto_2

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method getANRContent(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .param p1, "bundleID"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 724
    :cond_0
    const/16 v16, 0x0

    .line 822
    :cond_1
    :goto_0
    return-object v16

    .line 725
    :cond_2
    const/4 v8, 0x0

    .line 726
    .local v8, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 727
    .local v13, "reader":Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 728
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 730
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "-----"

    .line 733
    .local v3, "PROCESS_SEP":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v11, ""

    .line 735
    .local v11, "line":Ljava/lang/String;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 736
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 737
    .local v2, "ANRMatch":Z
    const/4 v5, 0x0

    .line 741
    .local v5, "firstLine":Ljava/lang/String;
    const/4 v12, 0x0

    .line 742
    .local v12, "pLine":I
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 751
    :cond_4
    :goto_1
    const-string v20, "trace"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "line = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v20, "-----"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 753
    move-object v5, v11

    .line 754
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 755
    const-string v20, "trace"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "line = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", bundleID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 757
    const/4 v2, 0x1

    .line 777
    :goto_2
    const-string v20, "trace"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ANRMatch = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    if-eqz v2, :cond_d

    .line 780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    .local v6, "fixedStr":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 782
    .local v7, "hasReachedFixedStr":Z
    const/4 v10, 0x0

    .line 783
    .local v10, "isFixedStrFinished":Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 784
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 785
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .local v18, "sb":Ljava/lang/StringBuilder;
    :try_start_4
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 786
    .local v19, "strs":[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v21, 0x4

    aget-object v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5

    aget-object v21, v19, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_5
    sget-object v20, Lcom/netease/androidcrashhandler/MyFileUtils;->CRLF:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    if-eqz v7, :cond_6

    if-nez v10, :cond_7

    .line 795
    :cond_6
    const-string v20, "at"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 796
    const/4 v7, 0x1

    .line 797
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_7
    :goto_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 802
    const-string v20, "-----"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 803
    :cond_8
    sget-object v20, Lcom/netease/androidcrashhandler/MyFileUtils;->CRLF:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/MyFileUtils;->str2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 812
    if-eqz v14, :cond_9

    .line 813
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 814
    :cond_9
    if-eqz v9, :cond_1

    .line 815
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 817
    :catch_0
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v17, v18

    .end local v18    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .line 818
    .end local v2    # "ANRMatch":Z
    .end local v5    # "firstLine":Ljava/lang/String;
    .end local v6    # "fixedStr":Ljava/lang/StringBuilder;
    .end local v7    # "hasReachedFixedStr":Z
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "isFixedStrFinished":Z
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "pLine":I
    .end local v19    # "strs":[Ljava/lang/String;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v8    # "is":Ljava/io/InputStream;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    const-string v20, "trace"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Exception = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 743
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "ANRMatch":Z
    .restart local v5    # "firstLine":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "pLine":I
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 744
    const/16 v20, 0x64

    move/from16 v0, v20

    if-ne v12, v0, :cond_3

    goto/16 :goto_1

    .line 762
    :cond_b
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v11

    if-nez v11, :cond_4

    goto/16 :goto_2

    .line 798
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "fixedStr":Ljava/lang/StringBuilder;
    .restart local v7    # "hasReachedFixedStr":Z
    .restart local v10    # "isFixedStrFinished":Z
    .restart local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    .restart local v19    # "strs":[Ljava/lang/String;
    :cond_c
    if-eqz v7, :cond_7

    .line 799
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 812
    .end local v6    # "fixedStr":Ljava/lang/StringBuilder;
    .end local v7    # "hasReachedFixedStr":Z
    .end local v10    # "isFixedStrFinished":Z
    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "strs":[Ljava/lang/String;
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    if-eqz v14, :cond_e

    .line 813
    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 814
    :cond_e
    if-eqz v9, :cond_f

    .line 815
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 809
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 811
    .end local v2    # "ANRMatch":Z
    .end local v5    # "firstLine":Ljava/lang/String;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "pLine":I
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v20

    .line 812
    :goto_5
    if-eqz v13, :cond_10

    .line 813
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 814
    :cond_10
    if-eqz v8, :cond_11

    .line 815
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 816
    :cond_11
    throw v20
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 817
    :catch_1
    move-exception v4

    goto :goto_4

    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "ANRMatch":Z
    .restart local v5    # "firstLine":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "pLine":I
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 811
    .end local v2    # "ANRMatch":Z
    .end local v5    # "firstLine":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "pLine":I
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v20

    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "ANRMatch":Z
    .restart local v5    # "firstLine":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v12    # "pLine":I
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v20

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "fixedStr":Ljava/lang/StringBuilder;
    .restart local v7    # "hasReachedFixedStr":Z
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "isFixedStrFinished":Z
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_3
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v17, v18

    .end local v18    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_5
.end method

.method getConfigJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 470
    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/MyFileUtils;->file2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "jsonData":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v0, v5

    .line 484
    :goto_0
    return-object v0

    .line 474
    :cond_0
    const/4 v3, 0x0

    .line 475
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 477
    .local v0, "configArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "ConfigArray"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 480
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v5

    .line 482
    goto :goto_0

    .line 480
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public getCtx()Landroid/content/Context;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 236
    const-string v7, "null"

    .line 237
    .local v7, "md5":Ljava/lang/String;
    const/4 v3, 0x0

    .line 239
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 240
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 241
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v1, v8, [B

    .line 243
    .local v1, "buffer":[B
    const/4 v5, -0x1

    .line 244
    .local v5, "length":I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 247
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 248
    .local v0, "bigint":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 252
    if-eqz v4, :cond_3

    .line 254
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 261
    .end local v0    # "bigint":Ljava/math/BigInteger;
    .end local v1    # "buffer":[B
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    return-object v7

    .line 245
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v6, v1, v8, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 249
    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 250
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    if-eqz v3, :cond_0

    .line 254
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 255
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 252
    :goto_3
    if-eqz v3, :cond_2

    .line 254
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 260
    :cond_2
    :goto_4
    throw v8

    .line 255
    :catch_2
    move-exception v2

    .line 257
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 255
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "bigint":Ljava/math/BigInteger;
    .restart local v1    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :catch_3
    move-exception v2

    .line 257
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .line 251
    .end local v0    # "bigint":Ljava/math/BigInteger;
    .end local v1    # "buffer":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 249
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v7, "null"

    .line 266
    .local v7, "md5":Ljava/lang/String;
    const/4 v3, 0x0

    .line 268
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 269
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 270
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v1, v8, [B

    .line 272
    .local v1, "buffer":[B
    const/4 v5, -0x1

    .line 273
    .local v5, "length":I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 276
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 277
    .local v0, "bigint":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 281
    if-eqz v4, :cond_3

    .line 283
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 290
    .end local v0    # "bigint":Ljava/math/BigInteger;
    .end local v1    # "buffer":[B
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    return-object v7

    .line 274
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v6, v1, v8, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 278
    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 279
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    if-eqz v3, :cond_0

    .line 283
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 284
    :catch_1
    move-exception v2

    .line 286
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 280
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 281
    :goto_3
    if-eqz v3, :cond_2

    .line 283
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 289
    :cond_2
    :goto_4
    throw v8

    .line 284
    :catch_2
    move-exception v2

    .line 286
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 284
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "bigint":Ljava/math/BigInteger;
    .restart local v1    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :catch_3
    move-exception v2

    .line 286
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .line 280
    .end local v0    # "bigint":Ljava/math/BigInteger;
    .end local v1    # "buffer":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 278
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public getFilesBySuffix(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v2, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 301
    .local v0, "filesDir":Ljava/io/File;
    new-instance v1, Lcom/netease/androidcrashhandler/MyFileUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/androidcrashhandler/MyFileUtils$1;-><init>(Lcom/netease/androidcrashhandler/MyFileUtils;Ljava/lang/String;)V

    .line 306
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getLastANRProcessTime()J
    .locals 13

    .prologue
    .line 679
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v12, "MyANRTime.txt"

    invoke-direct {v1, v7, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 680
    .local v1, "file":Ljava/io/File;
    const-wide/16 v8, 0x0

    .line 681
    .local v8, "result":J
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 682
    const/4 v2, 0x0

    .line 683
    .local v2, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 686
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 689
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 690
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v8

    .line 693
    :cond_0
    if-eqz v6, :cond_1

    .line 694
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 695
    :cond_1
    if-eqz v3, :cond_2

    .line 696
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-wide v10, v8

    .line 703
    .end local v8    # "result":J
    .local v10, "result":J
    :goto_0
    return-wide v10

    .line 692
    .end local v10    # "result":J
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "result":J
    :catchall_0
    move-exception v7

    .line 693
    :goto_1
    if-eqz v5, :cond_3

    .line 694
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 695
    :cond_3
    if-eqz v2, :cond_4

    .line 696
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 697
    :cond_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v10, v8

    .line 700
    .end local v8    # "result":J
    .restart local v10    # "result":J
    goto :goto_0

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "result":J
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "result":J
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 692
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method getPostEntityByFile(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/MyPostEntity;
    .locals 26
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_suffix"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v8, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {v8}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>()V

    .line 490
    .local v8, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 493
    .local v11, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/netease/androidcrashhandler/MyFileUtils;->getConfigJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 494
    .local v16, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 496
    .local v5, "curObj":Lorg/json/JSONObject;
    if-eqz v16, :cond_0

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v24

    if-nez v24, :cond_3

    .line 497
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/netease/androidcrashhandler/MyFileUtils;->file2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 498
    .local v15, "jnicfgInfo":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 499
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    .end local v5    # "curObj":Lorg/json/JSONObject;
    .local v6, "curObj":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v8

    .line 501
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 502
    .local v14, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1

    move-object v5, v6

    .end local v6    # "curObj":Lorg/json/JSONObject;
    .restart local v5    # "curObj":Lorg/json/JSONObject;
    move-object/from16 v24, v8

    .line 586
    .end local v14    # "it":Ljava/util/Iterator;
    .end local v15    # "jnicfgInfo":Ljava/lang/String;
    :goto_1
    return-object v24

    .line 503
    .end local v5    # "curObj":Lorg/json/JSONObject;
    .restart local v6    # "curObj":Lorg/json/JSONObject;
    .restart local v14    # "it":Ljava/util/Iterator;
    .restart local v15    # "jnicfgInfo":Ljava/lang/String;
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 504
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v8, v0, v1, v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 581
    .end local v14    # "it":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 582
    .end local v6    # "curObj":Lorg/json/JSONObject;
    .end local v15    # "jnicfgInfo":Ljava/lang/String;
    .restart local v5    # "curObj":Lorg/json/JSONObject;
    .local v7, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 583
    new-instance v24, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v25

    .line 584
    invoke-virtual/range {v25 .. v25}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v25

    .line 583
    invoke-direct/range {v24 .. v25}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    goto :goto_1

    .line 508
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v15    # "jnicfgInfo":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v24, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v25

    .line 509
    invoke-virtual/range {v25 .. v25}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v25

    .line 508
    invoke-direct/range {v24 .. v25}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    goto :goto_1

    .line 581
    .end local v15    # "jnicfgInfo":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 512
    :cond_3
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 515
    const-string v24, "cfginfo not null....."

    const-string v25, "success"

    invoke-static/range {v24 .. v25}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v24, "Params"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 518
    const-string v24, "Params"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 519
    .local v20, "paramObj":Lorg/json/JSONObject;
    if-eqz v20, :cond_4

    .line 520
    const-string v24, "getParam....."

    const-string v25, "success"

    invoke-static/range {v24 .. v25}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v19

    .line 522
    .local v19, "paramNames":Lorg/json/JSONArray;
    if-eqz v19, :cond_4

    .line 523
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v13, v0, :cond_8

    .line 531
    .end local v13    # "i":I
    .end local v19    # "paramNames":Lorg/json/JSONArray;
    .end local v20    # "paramObj":Lorg/json/JSONObject;
    :cond_4
    const-string v24, "UserDescs"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 533
    const-string v24, "UserDescs"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 534
    .local v23, "userdescObj":Lorg/json/JSONObject;
    if-eqz v23, :cond_5

    .line 535
    const-string v24, "getUserDesc....."

    const-string v25, "success"

    invoke-static/range {v24 .. v25}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v22

    .line 537
    .local v22, "userdescNames":Lorg/json/JSONArray;
    if-eqz v22, :cond_5

    .line 538
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v13, v0, :cond_9

    .line 547
    .end local v13    # "i":I
    .end local v22    # "userdescNames":Lorg/json/JSONArray;
    .end local v23    # "userdescObj":Lorg/json/JSONObject;
    :cond_5
    const-string v24, "BasicInfos"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 549
    const-string v24, "BasicInfos"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 550
    .local v4, "basicinfoObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_6

    .line 551
    const-string v24, "getBasicInfo....."

    const-string v25, "success"

    invoke-static/range {v24 .. v25}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    .line 553
    .local v3, "basicinfoNames":Lorg/json/JSONArray;
    if-eqz v3, :cond_6

    .line 554
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v13, v0, :cond_a

    .line 563
    .end local v3    # "basicinfoNames":Lorg/json/JSONArray;
    .end local v4    # "basicinfoObj":Lorg/json/JSONObject;
    .end local v13    # "i":I
    :cond_6
    const-string v24, "Files"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 564
    const-string v24, "Files"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 565
    .local v12, "files":Lorg/json/JSONArray;
    if-eqz v12, :cond_7

    .line 566
    const-string v24, "getFiles....."

    const-string v25, "success"

    invoke-static/range {v24 .. v25}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v13, v0, :cond_b

    .line 579
    .end local v12    # "files":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :cond_7
    const-string v24, "all............"

    const-string v25, "success"

    invoke-static/range {v24 .. v25}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v8

    .line 586
    goto/16 :goto_1

    .line 524
    .restart local v13    # "i":I
    .restart local v19    # "paramNames":Lorg/json/JSONArray;
    .restart local v20    # "paramObj":Lorg/json/JSONObject;
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 525
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v8, v0, v1, v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 523
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 539
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "paramNames":Lorg/json/JSONArray;
    .end local v20    # "paramObj":Lorg/json/JSONObject;
    .restart local v22    # "userdescNames":Lorg/json/JSONArray;
    .restart local v23    # "userdescObj":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 541
    .restart local v18    # "name":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 540
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/netease/androidcrashhandler/MyPostEntity;->setUserDesc(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 555
    .end local v18    # "name":Ljava/lang/String;
    .end local v22    # "userdescNames":Lorg/json/JSONArray;
    .end local v23    # "userdescObj":Lorg/json/JSONObject;
    .restart local v3    # "basicinfoNames":Lorg/json/JSONArray;
    .restart local v4    # "basicinfoObj":Lorg/json/JSONObject;
    :cond_a
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 557
    .restart local v18    # "name":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 556
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lcom/netease/androidcrashhandler/MyPostEntity;->setBasicInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 568
    .end local v3    # "basicinfoNames":Lorg/json/JSONArray;
    .end local v4    # "basicinfoObj":Lorg/json/JSONObject;
    .end local v18    # "name":Ljava/lang/String;
    .restart local v12    # "files":Lorg/json/JSONArray;
    :cond_b
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 569
    .local v10, "fileObj":Lorg/json/JSONObject;
    const-string v24, "FileName"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 570
    .restart local v18    # "name":Ljava/lang/String;
    const-string v24, "UploadType"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 571
    .local v21, "uploadType":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 573
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v8, v9, v0, v1}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 567
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6
.end method

.method public info2File(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v4, Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    .line 179
    const/4 v7, 0x0

    .line 178
    invoke-virtual {v5, v2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 187
    if-eqz v4, :cond_0

    .line 188
    :try_start_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 189
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 195
    :cond_0
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :goto_1
    return v5

    .line 180
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :cond_1
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 182
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 184
    sget-object v5, Lcom/netease/androidcrashhandler/MyFileUtils;->CRLF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 186
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    move-object v3, v4

    .line 187
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v3, :cond_2

    .line 188
    :try_start_4
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 189
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 191
    :cond_2
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 192
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    move v5, v6

    .line 193
    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 186
    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method public info2str(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v1, "strbuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 200
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget-object v2, Lcom/netease/androidcrashhandler/MyFileUtils;->CRLF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method isANRFileProcessed(Ljava/lang/String;)Z
    .locals 24
    .param p1, "bundleID"    # Ljava/lang/String;

    .prologue
    .line 620
    const/4 v15, 0x1

    .line 621
    .local v15, "result":Z
    new-instance v2, Ljava/io/File;

    const-string v22, "/data/anr/traces.txt"

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    .local v2, "ANRFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_0

    move/from16 v16, v15

    .line 670
    .end local v15    # "result":Z
    .local v16, "result":I
    :goto_0
    return v16

    .line 624
    .end local v16    # "result":I
    .restart local v15    # "result":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move/from16 v16, v15

    .line 625
    .restart local v16    # "result":I
    goto :goto_0

    .line 626
    .end local v16    # "result":I
    :cond_2
    const/4 v8, 0x0

    .line 627
    .local v8, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 628
    .local v13, "reader":Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 630
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string v4, "-----"

    .line 633
    .local v4, "PROCESS_SEP":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v22, Ljava/io/File;

    const-string v23, "/data/anr/traces.txt"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 636
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 637
    .local v3, "ANRMatch":Z
    const/4 v6, 0x0

    .line 638
    .local v6, "firstLine":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 661
    :cond_4
    :goto_1
    if-eqz v14, :cond_5

    .line 662
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 663
    :cond_5
    if-eqz v9, :cond_6

    .line 664
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    move/from16 v16, v15

    .line 670
    .restart local v16    # "result":I
    goto :goto_0

    .line 639
    .end local v16    # "result":I
    :cond_7
    :try_start_4
    const-string v22, "-----"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 640
    move-object v6, v12

    .line 641
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 642
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/netease/androidcrashhandler/MyFileUtils;->getLastANRProcessTime()J

    move-result-wide v10

    .line 644
    .local v10, "lastTime":J
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 645
    .local v18, "strs":[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x4

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x5

    aget-object v23, v18, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 646
    .local v19, "timestampStr":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 647
    const-string v22, "yyyy-MM-dd hh:mm:ss"

    .line 646
    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 648
    .local v7, "formater":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    .line 649
    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 651
    .local v20, "timestamp":J
    const-string v22, "anr_time"

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v22, "last_process"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 654
    cmp-long v22, v10, v20

    if-gez v22, :cond_4

    .line 655
    const/4 v15, 0x0

    .line 657
    goto :goto_1

    .line 660
    .end local v3    # "ANRMatch":Z
    .end local v6    # "firstLine":Ljava/lang/String;
    .end local v7    # "formater":Ljava/text/SimpleDateFormat;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "lastTime":J
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "strs":[Ljava/lang/String;
    .end local v19    # "timestampStr":Ljava/lang/String;
    .end local v20    # "timestamp":J
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v22

    .line 661
    :goto_2
    if-eqz v13, :cond_8

    .line 662
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 663
    :cond_8
    if-eqz v8, :cond_9

    .line 664
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 665
    :cond_9
    throw v22
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 666
    :catch_0
    move-exception v5

    .line 667
    .local v5, "ex":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v16, v15

    .line 668
    .restart local v16    # "result":I
    goto/16 :goto_0

    .line 666
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "result":I
    .restart local v3    # "ANRMatch":Z
    .restart local v6    # "firstLine":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 660
    .end local v3    # "ANRMatch":Z
    .end local v6    # "firstLine":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v12    # "line":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v22

    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "ANRMatch":Z
    .restart local v6    # "firstLine":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v22

    move-object v13, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method setANRProcessTime(J)Z
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 713
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyANRTime.txt"

    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/MyFileUtils;->str2File(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCtx(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    .line 841
    return-void
.end method

.method str2File(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 338
    const/4 v3, 0x0

    .line 340
    .local v3, "stream":Ljava/io/BufferedOutputStream;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    .local v0, "b":[B
    :try_start_1
    iget-object v6, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    .line 343
    const/4 v7, 0x0

    .line 342
    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 344
    .local v2, "fstream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .end local v3    # "stream":Ljava/io/BufferedOutputStream;
    .local v4, "stream":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    if-eqz v4, :cond_0

    .line 348
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 354
    :cond_0
    const/4 v5, 0x1

    move-object v3, v4

    .end local v0    # "b":[B
    .end local v2    # "fstream":Ljava/io/FileOutputStream;
    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "stream":Ljava/io/BufferedOutputStream;
    :goto_0
    return v5

    .line 346
    .restart local v0    # "b":[B
    :catchall_0
    move-exception v6

    .line 347
    :goto_1
    if-eqz v3, :cond_1

    .line 348
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 349
    :cond_1
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 350
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":[B
    .restart local v2    # "fstream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "stream":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 346
    .end local v3    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "stream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "stream":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public str2MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v4, 0x0

    .line 218
    .local v4, "md5":Ljava/lang/String;
    const/4 v3, 0x0

    .line 220
    .local v3, "m":Ljava/security/MessageDigest;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 223
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 224
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 225
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    .line 232
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    :goto_1
    return-object v4

    .line 227
    .restart local v0    # "bigInt":Ljava/math/BigInteger;
    .restart local v1    # "digest":[B
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 229
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e1":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "null"

    goto :goto_1
.end method

.method public zip([Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "files"    # [Ljava/lang/String;
    .param p2, "zipfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v8, "trace"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "zip ctx.getFilesDir():"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, "origin":Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v7, "out":Ljava/util/zip/ZipOutputStream;
    const/16 v8, 0x1000

    :try_start_0
    new-array v1, v8, [B

    .line 136
    .local v1, "data":[B
    const-string v8, "trace"

    const-string v9, "zip content"

    invoke-static {v8, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v6, v5

    .end local v5    # "origin":Ljava/io/BufferedInputStream;
    .local v6, "origin":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_1
    array-length v8, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-lt v4, v8, :cond_0

    .line 156
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 157
    const-string v8, "zip file"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " success"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void

    .line 138
    :cond_0
    :try_start_2
    const-string v8, "trace"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file name:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, p1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    aget-object v12, p1, v4

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v8, "zip file"

    aget-object v9, p1, v4

    invoke-static {v8, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/MyFileUtils;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    aget-object v10, p1, v4

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v3, "fi":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-direct {v5, v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 143
    .end local v6    # "origin":Ljava/io/BufferedInputStream;
    .restart local v5    # "origin":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v2, Ljava/util/zip/ZipEntry;

    aget-object v8, p1, v4

    aget-object v9, p1, v4

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 146
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-virtual {v5, v1, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .local v0, "count":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    .line 151
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5    # "origin":Ljava/io/BufferedInputStream;
    .restart local v6    # "origin":Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 147
    .end local v6    # "origin":Ljava/io/BufferedInputStream;
    .restart local v5    # "origin":Ljava/io/BufferedInputStream;
    :cond_1
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v7, v1, v8, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 150
    .end local v0    # "count":I
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v8

    .line 151
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 152
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 155
    .end local v1    # "data":[B
    .end local v3    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "i":I
    :catchall_1
    move-exception v8

    .line 156
    :goto_2
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 157
    const-string v9, "zip file"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " success"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    throw v8

    .line 155
    .end local v5    # "origin":Ljava/io/BufferedInputStream;
    .restart local v1    # "data":[B
    .restart local v4    # "i":I
    .restart local v6    # "origin":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "origin":Ljava/io/BufferedInputStream;
    .restart local v5    # "origin":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method
