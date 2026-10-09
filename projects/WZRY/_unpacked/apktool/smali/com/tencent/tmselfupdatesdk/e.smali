.class Lcom/tencent/tmselfupdatesdk/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Z)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/e;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iput-boolean p2, p0, Lcom/tencent/tmselfupdatesdk/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/e;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/e;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-boolean v1, p0, Lcom/tencent/tmselfupdatesdk/e;->a:Z

    iput-boolean v1, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->j:Z

    .line 308
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 309
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_APPID:Ljava/lang/String;

    const-string v1, "50801"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_PACKNAME:Ljava/lang/String;

    const-string v1, "com.tencent.android.qqdownloader"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_CHANNELID:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/e;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_VIA:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/e;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wifipredownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 315
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/e;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/e;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "application/vnd.android.package-archive"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->startDownloadTask(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
