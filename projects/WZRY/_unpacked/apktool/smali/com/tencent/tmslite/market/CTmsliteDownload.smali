.class public Lcom/tencent/tmslite/market/CTmsliteDownload;
.super Ljava/lang/Object;
.source "CTmsliteDownload.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[SGame CTmsliteDownload]"

.field static downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

.field static mTmsCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

.field static m_bUseDownLoad:Z

.field static s_GameObjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "CTmsUpdateObserver"

    sput-object v0, Lcom/tencent/tmslite/market/CTmsliteDownload;->s_GameObjectName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tmslite/market/CTmsliteDownload;->m_bUseDownLoad:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    .line 123
    new-instance v0, Lcom/tencent/tmslite/market/CTmsliteDownload$1;

    invoke-direct {v0}, Lcom/tencent/tmslite/market/CTmsliteDownload$1;-><init>()V

    sput-object v0, Lcom/tencent/tmslite/market/CTmsliteDownload;->mTmsCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Download(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionCode"    # Ljava/lang/String;
    .param p2, "frequence"    # I

    .prologue
    .line 100
    const-string v1, "[SGame CTmsliteDownload]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":Z
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-virtual {v1, p0, p1, p2}, Lcom/tencent/tmslite/market/DownloadImp;->download(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 108
    :cond_0
    return v0
.end method

.method public static Install(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v1, "[SGame CTmsliteDownload]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Install "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "ret":Z
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-virtual {v1, p0, p1}, Lcom/tencent/tmslite/market/DownloadImp;->install(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 95
    :cond_0
    return v0
.end method

.method public static Pause(Z)V
    .locals 3
    .param p0, "bPause"    # Z

    .prologue
    .line 114
    const-string v0, "[SGame CTmsliteDownload]"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pause "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-virtual {v0, p0}, Lcom/tencent/tmslite/market/DownloadImp;->pause(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public static QueryState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, "[SGame CTmsliteDownload]"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QueryState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "ret":Z
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-virtual {v1, p0, p1}, Lcom/tencent/tmslite/market/DownloadImp;->queryState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 81
    :cond_0
    return v0
.end method

.method public static bindService()Z
    .locals 4

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "ret":Z
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/tencent/tmslite/market/DownloadImp;

    invoke-direct {v1}, Lcom/tencent/tmslite/market/DownloadImp;-><init>()V

    sput-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    .line 36
    :cond_0
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v3, Lcom/tencent/tmslite/market/CTmsliteDownload;->mTmsCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmslite/market/DownloadImp;->bindService(Landroid/content/Context;Lcom/tencent/tmslite/market/IDownload$TmsCallback;)Z

    move-result v0

    .line 41
    :cond_1
    const-string v1, "[SGame CTmsliteDownload]"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return v0
.end method

.method public static unBindService()Z
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "ret":Z
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/tencent/tmslite/market/DownloadImp;->unBindService(Landroid/content/Context;)Z

    move-result v0

    .line 51
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/tmslite/market/CTmsliteDownload;->downloadImp:Lcom/tencent/tmslite/market/DownloadImp;

    .line 52
    const-string v1, "[SGame CTmsliteDownload]"

    const-string/jumbo v2, "unBindService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v0
.end method
