.class Lcom/tencent/tmselfupdatesdk/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x2

    const/16 v7, 0x66

    const/4 v2, 0x1

    .line 1246
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1247
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_PACKNAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_CHANNELID:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_VIA:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v0, v8, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1256
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1258
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "application/tm.android.apkdiff"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->startDownloadTask(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v0

    .line 1259
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkPatch start download Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    if-ne v8, v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 1265
    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 1269
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkPatch has yet exists\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";  patchPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;)V

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x12

    const-string v3, "SelfUpdate failure, TMAssistantDownloadSDKClient_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1339
    :catch_0
    move-exception v0

    .line 1341
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v2, -0x14

    const-string v3, "SelfUpdate failure, UNKNOWN EXCEPTION!"

    invoke-virtual {v1, v7, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1342
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1281
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v0, v3, :cond_6

    .line 1283
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1285
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1287
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "application/vnd.android.package-archive"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->startDownloadTask(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v0

    .line 1288
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newapk start download Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    if-ne v8, v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 1294
    if-eqz v0, :cond_4

    .line 1296
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 1298
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newapk has yet exists\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; apkPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1303
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genNewPkgProcess overwriteChannelid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->writeChannelIdAfterUpdate(Ljava/lang/String;)V

    .line 1307
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1310
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const-string v3, "SelfUpdate success !"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1314
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure, SelfUpdateSDKErrorCode_getSavePath_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1319
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure, SelfUpdateSDKErrorCode_GetDownloadTaskState_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x12

    const-string v3, "SelfUpdate failure, TMAssistantDownloadSDKClient_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1329
    :cond_6
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v0, v2, :cond_7

    .line 1331
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x64

    const/16 v2, -0xf

    const-string v3, "SelfUpdate success, NO Update!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1336
    :cond_7
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/c;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x14

    const-string v3, "SelfUpdate failure, UNKNOWN EXCEPTION!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
