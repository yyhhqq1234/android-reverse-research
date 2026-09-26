.class public Lcom/netease/download/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Downloader"

.field public static mIsShowLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsShowLog()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "Downloader"

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "Downloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "Downloader"

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "Downloader"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "Downloader"

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "Downloader"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIsShowLog(Z)V
    .locals 0
    .param p0, "isShowLog"    # Z

    .prologue
    .line 93
    sput-boolean p0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    .line 94
    return-void
.end method

.method public static stepLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "Downloader"

    const-string v1, "============================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "Downloader"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "Downloader"

    const-string v1, "============================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "Downloader"

    if-eqz v0, :cond_1

    .line 24
    const-string v0, "Downloader"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "Downloader"

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "Downloader"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
