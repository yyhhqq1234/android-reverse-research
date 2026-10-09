.class public abstract Lcom/tencent/component/utils/clock/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation


# instance fields
.field private clockId:I

.field private interval:J

.field private listener:Lcom/tencent/component/utils/clock/OnClockListener;


# direct methods
.method protected constructor <init>(IJLcom/tencent/component/utils/clock/OnClockListener;)V
    .locals 2
    .param p1, "clockId"    # I
    .param p2, "interval"    # J
    .param p4, "listener"    # Lcom/tencent/component/utils/clock/OnClockListener;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/component/utils/clock/Clock;->interval:J

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/component/utils/clock/Clock;->clockId:I

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/tencent/component/utils/clock/Clock;->setInterval(J)V

    .line 36
    invoke-direct {p0, p1}, Lcom/tencent/component/utils/clock/Clock;->setClockId(I)V

    .line 37
    invoke-direct {p0, p4}, Lcom/tencent/component/utils/clock/Clock;->setListener(Lcom/tencent/component/utils/clock/OnClockListener;)V

    .line 38
    return-void
.end method

.method private setClockId(I)V
    .locals 0
    .param p1, "clockId"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/tencent/component/utils/clock/Clock;->clockId:I

    .line 85
    return-void
.end method

.method private setListener(Lcom/tencent/component/utils/clock/OnClockListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/component/utils/clock/OnClockListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tencent/component/utils/clock/Clock;->listener:Lcom/tencent/component/utils/clock/OnClockListener;

    .line 106
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public getClockId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/tencent/component/utils/clock/Clock;->clockId:I

    return v0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/tencent/component/utils/clock/Clock;->interval:J

    return-wide v0
.end method

.method public getListener()Lcom/tencent/component/utils/clock/OnClockListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/component/utils/clock/Clock;->listener:Lcom/tencent/component/utils/clock/OnClockListener;

    return-object v0
.end method

.method public setInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/tencent/component/utils/clock/Clock;->interval:J

    .line 64
    return-void
.end method
