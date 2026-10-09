.class Lcom/tencent/midas/download/APMidasPluginDownloadWorker;
.super Ljava/lang/Object;
.source "APMidasPluginDownloadWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginDownloadWorker"


# instance fields
.field private final context:Landroid/content/Context;

.field private final downInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/download/APMidasPluginDownInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

.field private final saveDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/tencent/midas/download/IAPMidasPluginDownListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "saveDir"    # Ljava/io/File;
    .param p4, "downListener"    # Lcom/tencent/midas/download/IAPMidasPluginDownListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/download/APMidasPluginDownInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/tencent/midas/download/IAPMidasPluginDownListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/download/APMidasPluginDownInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downInfos:Ljava/util/ArrayList;

    .line 50
    iput-object p3, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    .line 51
    iput-object p4, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    .line 52
    iput-object p1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 324
    if-eqz p0, :cond_0

    .line 325
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private downloadSingleDownInfo(Lcom/tencent/midas/download/APMidasPluginDownInfo;)Z
    .locals 20
    .param p1, "info"    # Lcom/tencent/midas/download/APMidasPluginDownInfo;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string v17, "PluginDownloadWorker"

    const-string v18, "Cannot download down info, info is null!"

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v17, 0x0

    .line 319
    :goto_0
    return v17

    .line 145
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->full_url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 146
    const-string v17, "PluginDownloadWorker"

    const-string v18, "Cannot download down info, info\'s url is empty!"

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/16 v17, 0x0

    goto :goto_0

    .line 150
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 151
    const-string v17, "PluginDownloadWorker"

    const-string v18, "Cannot download down info, info\'s name is empty!"

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/16 v17, 0x0

    goto :goto_0

    .line 157
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ".apk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ".Apk"

    .line 158
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ".APK"

    .line 159
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 160
    :cond_3
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    .line 169
    .local v7, "fileName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_decode:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v7, v1, v2}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->isPluginAlreadyExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 170
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "plugin already test, no need to download! name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 163
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".apk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 176
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "sdcardFilePath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/Tencent/MidasPay/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 179
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v14, "targetFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 181
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already exist in sdcard! We can copy from it, no need to download, but need to check md5!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_decode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/plugin/APPluginUtils;->checkFileMD5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 186
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already exist in sdcard! We can copy from it, no need to download, md5 ok too!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 190
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/tencent/midas/plugin/APPluginUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 192
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already exist in sdcard! We can copy from it, no need to download, md5 ok too! Copy success!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 197
    :cond_6
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already exist in sdcard! We can copy from it, no need to download, md5 ok too! Copy fail!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v13    # "sdcardFilePath":Ljava/lang/String;
    .end local v14    # "targetFile":Ljava/io/File;
    :goto_2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->full_url:Ljava/lang/String;

    .line 220
    .local v15, "url":Ljava/lang/String;
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download single down info! Start to down url = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download single down info! Start to down file name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v5, "downLoadFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 228
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v17

    if-nez v17, :cond_9

    .line 229
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File already exist test, cannot delete old file, file = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 229
    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 202
    .end local v5    # "downLoadFile":Ljava/io/File;
    .end local v15    # "url":Ljava/lang/String;
    .restart local v13    # "sdcardFilePath":Ljava/lang/String;
    .restart local v14    # "targetFile":Ljava/io/File;
    :cond_7
    :try_start_1
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already exist in sdcard! We can copy from it, no need to download, but md5 not ok!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 210
    .end local v13    # "sdcardFilePath":Ljava/lang/String;
    .end local v14    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 211
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " copy from sdcard got exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "sdcardFilePath":Ljava/lang/String;
    .restart local v14    # "targetFile":Ljava/io/File;
    :cond_8
    :try_start_2
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not exist in sdcard! Cannot copy from it, we need to download!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 233
    .end local v13    # "sdcardFilePath":Ljava/lang/String;
    .end local v14    # "targetFile":Ljava/io/File;
    .restart local v5    # "downLoadFile":Ljava/io/File;
    .restart local v15    # "url":Ljava/lang/String;
    :cond_9
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download single down info! file name already exist, delete it successfully = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 235
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 233
    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_a
    const/4 v12, 0x0

    .line 241
    .local v12, "inStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 244
    .local v8, "fs":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 247
    .local v16, "urlObject":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    .line 248
    .local v10, "http":Ljava/net/HttpURLConnection;
    const v17, 0xafc8

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 249
    const v17, 0xafc8

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 250
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 251
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 252
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 253
    const-string v17, "Connection"

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 257
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 259
    .local v11, "httpCode":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v11, v0, :cond_b

    .line 260
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot download file, http code not 200! Code = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    const/16 v17, 0x0

    .line 287
    invoke-static {v12}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v8}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 265
    :cond_b
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v17

    if-nez v17, :cond_c

    .line 266
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot download file, fail to create file! File = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 267
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 266
    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 268
    const/16 v17, 0x0

    .line 287
    invoke-static {v12}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v8}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 271
    :cond_c
    :try_start_5
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .local v9, "fs":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 275
    const/16 v17, 0x800

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 278
    .local v3, "buffer":[B
    :goto_3
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_d

    .line 279
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 282
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    :catch_1
    move-exception v6

    move-object v8, v9

    .line 283
    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .end local v10    # "http":Ljava/net/HttpURLConnection;
    .end local v11    # "httpCode":I
    .end local v16    # "urlObject":Ljava/net/URL;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download single down info fail! File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 285
    const/16 v17, 0x0

    .line 287
    invoke-static {v12}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v8}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 281
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v10    # "http":Ljava/net/HttpURLConnection;
    .restart local v11    # "httpCode":I
    .restart local v16    # "urlObject":Ljava/net/URL;
    :cond_d
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 287
    invoke-static {v12}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v9}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    .line 291
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download single down info success! File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " About to copy to sdcard!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    .line 298
    .restart local v13    # "sdcardFilePath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/Tencent/MidasPay/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 300
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .restart local v14    # "targetFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 302
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " already exist in sdcard! No need to copy!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 304
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 287
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .end local v10    # "http":Ljava/net/HttpURLConnection;
    .end local v11    # "httpCode":I
    .end local v13    # "sdcardFilePath":Ljava/lang/String;
    .end local v14    # "targetFile":Ljava/io/File;
    .end local v16    # "urlObject":Ljava/net/URL;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v17

    :goto_5
    invoke-static {v12}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v8}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->closeQuietly(Ljava/io/Closeable;)V

    throw v17

    .line 306
    .end local v8    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v10    # "http":Ljava/net/HttpURLConnection;
    .restart local v11    # "httpCode":I
    .restart local v13    # "sdcardFilePath":Ljava/lang/String;
    .restart local v14    # "targetFile":Ljava/io/File;
    .restart local v16    # "urlObject":Ljava/net/URL;
    :cond_e
    :try_start_a
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not exist in sdcard! Need to copy!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v13, v7}, Lcom/tencent/midas/plugin/APPluginUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 319
    .end local v13    # "sdcardFilePath":Ljava/lang/String;
    .end local v14    # "targetFile":Ljava/io/File;
    :goto_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 312
    :catch_2
    move-exception v6

    .line 313
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    const-string v17, "PluginDownloadWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " copy to sdcard got exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 287
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "fs":Ljava/io/FileOutputStream;
    .restart local v8    # "fs":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 282
    .end local v10    # "http":Ljava/net/HttpURLConnection;
    .end local v11    # "httpCode":I
    .end local v16    # "urlObject":Ljava/net/URL;
    :catch_3
    move-exception v6

    goto/16 :goto_4
