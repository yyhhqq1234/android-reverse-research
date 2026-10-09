.class public Lcom/subao/common/n/i;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/subao/common/n/i;->a:J

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 14
    sget-wide v0, Lcom/subao/common/n/i;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcom/subao/common/n/i;->a:J

    .line 17
    :cond_0
    sget-wide v0, Lcom/subao/common/n/i;->a:J

    return-wide v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/subao/common/n/i;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
