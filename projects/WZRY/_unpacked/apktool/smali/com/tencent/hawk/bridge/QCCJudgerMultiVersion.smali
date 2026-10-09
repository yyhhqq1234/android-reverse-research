.class public Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;
.super Ljava/lang/Object;
.source "QCCJudgerMultiVersion.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;
    }
.end annotation


# instance fields
.field private mConfigResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private multiVersionConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/hawk/bridge/QccConfig;",
            ">;"
        }
    .end annotation
.end field

.field private qccVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->multiVersionConfigMap:Ljava/util/Map;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->qccVersion:I

    .line 74
    iput-object v1, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->mConfigResult:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->multiVersionConfigMap:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public static readLocalGpuName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 256
    const/4 v4, 0x0

    .line 257
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 259
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/local/tmp/__apm_gpu"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    const-string v7, "===========FOUND local gpu in TMP=========="

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 263
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "fis":Ljava/io/FileInputStream;
    const-string v7, "/data/local/tmp/__apm_gpu"

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0    # "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 272
    .restart local v0    # "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 273
    .local v5, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-nez v5, :cond_2

    .line 283
    if-eqz v0, :cond_0

    .line 285
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 291
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v6

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 266
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 276
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 278
    :catch_1
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    if-eqz v0, :cond_1

    .line 285
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 286
    :catch_2
    move-exception v2

    .line 287
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 288
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 283
    if-eqz v0, :cond_3

    .line 285
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 290
    :cond_3
    :goto_3
    throw v6

    .line 286
    :catch_3
    move-exception v2

    .line 287
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 288
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 286
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 287
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 288
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 293
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "line":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/String;

    const-string v7, "adreno (tm) 403"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private readStringArray(Landroid/util/JsonReader;Ljava/util/List;)V
    .locals 4
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "filterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 203
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public clearContext()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->multiVersionConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->qccVersion:I

    .line 83
    return-void
.end method

.method public getQccVersion()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->qccVersion:I

    return v0
.end method

.method public judgeDcls(Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;Ljava/lang/String;)I
    .locals 4
    .param p1, "param"    # Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;
    .param p2, "configName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 207
    const-string v2, "current sdk level under honeyComb, return"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 219
    :goto_0
    return v1

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->multiVersionConfigMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config list does not contains config:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->multiVersionConfigMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/QccConfig;

    .line 217
    .local v0, "config":Lcom/tencent/hawk/bridge/QccConfig;
    invoke-virtual {v0, p1}, Lcom/tencent/hawk/bridge/QccConfig;->judgeDcls(Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;)I

    move-result v1

    .line 219
    .local v1, "qccValue":I
    goto :goto_0
.end method

