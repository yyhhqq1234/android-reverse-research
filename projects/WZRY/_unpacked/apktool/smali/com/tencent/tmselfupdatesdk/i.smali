.class Lcom/tencent/tmselfupdatesdk/i;
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
    .line 903
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDownloadSDKTaskProgressChanged(Lcom/tencent/tmdownloader/TMAssistantDownloadClient;Ljava/lang/String;JJ)V
    .locals 7

    .prologue
    .line 965
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
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

    .line 968
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 969
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 970
    if-nez v0, :cond_1

    .line 972
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "listener = null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 975
    :cond_1
    instance-of v1, v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    if-eqz v1, :cond_0

    .line 976
    check-cast v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;->onDownloadYYBProgressChanged(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 979
    :cond_2
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public OnDownloadSDKTaskStateChanged(Lcom/tencent/tmdownloader/TMAssistantDownloadClient;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 912
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
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

    .line 915
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

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

    .line 916
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 917
    if-nez v0, :cond_1

    .line 918
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "listener = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_1
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    if-eqz v2, :cond_0

    .line 922
    check-cast v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;->onDownloadYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 927
    :cond_2
    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-boolean v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->j:Z

    if-eqz v0, :cond_3

    .line 930
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/i;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/j;

    invoke-direct {v1, p0, p2, p3}, Lcom/tencent/tmselfupdatesdk/j;-><init>(Lcom/tencent/tmselfupdatesdk/i;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    :cond_3
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method public OnDwonloadSDKServiceInvalid(Lcom/tencent/tmdownloader/TMAssistantDownloadClient;)V
    .locals 2

    .prologue
    .line 906
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter && exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void
.end method
