.class public Lcom/tencent/tga/livesdk/uitl/NoDoubleClickUtils;
.super Ljava/lang/Object;
.source "NoDoubleClickUtils.java"


# static fields
.field private static final SPACE_TIME:I = 0x7d0

.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initLastClickTime()V
    .locals 2

    .prologue
    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/tga/livesdk/uitl/NoDoubleClickUtils;->lastClickTime:J

    .line 12
    return-void
.end method

.method public static declared-synchronized isDoubleClick()Z
    .locals 10

    .prologue
    .line 15
    const-class v4, Lcom/tencent/tga/livesdk/uitl/NoDoubleClickUtils;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 17
    .local v0, "currentTime":J
    sget-wide v6, Lcom/tencent/tga/livesdk/uitl/NoDoubleClickUtils;->lastClickTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7d0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 19
    const/4 v2, 0x0

    .line 23
    .local v2, "isClick2":Z
    :goto_0
    sput-wide v0, Lcom/tencent/tga/livesdk/uitl/NoDoubleClickUtils;->lastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v4

    return v2

    .line 21
    .end local v2    # "isClick2":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "isClick2":Z
    goto :goto_0

    .line 15
    .end local v2    # "isClick2":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
