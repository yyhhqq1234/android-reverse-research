.class public Lcom/netease/pharos/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pharos"

.field private static sIsDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "pharos"

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "pharos"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "pharos"

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "pharos"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "pharos"

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "pharos"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIsShowLog(Z)V
    .locals 3
    .param p0, "isDebug"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    .line 24
    const-string v0, "pharos"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pharos sIsDebug = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static stepLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "pharos"

    const-string v1, "============================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "pharos"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "pharos"

    const-string v1, "============================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "pharos"

    if-eqz v0, :cond_1

    .line 30
    const-string v0, "pharos"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "pharos"

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "pharos"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
