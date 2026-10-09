.class Lcom/tencent/tmselfupdatesdk/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/tmselfupdatesdk/k;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/k;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iput-object p2, p0, Lcom/tencent/tmselfupdatesdk/l;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/tmselfupdatesdk/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, -0x14

    const/4 v5, 0x1

    const/16 v4, 0x66

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1019
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 1020
    if-eqz v0, :cond_4

    .line 1022
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 1024
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClientSDKListener,url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tmselfupdatesdk/l;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; patchPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1028
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;)V

    .line 1077
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1036
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnDownloadSDKTaskStateChanged download finished overwriteChannelid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->writeChannelIdAfterUpdate(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1043
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const-string v3, "SelfUpdate success !"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1073
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClientSDKListener,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v6, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1074
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1046
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v0, v5, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x64

    const/16 v2, -0xf

    const-string v3, "SelfUpdate success, NO Update!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x14

    const-string v3, "OnDownloadSDKTaskStateChanged,OnDownloadSDKTaskStateChanged,unknown exception!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure,OnDownloadSDKTaskStateChanged SelfUpdateSDKErrorCode_getSavePath_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1063
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure,OnDownloadSDKTaskStateChanged SelfUpdateSDKErrorCode_GetDownloadTaskState_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1068
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/l;->c:Lcom/tencent/tmselfupdatesdk/k;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x12

    const-string v3, "SelfUpdate failure, TMAssistantDownloadSDKClient_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
