.class Lcom/tencent/tmselfupdatesdk/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;


# instance fields
.field final synthetic a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDownloadSDKTaskProgressChanged(Lcom/tencent/tmdownloader/TMAssistantDownloadClient;Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    .line 1090
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; receiveDataLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; totalDataLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1094
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1095
    if-nez v0, :cond_1

    .line 1096
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "listener = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :cond_1
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    if-eqz v2, :cond_0

    .line 1101
    check-cast v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    invoke-interface {v0, p3, p4, p5, p6}, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;->onDownloadAppProgressChanged(JJ)V

    goto :goto_0

    .line 1104
    :cond_2
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method public OnDownloadSDKTaskStateChanged(Lcom/tencent/tmdownloader/TMAssistantDownloadClient;Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .prologue
    .line 999
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x65

    const/4 v2, 0x0

    const-string v3, "SelfUpdate DownloadSDKTaskState_DOWNLOADING!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1085
    :cond_0
    :goto_0
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    return-void

    .line 1009
    :cond_1
    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/l;

    invoke-direct {v1, p0, p2, p3}, Lcom/tencent/tmselfupdatesdk/l;-><init>(Lcom/tencent/tmselfupdatesdk/k;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1081
    :cond_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x11

    const-string v3, "mClientSDKListener,OnDownloadSDKTaskStateChanged,DownloadSDKTaskState_FAILED!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public OnDwonloadSDKServiceInvalid(Lcom/tencent/tmdownloader/TMAssistantDownloadClient;)V
    .locals 4

    .prologue
    .line 990
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/k;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0x10

    const-string v3, "SelfUpdate DwonloadSDKServiceInvalid!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 993
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-void
.end method
