.class public Lcom/standardar/wrapper/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/wrapper/Config$PlaneFindingMode;,
        Lcom/standardar/wrapper/Config$LightEstimationMode;
    }
.end annotation


# instance fields
.field protected mConfigPtr:J

.field private final mSession:Lcom/standardar/wrapper/Session;


# direct methods
.method public constructor <init>(Lcom/standardar/wrapper/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    const-wide/16 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    .line 63
    iput-wide v2, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    .line 64
    iget-object v0, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Config;->arCreateConfig(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    .line 66
    :cond_0
    return-void
.end method

.method private native arCreateConfig(J)J
.end method

.method private native arDestroyConfig(J)V
.end method

.method private native arGetLightEstimationMode(JJ)I
.end method

.method private native arGetPlaneFindingMode(JJ)I
.end method

.method private native arSetLightEstimationMode(JJI)V
.end method

.method private native arSetPlaneFindingMode(JJI)V
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
    .line 69
    iget-wide v0, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 70
    iget-wide v0, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Config;->arDestroyConfig(J)V

    .line 73
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    return-void
.end method

.method public getLightEstimationMode()Lcom/standardar/wrapper/Config$LightEstimationMode;
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Config;->arGetLightEstimationMode(JJ)I

    move-result v0

    .line 78
    .local v0, "state":I
    invoke-static {v0}, Lcom/standardar/wrapper/Config$LightEstimationMode;->fromNumber(I)Lcom/standardar/wrapper/Config$LightEstimationMode;

    move-result-object v1

    return-object v1
.end method

.method public getPlaneFindingMode()Lcom/standardar/wrapper/Config$PlaneFindingMode;
    .locals 6

    .prologue
    .line 86
    iget-object v1, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Config;->arGetPlaneFindingMode(JJ)I

    move-result v0

    .line 87
    .local v0, "state":I
    invoke-static {v0}, Lcom/standardar/wrapper/Config$PlaneFindingMode;->fromNumber(I)Lcom/standardar/wrapper/Config$PlaneFindingMode;

    move-result-object v1

    return-object v1
.end method

.method public setLightEstimationMode(Lcom/standardar/wrapper/Config$LightEstimationMode;)V
    .locals 7
    .param p1, "mode"    # Lcom/standardar/wrapper/Config$LightEstimationMode;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    iget v6, p1, Lcom/standardar/wrapper/Config$LightEstimationMode;->mIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Config;->arSetLightEstimationMode(JJI)V

    .line 83
    return-void
.end method

.method public setPlaneFindingMode(Lcom/standardar/wrapper/Config$PlaneFindingMode;)V
    .locals 7
    .param p1, "mode"    # Lcom/standardar/wrapper/Config$PlaneFindingMode;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/standardar/wrapper/Config;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    iget v6, p1, Lcom/standardar/wrapper/Config$PlaneFindingMode;->mIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Config;->arSetPlaneFindingMode(JJI)V

    .line 92
    return-void
.end method
