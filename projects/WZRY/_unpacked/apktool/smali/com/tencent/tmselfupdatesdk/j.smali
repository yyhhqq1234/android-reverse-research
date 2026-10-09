.class Lcom/tencent/tmselfupdatesdk/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/tmselfupdatesdk/i;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/i;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/j;->c:Lcom/tencent/tmselfupdatesdk/i;

    iput-object p2, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/tmselfupdatesdk/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->c:Lcom/tencent/tmselfupdatesdk/i;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->c:Lcom/tencent/tmselfupdatesdk/i;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 938
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 940
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tmselfupdatesdk/j;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; yybpath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->c:Lcom/tencent/tmselfupdatesdk/i;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const-string v2, "com.tencent.android.qqdownloader"

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/j;->c:Lcom/tencent/tmselfupdatesdk/i;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V

    .line 947
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->c:Lcom/tencent/tmselfupdatesdk/i;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 948
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFromStartUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/j;->c:Lcom/tencent/tmselfupdatesdk/i;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-boolean v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 954
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 955
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
