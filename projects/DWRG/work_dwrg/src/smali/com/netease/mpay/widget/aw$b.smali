.class public Lcom/netease/mpay/widget/aw$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static a:J


# direct methods
.method public static a()J
    .locals 2

    sget-wide v0, Lcom/netease/mpay/widget/aw$b;->a:J

    return-wide v0
.end method

.method public static a(J)V
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    sput-wide p0, Lcom/netease/mpay/widget/aw$b;->a:J

    return-void

    :cond_0
    const-wide/16 p0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lcom/netease/mpay/widget/aw$b;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method
