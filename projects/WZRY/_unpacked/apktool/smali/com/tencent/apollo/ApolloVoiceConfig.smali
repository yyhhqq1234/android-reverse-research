.class public Lcom/tencent/apollo/ApolloVoiceConfig;
.super Ljava/lang/Object;
.source "ApolloVoiceConfig.java"


# static fields
.field private static LOGTAG:Ljava/lang/String; = null

.field private static final cfgName:Ljava/lang/String; = "ApolloVoice/config.json"

.field private static dyCfgPath:Ljava/lang/String;

.field private static mainContext:Landroid/content/Context;

.field private static storageCfgPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ApolloVoice"

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceConfig;->LOGTAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceConfig;->storageCfgPath:Ljava/lang/String;

    .line 16
    const-string v0, "/com.tencent.gcloud.gvoice/config/gvoice.cfg"

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceConfig;->dyCfgPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DynamicCfgPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 36
    const-string v0, "invalied"

    .line 39
    .local v0, "cfgPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 41
    .local v2, "sdDir":Ljava/io/File;
    :try_start_0
    sget-object v3, Lcom/tencent/apollo/ApolloVoiceConfig;->mainContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/apollo/ApolloVoiceConfig;->dyCfgPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :cond_0
    :goto_0
    sget-object v3, Lcom/tencent/apollo/ApolloVoiceConfig;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read Dynamic  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static IsSDCardCfgExist()Z
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/apollo/ApolloVoiceConfig;->storageCfgPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "cfg_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static JSONCfg(Z)Ljava/lang/String;
    .locals 12
    .param p0, "bsdcard_cfg"    # Z

    .prologue
    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "fileInput":Ljava/io/InputStream;
    if-eqz p0, :cond_1

    .line 58
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v9, Lcom/tencent/apollo/ApolloVoiceConfig;->storageCfgPath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v3    # "fileInput":Ljava/io/InputStream;
    .local v4, "fileInput":Ljava/io/InputStream;
    :try_start_1
    sget-object v9, Lcom/tencent/apollo/ApolloVoiceConfig;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read config file from storage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/tencent/apollo/ApolloVoiceConfig;->storageCfgPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 65
    .end local v4    # "fileInput":Ljava/io/InputStream;
    .restart local v3    # "fileInput":Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 66
    .local v5, "len":I
    new-array v8, v5, [B

    .line 67
    .local v8, "pbyte":[B
    const-string v1, "UTF-8"

    .line 68
    .local v1, "charset":Ljava/lang/String;
    const/4 v6, 0x0

    .line 71
    .local v6, "nRead":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 73
    sub-int v9, v5, v6

    invoke-virtual {v3, v8, v6, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 74
    .local v7, "nret":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 78
    .end local v7    # "nret":I
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 80
    .local v0, "Result":Ljava/lang/String;
    sget-object v9, Lcom/tencent/apollo/ApolloVoiceConfig;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "####Get config :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "Result":Ljava/lang/String;
    .end local v1    # "charset":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "nRead":I
    .end local v8    # "pbyte":[B
    :goto_2
    return-object v0

    .line 62
    :cond_1
    sget-object v9, Lcom/tencent/apollo/ApolloVoiceConfig;->mainContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "ApolloVoice/config.json"

    .line 63
    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 76
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v6    # "nRead":I
    .restart local v7    # "nret":I
    .restart local v8    # "pbyte":[B
    :cond_2
    add-int/2addr v6, v7

    .line 77
    goto :goto_1

    .line 82
    .end local v1    # "charset":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "nRead":I
    .end local v7    # "nret":I
    .end local v8    # "pbyte":[B
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v0, 0x0

    goto :goto_2

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fileInput":Ljava/io/InputStream;
    .restart local v4    # "fileInput":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileInput":Ljava/io/InputStream;
    .restart local v3    # "fileInput":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 21
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceConfig;->mainContext:Landroid/content/Context;

    .line 22
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceConfig;->mainContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 23
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ApolloVoice/config.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/apollo/ApolloVoiceConfig;->storageCfgPath:Ljava/lang/String;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceConfig;->LOGTAG:Ljava/lang/String;

    const-string v2, "getExternalFilesDir failed !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
