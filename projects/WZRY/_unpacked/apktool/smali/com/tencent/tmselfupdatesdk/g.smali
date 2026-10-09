.class Lcom/tencent/tmselfupdatesdk/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

.field final synthetic b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iput-object p2, p0, Lcom/tencent/tmselfupdatesdk/g;->a:Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 671
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_APPID:Ljava/lang/String;

    const-string v1, "50801"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_PACKNAME:Ljava/lang/String;

    const-string v1, "com.tencent.android.qqdownloader"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_CHANNELID:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_VIA:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->a:Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 678
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "application/vnd.android.package-archive"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->startDownloadTask(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v0

    .line 681
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->j:Z

    .line 683
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iput v0, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->f:I

    .line 684
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDownloadTask result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_0

    .line 691
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 693
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "yyb apk has yet exists\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";  yybpath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const-string v2, "com.tencent.android.qqdownloader"

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V

    .line 701
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 702
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFromStartUpdate;startUpdate():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/g;->b:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-boolean v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
