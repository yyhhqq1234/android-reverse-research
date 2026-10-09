.class public Lcom/tsf4g/apollo/StatisConfig;
.super Landroid/app/Activity;
.source "StatisConfig.java"


# instance fields
.field BaseConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final FILE_NAME:Ljava/lang/String;

.field strJsonCfg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const-string v0, "StatisBaseConfig.ini"

    iput-object v0, p0, Lcom/tsf4g/apollo/StatisConfig;->FILE_NAME:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tsf4g/apollo/StatisConfig;->BaseConfig:Ljava/util/HashMap;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tsf4g/apollo/StatisConfig;->strJsonCfg:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private read(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 25
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v6, "StatisBaseConfig.ini"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 27
    .local v3, "fis":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 28
    .local v1, "buff":[B
    const/4 v4, 0x0

    .line 29
    .local v4, "hasRead":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 35
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 41
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buff":[B
    .end local v3    # "fis":Ljava/io/InputStream;
    .end local v4    # "hasRead":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v6

    .line 33
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buff":[B
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "hasRead":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buff":[B
    .end local v3    # "fis":Ljava/io/InputStream;
    .end local v4    # "hasRead":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public GetBaseConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/tsf4g/apollo/StatisConfig;->read(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "strBaseConfig":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 50
    const-string v6, "\r\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 52
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 56
    :cond_0
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 57
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "map_config":[Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v4, "param":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-lt v1, v6, :cond_2

    .line 72
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/tsf4g/apollo/StatisConfig;->strJsonCfg:Ljava/lang/String;

    .line 74
    .end local v1    # "i":I
    .end local v2    # "map_config":[Ljava/lang/String;
    .end local v4    # "param":Lorg/json/JSONObject;
    :cond_1
    iget-object v6, p0, Lcom/tsf4g/apollo/StatisConfig;->strJsonCfg:Ljava/lang/String;

    return-object v6

    .line 63
    .restart local v1    # "i":I
    .restart local v2    # "map_config":[Ljava/lang/String;
    .restart local v4    # "param":Lorg/json/JSONObject;
    :cond_2
    aget-object v6, v2, v1

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "pair":[Ljava/lang/String;
    iget-object v6, p0, Lcom/tsf4g/apollo/StatisConfig;->BaseConfig:Ljava/util/HashMap;

    aget-object v7, v3, v9

    aget-object v8, v3, v10

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