.end method

.method private static isPluginAlreadyExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "saveDir"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 346
    const-string v5, "PluginDownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin already exist in midasplugins test, file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v5, "PluginDownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin already exist in midasplugins test, md5 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test error, empty file name!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return v4

    .line 354
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test error, empty md5!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    if-nez p0, :cond_2

    .line 360
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test error, null context!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test error, empty saveDir!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 370
    .local v1, "pluginPath":Ljava/io/File;
    if-nez v1, :cond_4

    .line 371
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins error, cannot get plugin path!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 376
    .local v3, "targetFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 377
    const-string v5, "PluginDownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin already exist in midasplugins test, plugin not exist! Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/tencent/midas/plugin/APPluginUtils;->checkFileMD5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 384
    .local v2, "result":Z
    if-eqz v2, :cond_7

    .line 385
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test, plugin exist & md5 correct!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, p1}, Lcom/tencent/midas/plugin/APPluginUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 388
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test, plugin exist & md5 correct & copy success!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v4, 0x1

    goto :goto_0

    .line 392
    :cond_6
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test, plugin exist & md5 correct & copy fail!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v2    # "result":Z
    :goto_1
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test, final false!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .restart local v2    # "result":Z
    :cond_7
    :try_start_1
    const-string v5, "PluginDownloadWorker"

    const-string v6, "plugin already exist in midasplugins test, plugin exist & md5 not correct!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 400
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 403
    const-string v5, "PluginDownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin already exist in midasplugins test error, exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 58
    const-string v1, "PluginDownloadWorker"

    const-string v2, "About to enter critical region\uff01"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-class v2, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;

    monitor-enter v2

    .line 60
    :try_start_0
    const-string v1, "PluginDownloadWorker"

    const-string v3, "Enter critical region\uff01"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    if-nez v1, :cond_0

    .line 62
    const-string v1, "PluginDownloadWorker"

    const-string v3, "Cannot start plugin down worker, null downListener!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    monitor-exit v2

    .line 131
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    :cond_1
    const-string v1, "PluginDownloadWorker"

    const-string v3, "Cannot start plugin down worker, empty down list!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    const/4 v3, -0x5

    invoke-interface {v1, v3}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadFail(I)V

    .line 69
    monitor-exit v2

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->context:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 73
    const-string v1, "PluginDownloadWorker"

    const-string v3, "Cannot start plugin down worker, null context!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    const/4 v3, -0x8

    invoke-interface {v1, v3}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadFail(I)V

    .line 75
    monitor-exit v2

    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    if-nez v1, :cond_4

    .line 79
    const-string v1, "PluginDownloadWorker"

    const-string v3, "Cannot start plugin down worker, null save dir!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    const/4 v3, -0x6

    invoke-interface {v1, v3}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadFail(I)V

    .line 81
    monitor-exit v2

    goto :goto_0

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    .line 85
    const-string v1, "PluginDownloadWorker"

    const-string v3, "Cannot start plugin down worker, save dir not directory!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    const/4 v3, -0x7

    invoke-interface {v1, v3}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadFail(I)V

    .line 87
    monitor-exit v2

    goto :goto_0

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    invoke-static {v1}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->checkIniFileExist(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    const-string v1, "PluginDownloadWorker"

    const-string v3, "MidasSign.ini already exists, no need to download again!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    const/4 v3, -0x2

    invoke-interface {v1, v3}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadFail(I)V

    .line 94
    monitor-exit v2

    goto :goto_0

    .line 96
    :cond_6
    const-string v1, "PluginDownloadWorker"

    const-string v3, "MidasSign.ini not exists, start to download again!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    invoke-static {v1}, Lcom/tencent/midas/plugin/APPluginUtils;->clearDirContent(Ljava/io/File;)V

    .line 103
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 104
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_7

    .line 105
    const-string v1, "PluginDownloadWorker"

    const-string v3, "Cannot start plugin down worker, save dir not exist and cannot create it!"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    const/4 v3, -0x3

    invoke-interface {v1, v3}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadFail(I)V

    .line 108
    monitor-exit v2

    goto/16 :goto_0

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;

    .line 114
    .local v0, "info":Lcom/tencent/midas/download/APMidasPluginDownInfo;
    invoke-direct {p0, v0}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downloadSingleDownInfo(Lcom/tencent/midas/download/APMidasPluginDownInfo;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 115
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    const/4 v3, -0x4

    invoke-interface {v1, v3}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadFail(I)V

    .line 117
    const-string v1, "PluginDownloadWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " download fail, about to clear download dir!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->saveDir:Ljava/io/File;

    invoke-static {v1}, Lcom/tencent/midas/plugin/APPluginUtils;->clearDirContent(Ljava/io/File;)V

    .line 121
    monitor-exit v2

    goto/16 :goto_0

    .line 125
    .end local v0    # "info":Lcom/tencent/midas/download/APMidasPluginDownInfo;
    :cond_9
    iget-object v1, p0, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;->downListener:Lcom/tencent/midas/download/IAPMidasPluginDownListener;

    invoke-interface {v1}, Lcom/tencent/midas/download/IAPMidasPluginDownListener;->onDownloadSuccess()V

    .line 127
    const-string v1, "PluginDownloadWorker"

    const-string v3, "About to leave critical region"

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const-string v1, "PluginDownloadWorker"

    const-string v2, "Leave critical region"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
