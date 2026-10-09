.class public Lcom/standardar/wrapper/TrackableBase;
.super Ljava/lang/Object;
.source "TrackableBase.java"

# interfaces
.implements Lcom/standardar/wrapper/Trackable;


# instance fields
.field protected final mSession:Lcom/standardar/wrapper/Session;

.field protected mTrackablePtr:J


# direct methods
.method constructor <init>(JLcom/standardar/wrapper/Session;)V
    .locals 1
    .param p1, "trackablePtr"    # J
    .param p3, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p3, p0, Lcom/standardar/wrapper/TrackableBase;->mSession:Lcom/standardar/wrapper/Session;

    .line 14
    iput-wide p1, p0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    .line 15
    return-void
.end method

.method private static native arGetTrackableType(JJ)I
.end method

.method private native arGetTrackingState(JJ)I
.end method

.method private static native arReleaseTrackable(J)V
.end method

.method static getTrackableType(JJ)I
    .locals 2
    .param p0, "sessionPtr"    # J
    .param p2, "trackablePtr"    # J

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/standardar/wrapper/TrackableBase;->arGetTrackableType(JJ)I

    move-result v0

    return v0
.end method

.method static releaseTrackable(J)V
    .locals 0
    .param p0, "trackablePtr"    # J

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/standardar/wrapper/TrackableBase;->arReleaseTrackable(J)V

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 24
    check-cast v0, Lcom/standardar/wrapper/TrackableBase;

    .line 25
    .local v0, "trackable":Lcom/standardar/wrapper/TrackableBase;
    iget-wide v2, p0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    iget-wide v4, v0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    invoke-static {v0, v1}, Lcom/standardar/wrapper/TrackableBase;->arReleaseTrackable(J)V

    .line 37
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 38
    return-void
.end method

.method public getTrackingState()Lcom/standardar/wrapper/Trackable$TrackingState;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    iget-object v1, p0, Lcom/standardar/wrapper/TrackableBase;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/standardar/wrapper/TrackableBase;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 42
    :cond_0
    sget-object v1, Lcom/standardar/wrapper/Trackable$TrackingState;->STOPPED:Lcom/standardar/wrapper/Trackable$TrackingState;

    .line 45
    :goto_0
    return-object v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/standardar/wrapper/TrackableBase;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/TrackableBase;->arGetTrackingState(JJ)I

    move-result v0

    .line 45
    .local v0, "state":I
    invoke-static {v0}, Lcom/standardar/wrapper/Trackable$TrackingState;->fromNumber(I)Lcom/standardar/wrapper/Trackable$TrackingState;

    move-result-object v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/standardar/wrapper/TrackableBase;->mTrackablePtr:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method
