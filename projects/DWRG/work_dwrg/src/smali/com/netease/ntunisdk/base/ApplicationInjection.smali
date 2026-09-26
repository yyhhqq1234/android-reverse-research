.class Lcom/netease/ntunisdk/base/ApplicationInjection;
.super Ljava/lang/Object;
.source "ApplicationInjection.java"


# static fields
.field private static final BASE_DEX_FILE_NAME:Ljava/lang/String; = "unisdk_base.dex"

.field private static final BASE_DEX_FILE_TMP_NAME:Ljava/lang/String; = "unisdk_base.dex_tmp"

.field private static final CLOSE_DEX_FILE_NAME:Ljava/lang/String; = "unipatch_close"

.field private static final KEY_APP_VER:Ljava/lang/String; = "app_ver"

.field private static final KEY_CNT:Ljava/lang/String; = "KEY_PATCH_DEX_CNT"

.field private static final KEY_PATH:Ljava/lang/String; = "KEY_PATCH_DEX_"

.field private static final KEY_USB_TXT:Ljava/lang/String; = "usb_txt"

.field private static final KEY_USE_DEX:Ljava/lang/String; = "use_dex"

.field private static final SP_NAME:Ljava/lang/String; = "unisdk_dynamic_info"

.field private static final TAG:Ljava/lang/String; = "ApplicationInjection"

.field private static sCloseDex:Z

