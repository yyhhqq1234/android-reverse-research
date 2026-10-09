.class public Lcom/tencent/hawk/bridge/HawkLogger;
.super Ljava/lang/Object;
.source "HawkLogger.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "xclient"

.field public static mEnableDebugLog:Z

.field private static sTMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/tencent/hawk/bridge/HawkLogger;->mEnableDebugLog:Z

    .line 14
    sput-boolean v0, Lcom/tencent/hawk/bridge/HawkLogger;->sTMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkLogger;->sTMode:Z

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "xclient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string/jumbo v0, "xclient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableDebug()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/hawk/bridge/HawkLogger;->mEnableDebugLog:Z

    .line 22
    return-void
.end method

.method public static enableTMode()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/hawk/bridge/HawkLogger;->sTMode:Z

    .line 18
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkLogger;->mEnableDebugLog:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkLogger;->sTMode:Z

    if-eqz v0, :cond_0

    .line 45
    :cond_2
    const-string/jumbo v0, "xclient"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string/jumbo v0, "xclient"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
