.class public Lcom/standardar/wrapper/LightEstimate;
.super Ljava/lang/Object;
.source "LightEstimate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/wrapper/LightEstimate$State;
    }
.end annotation


# instance fields
.field protected mLightEstimatePtr:J

.field private final mSession:Lcom/standardar/wrapper/Session;


# direct methods
.method constructor <init>(Lcom/standardar/wrapper/Session;)V
    .locals 2
    .param p1, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/standardar/wrapper/LightEstimate;->mSession:Lcom/standardar/wrapper/Session;

    .line 30
    iget-object v0, p0, Lcom/standardar/wrapper/LightEstimate;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/LightEstimate;->arCreateLightEstimate(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/standardar/wrapper/LightEstimate;->mLightEstimatePtr:J

    .line 31
    return-void
.end method

.method private native arCreateLightEstimate(J)J
.end method

.method private native arDestroyLightEstimate(J)V
.end method

.method private native arGetPixelIntensity(JJ)F
.end method

.method private native arGetState(JJ)I
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/standardar/wrapper/LightEstimate;->mLightEstimatePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/standardar/wrapper/LightEstimate;->mLightEstimatePtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/LightEstimate;->arDestroyLightEstimate(J)V

    .line 38
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public getPixelIntensity()F
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/standardar/wrapper/LightEstimate;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/LightEstimate;->mLightEstimatePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/LightEstimate;->arGetPixelIntensity(JJ)F

    move-result v0

    return v0
.end method

.method public getState()Lcom/standardar/wrapper/LightEstimate$State;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    iget-object v1, p0, Lcom/standardar/wrapper/LightEstimate;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/standardar/wrapper/LightEstimate;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/standardar/wrapper/LightEstimate;->mLightEstimatePtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 47
    :cond_0
    sget-object v1, Lcom/standardar/wrapper/LightEstimate$State;->NOT_VALID:Lcom/standardar/wrapper/LightEstimate$State;

    .line 50
    :goto_0
    return-object v1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/standardar/wrapper/LightEstimate;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/LightEstimate;->mLightEstimatePtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/LightEstimate;->arGetState(JJ)I

    move-result v0

    .line 50
    .local v0, "state":I
    invoke-static {v0}, Lcom/standardar/wrapper/LightEstimate$State;->fromNumber(I)Lcom/standardar/wrapper/LightEstimate$State;

    move-result-object v1

    goto :goto_0
.end method