.field private static sDone:Z

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/ntunisdk/base/ApplicationInjection;->sDone:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appVerEqual(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "result":Z
    sget-object v5, Lcom/netease/ntunisdk/base/ApplicationInjection;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "app_ver"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, "cachedAppVer":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v2, "localAppVer":I
    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    .line 126
    .end local v2    # "localAppVer":I
    :goto_0
    return v3

    .restart local v2    # "localAppVer":I
    :cond_0
    move v3, v4

    .line 122
    goto :goto_0

    .line 123
    .end local v2    # "localAppVer":I
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ApplicationInjection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static clearCache()V
    .locals 2

    .prologue
    .line 154
    sget-object v1, Lcom/netease/ntunisdk/base/ApplicationInjection;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method private static copyAssets2SD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "srcAssetsFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    .local v8, "result":Z
    const/4 v4, 0x0

    .line 78
    .local v4, "myInput":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 80
    .local v5, "myOutput":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    const/4 v7, 0x1

    .line 82
    .local v7, "notExist":Z
    :goto_0
    if-nez v7, :cond_3

    .line 103
    if-eqz v4, :cond_0

    .line 104
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_0
    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "notExist":Z
    :cond_1
    :goto_1
    return v9

    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    move v7, v9

    .line 81
    goto :goto_0

    .line 109
    .restart local v7    # "notExist":Z
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "ApplicationInjection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "close: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v7

    .line 87
    const-string v9, "ApplicationInjection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createNewFile result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .local v6, "myOutput":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_3
    new-array v0, v9, [B

    .line 90
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 91
    .local v3, "length":I
    :goto_2
    if-lez v3, :cond_4

    .line 92
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    const/4 v8, 0x1

    .line 103
    if-eqz v4, :cond_5

    .line 104
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_5
    if-eqz v6, :cond_6

    .line 107
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    move-object v5, v6

    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "length":I
    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .end local v7    # "notExist":Z
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    :cond_7
    :goto_3
    move v9, v8

    .line 114
    goto :goto_1

    .line 109
    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "length":I
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "notExist":Z
    :catch_1
    move-exception v1

    .line 110
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "ApplicationInjection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 112
    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    goto :goto_3

    .line 97
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "length":I
    .end local v7    # "notExist":Z
    :catch_2
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v9, "ApplicationInjection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    if-eqz v4, :cond_8

    .line 104
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_8
    if-eqz v5, :cond_7

    .line 107
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 109
    :catch_3
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "ApplicationInjection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v9, "ApplicationInjection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 103
    if-eqz v4, :cond_9

    .line 104
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_9
    if-eqz v5, :cond_7

    .line 107
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 109
    :catch_5
    move-exception v1

    .line 110
    const-string v9, "ApplicationInjection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 103
    :goto_6
    if-eqz v4, :cond_a

    .line 104
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_a
    if-eqz v5, :cond_b

    .line 107
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 111
    :cond_b
    :goto_7
    throw v9

    .line 109
    :catch_6
    move-exception v1

    .line 110
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "ApplicationInjection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "close: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "notExist":Z
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    goto :goto_6

    .line 99
    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    goto :goto_5

    .line 97
    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v5    # "myOutput":Ljava/io/OutputStream;
    goto/16 :goto_4
.end method

.method private static getDexPaths(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "basePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 166
    sget-boolean v3, Lcom/netease/ntunisdk/base/ApplicationInjection;->sCloseDex:Z

    if-eqz v3, :cond_0

    .line 167
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p0, v2, v5

    .line 176
    :goto_0
    return-object v2

    .line 169
    :cond_0
    sget-object v3, Lcom/netease/ntunisdk/base/ApplicationInjection;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "KEY_PATCH_DEX_CNT"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 170
    .local v1, "patchDexCnt":I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 172
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-eq v0, v1, :cond_1

    .line 173
    sget-object v3, Lcom/netease/ntunisdk/base/ApplicationInjection;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_PATCH_DEX_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    aput-object p0, v2, v1

    goto :goto_0
.end method

.method static processInAttachBaseContext(Landroid/content/Context;)V
    .locals 11
    .param p0, "base"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 36
    const-string v6, "unisdk_dynamic_info"

    invoke-virtual {p0, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    sput-object v6, Lcom/netease/ntunisdk/base/ApplicationInjection;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    sget-boolean v6, Lcom/netease/ntunisdk/base/ApplicationInjection;->sDone:Z

    if-eqz v6, :cond_0

    .line 69
    :goto_0
    return-void

    .line 40
    :cond_0
    sput-boolean v10, Lcom/netease/ntunisdk/base/ApplicationInjection;->sDone:Z

    .line 41
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "unisdk_base.dex"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v1, "dexFilePath":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "unisdk_base.dex_tmp"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v2, "dexFileTmpPath":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string v8, "unipatch_close"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    sput-boolean v6, Lcom/netease/ntunisdk/base/ApplicationInjection;->sCloseDex:Z

    .line 44
    const-string v6, "ApplicationInjection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FilePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v4, 0x1

    .line 46
    .local v4, "result":Z
    invoke-static {p0}, Lcom/netease/ntunisdk/base/ApplicationInjection;->appVerEqual(Landroid/content/Context;)Z

    move-result v0

    .line 47
    .local v0, "appVerEqual":Z
    invoke-static {p0}, Lcom/netease/ntunisdk/base/ApplicationInjection;->usbEqual(Landroid/content/Context;)Z

    move-result v5

    .line 48
    .local v5, "usbEqual":Z
    if-eqz v0, :cond_1

    if-nez v5, :cond_2

    .line 49
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/ApplicationInjection;->clearCache()V

    .line 51
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    if-nez v5, :cond_4

    .line 52
    :cond_3
    const-string v6, "unisdk_base.dex"

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/netease/ntunisdk/base/ApplicationInjection;->copyAssets2SD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 57
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 59
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntunisdk/base/ApplicationInjection;->getDexPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/netease/ntunisdk/base/update/dex/DexHack;->load(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    invoke-static {v10}, Lcom/netease/ntunisdk/base/ApplicationInjection;->setGlobalUseDex(Z)V

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {v9}, Lcom/netease/ntunisdk/base/ApplicationInjection;->setGlobalUseDex(Z)V

    .line 67
    const-string v6, "ApplicationInjection"

    const-string v7, "dex corrupted!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static setGlobalUseDex(Z)V
    .locals 3
    .param p0, "use"    # Z

    .prologue
    .line 160
    sget-object v1, Lcom/netease/ntunisdk/base/ApplicationInjection;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "use_dex"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    return-void

    .line 161
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static usbEqual(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    sget-object v4, Lcom/netease/ntunisdk/base/ApplicationInjection;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "usb_txt"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "usbTxt":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    const/4 v1, 0x0

    .line 135
    .local v1, "myInput":Ljava/io/InputStream;
    const/4 v2, 0x1

    .line 137
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "ApplicationInjection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 140
    :try_start_2
    const-string v4, "ApplicationInjection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    if-eqz v1, :cond_0

    .line 144
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 146
    :catch_2
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "ApplicationInjection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 143
    if-eqz v1, :cond_2

    .line 144
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 148
    :cond_2
    :goto_1
    throw v4

    .line 146
    :catch_3
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ApplicationInjection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
