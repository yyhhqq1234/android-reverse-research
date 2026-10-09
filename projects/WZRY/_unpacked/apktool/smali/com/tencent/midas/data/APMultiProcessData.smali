.class public Lcom/tencent/midas/data/APMultiProcessData;
.super Ljava/lang/Object;
.source "APMultiProcessData.java"


# instance fields
.field private guid:Ljava/lang/String;

.field private intervalTime:I

.field private payInterfaceTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APMultiProcessData;->guid:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/midas/data/APMultiProcessData;->payInterfaceTime:J

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/midas/data/APMultiProcessData;->intervalTime:I

    return-void
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/midas/data/APMultiProcessData;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getIntervalTime()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/tencent/midas/data/APMultiProcessData;->intervalTime:I

    return v0
.end method

.method public getPayInterfaceTime()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/tencent/midas/data/APMultiProcessData;->payInterfaceTime:J

    return-wide v0
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "guid"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/midas/data/APMultiProcessData;->guid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setIntervalTime(I)V
    .locals 0
    .param p1, "intervalTime"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/tencent/midas/data/APMultiProcessData;->intervalTime:I

    .line 46
    return-void
.end method

.method public setPayInterfaceTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/tencent/midas/data/APMultiProcessData;->payInterfaceTime:J

    .line 38
    return-void
.end method
