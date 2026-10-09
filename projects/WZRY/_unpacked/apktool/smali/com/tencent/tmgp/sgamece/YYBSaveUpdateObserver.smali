.class public Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;
.super Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;
.source "YYBSaveUpdateObserver.java"


# static fields
.field public static m_initialized:Ljava/lang/Boolean;

.field private static s_observerFunctionNameOnCheckNeedUpdateInfo:Ljava/lang/String;

.field private static s_observerFunctionNameOnDownloadYYBProgressChanged:Ljava/lang/String;

.field private static s_observerFunctionNameOnDownloadYYBStateChanged:Ljava/lang/String;

.field private static s_observerGameObjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->m_initialized:Ljava/lang/Boolean;

    .line 14
    const-string v0, "CYYBUpdateObserver"

    sput-object v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerGameObjectName:Ljava/lang/String;

    .line 15
    const-string v0, "HandleMsgOnYYBCheckNeedUpdateInfo"

    sput-object v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerFunctionNameOnCheckNeedUpdateInfo:Ljava/lang/String;

    .line 16
    const-string v0, "HandleMsgOnDownloadYYBProgressChanged"

    sput-object v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerFunctionNameOnDownloadYYBProgressChanged:Ljava/lang/String;

    .line 17
    const-string v0, "HandleMsgOnDownloadYYBStateChanged"

    sput-object v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerFunctionNameOnDownloadYYBStateChanged:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCheckNeedUpdateInfo(JLjava/lang/String;JILjava/lang/String;I)V
    .locals 4
    .param p1, "newApkSize"    # J
    .param p3, "newFeature"    # Ljava/lang/String;
    .param p4, "patchSize"    # J
    .param p6, "status"    # I
    .param p7, "updateDownloadUrl"    # Ljava/lang/String;
    .param p8, "updateMethod"    # I

    .prologue
    .line 32
    const-string v1, "Java "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnCheckNeedUpdateInfo, status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updateMethod = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "msg":Ljava/lang/String;
    if-nez p6, :cond_0

    const/4 v1, 0x2

    if-ne p8, v1, :cond_0

    .line 38
    const-string v0, "1"

    .line 46
    :goto_0
    sget-object v1, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerGameObjectName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerFunctionNameOnCheckNeedUpdateInfo:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 42
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public OnDownloadAppProgressChanged(JJ)V
    .locals 0
    .param p1, "receiveDataLen"    # J
    .param p3, "totalDataLen"    # J

    .prologue
    .line 91
    return-void
.end method

.method public OnDownloadAppStateChanged(IILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 100
    return-void
.end method

.method public OnDownloadYYBProgressChanged(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "receiveDataLen"    # J
    .param p4, "totalDataLen"    # J

    .prologue
    .line 58
    const-string v1, "Java "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnDownloadYYBProgressChanged, receiveDataLen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", totalDataLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    long-to-int v2, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerGameObjectName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerFunctionNameOnDownloadYYBProgressChanged:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public OnDownloadYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "errorCode"    # I
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v1, "Java "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnDownloadYYBStateChanged, state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorMsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_0

    const-string p4, ""

    .end local p4    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerGameObjectName:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->s_observerFunctionNameOnDownloadYYBStateChanged:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
