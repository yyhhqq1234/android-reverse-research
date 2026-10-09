.class public Lcom/tencent/trbt/videosdk/AppContext;
.super Ljava/lang/Object;
.source "AppContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/tencent/trbt/videosdk/AppContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/trbt/videosdk/AppContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/tencent/trbt/videosdk/AppContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getGameSwitch()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->getInstance()Lcom/tencent/trbt/videosdk/jni/VideoApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->getGameSwitch()Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "resPath"    # Ljava/lang/String;
    .param p4, "videoEnable"    # I
    .param p5, "userType"    # I

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/trbt/videosdk/AppContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called with: context = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], openId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], accessToken = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], resPath = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], videoEnable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], userType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sput-object p0, Lcom/tencent/trbt/videosdk/AppContext;->context:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->updateOpenId(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static notifyGameBegin()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->getInstance()Lcom/tencent/trbt/videosdk/jni/VideoApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->notifyGameBegin()V

    .line 33
    return-void
.end method

.method public static notifyGameEnd()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->getInstance()Lcom/tencent/trbt/videosdk/jni/VideoApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->notifyGameEnd()V

    .line 36
    return-void
.end method

.method public static notifyVideoEnd(Ljava/lang/String;[B)V
    .locals 1
    .param p0, "gameId"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 26
    invoke-static {}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->getInstance()Lcom/tencent/trbt/videosdk/jni/VideoApi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->notifyVideoEnd(Ljava/lang/String;[B)V

    .line 27
    return-void
.end method
