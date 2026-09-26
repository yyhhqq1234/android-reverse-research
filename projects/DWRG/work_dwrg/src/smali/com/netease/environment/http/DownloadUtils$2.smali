.class final Lcom/netease/environment/http/DownloadUtils$2;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lcom/netease/environment/listener/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/environment/http/DownloadUtils;->downloadRegularFile(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$regexFileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$regexFileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 12
    .param p1, "succeed"    # Z

    .prologue
    .line 175
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download data file result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_1

    .line 179
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/netease/environment/utils/FileUtils;->getTempFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "tempFilePath":Ljava/lang/String;
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/netease/environment/utils/FileUtils;->getRegexFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {v7}, Lcom/netease/environment/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getRC4Key()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/netease/environment/utils/RC4Utils;->decryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "decodeContent":Ljava/lang/String;
    invoke-static {v2}, Lcom/netease/environment/utils/JsonUtils;->isJSONObjectFormat(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    .local v5, "resultObject":Lorg/json/JSONObject;
    const-string v8, "settings"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 188
    .local v6, "settingsObject":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const-string v9, "enable"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/netease/environment/config/SdkConfig;->saveEnableState(Landroid/content/Context;Z)V

    .line 189
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const-string v9, "updateInterval"

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v6, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/netease/environment/config/SdkConfig;->saveUpdateInterval(Landroid/content/Context;J)V

    .line 190
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const-string v9, "taskTimeout"

    const-wide/16 v10, 0x3e8

    invoke-virtual {v6, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/netease/environment/config/SdkConfig;->saveTaskTimeout(Landroid/content/Context;J)V

    .line 191
    const-string v8, "regex"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/netease/environment/model/RegexGetter;->setPatternMap(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v5    # "resultObject":Lorg/json/JSONObject;
    .end local v6    # "settingsObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/netease/environment/config/SdkConfig;->saveUpdateDataTime(Landroid/content/Context;J)V

    .line 197
    invoke-static {v7, v4}, Lcom/netease/environment/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 198
    .local v1, "copyResult":Z
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "regex file path:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-eqz v1, :cond_0

    .line 200
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getGameId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$regexFileUrl:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/netease/environment/config/SdkConfig;->saveRegexFileUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "check data file file done"

    invoke-static {v8, v9}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "copyResult":Z
    .end local v2    # "decodeContent":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "tempFilePath":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/netease/environment/config/SdkConfig;->saveDownloadState(Landroid/content/Context;Z)V

    .line 206
    return-void

    .line 192
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "decodeContent":Ljava/lang/String;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v7    # "tempFilePath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "fail to save settings"

    invoke-static {v8, v9}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download data file start"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method
