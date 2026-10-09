.class Lcom/tencent/tmselfupdatesdk/d;
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
    .line 271
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/d;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/d;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/d;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/d;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/d;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const-string v2, "com.tencent.android.qqdownloader"

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/d;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