.method public judgeDclsBatch(Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;Ljava/util/Map;)V
    .locals 7
    .param p1, "param"    # Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "batchResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->mConfigResult:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 235
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->mConfigResult:Ljava/util/Map;

    .line 236
    iget-object v4, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->multiVersionConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 252
    :cond_0
    return-void

    .line 236
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/hawk/bridge/QccConfig;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/QccConfig;

    .line 239
    .local v0, "config":Lcom/tencent/hawk/bridge/QccConfig;
    invoke-virtual {v0, p1}, Lcom/tencent/hawk/bridge/QccConfig;->judgeDcls(Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;)I

    move-result v3

    .line 240
    .local v3, "qccValue":I
    iget-object v5, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->mConfigResult:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "qcc batch put key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseQccFile(Ljava/io/InputStream;)Z
    .locals 14
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 86
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-ge v11, v12, :cond_0

    .line 87
    const-string v11, "current sdk level under honeyComb, return"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 88
    const/4 v11, 0x0

    .line 186
    :goto_0
    return v11

    .line 91
    :cond_0
    if-nez p1, :cond_1

    .line 92
    const-string v11, "STREAM IS NULL"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 93
    const/4 v11, 0x0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v7, 0x0

    .line 97
    .local v7, "initCtxFlag":Z
    const/4 v9, 0x0

    .line 99
    .local v9, "reader":Landroid/util/JsonReader;
    :try_start_0
    new-instance v10, Landroid/util/JsonReader;

    new-instance v11, Ljava/io/InputStreamReader;

    const-string/jumbo v12, "utf-8"

    invoke-direct {v11, p1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v9    # "reader":Landroid/util/JsonReader;
    .local v10, "reader":Landroid/util/JsonReader;
    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v10, v11}, Landroid/util/JsonReader;->setLenient(Z)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_a

    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "currentConfig":Lcom/tencent/hawk/bridge/QccConfig;
    const/4 v3, 0x0

    .line 108
    .local v3, "currentQccName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "configList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-virtual {v10}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v11

    sget-object v12, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-eq v11, v12, :cond_3

    .line 112
    const/16 v11, 0x3fc

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "next error:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v10, :cond_2

    .line 177
    :try_start_3
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 113
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 101
    .end local v1    # "configList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "currentConfig":Lcom/tencent/hawk/bridge/QccConfig;
    .end local v3    # "currentQccName":Ljava/lang/String;
    .end local v10    # "reader":Landroid/util/JsonReader;
    .restart local v9    # "reader":Landroid/util/JsonReader;
    :catch_0
    move-exception v5

    .line 102
    .local v5, "e1":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "utf-8 reader failed "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 103
    const/4 v11, 0x0

    goto :goto_0

    .line 178
    .end local v5    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "reader":Landroid/util/JsonReader;
    .restart local v1    # "configList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "currentConfig":Lcom/tencent/hawk/bridge/QccConfig;
    .restart local v3    # "currentQccName":Ljava/lang/String;
    .restart local v10    # "reader":Landroid/util/JsonReader;
    :catch_1
    move-exception v4

    .line 179
    .local v4, "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto :goto_0

    .line 115
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    invoke-virtual {v10}, Landroid/util/JsonReader;->beginObject()V

    .line 116
    :cond_4
    :goto_2
    invoke-virtual {v10}, Landroid/util/JsonReader;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 159
    invoke-virtual {v10}, Landroid/util/JsonReader;->endObject()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    if-eqz v10, :cond_5

    .line 177
    :try_start_5
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 182
    :cond_5
    const-string v11, "parse finished"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 183
    if-eqz v7, :cond_15

    .line 184
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 117
    :cond_6
    :try_start_6
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "keyName":Ljava/lang/String;
    const-string/jumbo v11, "version"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 121
    invoke-virtual {v10}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    iput v11, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->qccVersion:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 160
    .end local v8    # "keyName":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 161
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Qcc, Exception occured: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "errorMsg":Ljava/lang/String;
    if-nez v6, :cond_13

    .line 164
    const/16 v11, 0x3fd

    const-string v12, "NA"

    invoke-static {v11, v12}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    :goto_3
    if-eqz v10, :cond_7

    .line 177
    :try_start_8
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 173
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 122
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "errorMsg":Ljava/lang/String;
    .restart local v8    # "keyName":Ljava/lang/String;
    :cond_8
    :try_start_9
    const-string v11, "configureList"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v11

    sget-object v12, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v11, v12, :cond_c

    .line 123
    const/4 v7, 0x1

    .line 124
    invoke-virtual {v10}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v11

    sget-object v12, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v11, v12, :cond_a

    .line 125
    const-string v11, "Next is not ["

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 126
    const/16 v11, 0x3f7

    const-string v12, "next error"

    invoke-static {v11, v12}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 176
    if-eqz v10, :cond_9

    .line 177
    :try_start_a
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 127
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 178
    :catch_3
    move-exception v4

    .line 179
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 129
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_b
    invoke-direct {p0, v10, v1}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->readStringArray(Landroid/util/JsonReader;Ljava/util/List;)V

    .line 131
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 132
    const-string v11, "Qcc config list is empty, return"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 176
    if-eqz v10, :cond_b

    .line 177
    :try_start_c
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 133
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 178
    :catch_4
    move-exception v4

    .line 179
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c
    if-nez v2, :cond_11

    :try_start_d
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-nez v3, :cond_11

    .line 136
    if-nez v7, :cond_e

    .line 137
    const-string v11, "config list is not initialized"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 176
    if-eqz v10, :cond_d

    .line 177
    :try_start_e
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 138
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 178
    :catch_5
    move-exception v4

    .line 179
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 140
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e
    move-object v3, v8

    .line 141
    :try_start_f
    new-instance v0, Lcom/tencent/hawk/bridge/QccConfig;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/QccConfig;-><init>()V

    .line 142
    .local v0, "config":Lcom/tencent/hawk/bridge/QccConfig;
    invoke-virtual {v0, v10}, Lcom/tencent/hawk/bridge/QccConfig;->parseQccConfig(Landroid/util/JsonReader;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 143
    const-string v11, "Qcc,Parse qcc config failed"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 176
    if-eqz v10, :cond_f

    .line 177
    :try_start_10
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 144
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 178
    :catch_6
    move-exception v4

    .line 179
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 146
    .end local v4    # "e":Ljava/io/IOException;
    :cond_10
    :try_start_11
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Add current qcc to map "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 147
    iget-object v11, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->multiVersionConfigMap:Ljava/util/Map;

    invoke-interface {v11, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v11, "put finished"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 150
    const/4 v3, 0x0

    .line 151
    const/4 v2, 0x0

    .line 153
    goto/16 :goto_2

    .line 154
    .end local v0    # "config":Lcom/tencent/hawk/bridge/QccConfig;
    :cond_11
    invoke-virtual {v10}, Landroid/util/JsonReader;->skipValue()V

    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Qcc,bad prefix,"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    .line 174
    .end local v8    # "keyName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    .line 176
    if-eqz v10, :cond_12

    .line 177
    :try_start_12
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 181
    :cond_12
    throw v11

    .line 166
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "errorMsg":Ljava/lang/String;
    :cond_13
    :try_start_13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-le v11, v12, :cond_14

    .line 167
    const/16 v11, 0x3fd

    const/4 v12, 0x0

    const/16 v13, 0x1f

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 169
    :cond_14
    const/16 v11, 0x3fd

    invoke-static {v11, v6}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 178
    :catch_7
    move-exception v4

    .line 179
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 178
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "errorMsg":Ljava/lang/String;
    :catch_8
    move-exception v4

    .line 179
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 178
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 179
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 186
    .end local v4    # "e":Ljava/io/IOException;
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 101
    .end local v1    # "configList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "currentConfig":Lcom/tencent/hawk/bridge/QccConfig;
    .end local v3    # "currentQccName":Ljava/lang/String;
    :catch_a
    move-exception v5

    move-object v9, v10

    .end local v10    # "reader":Landroid/util/JsonReader;
    .restart local v9    # "reader":Landroid/util/JsonReader;
    goto/16 :goto_1
.end method
