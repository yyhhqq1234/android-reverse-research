.class public abstract Lcom/tencent/qqgamemi/mgc/step/Step;
.super Ljava/lang/Object;
.source "Step.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PARAM:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private endTime:J

.field private mExecutionInfo:Ljava/lang/String;

.field private mPARAM:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TPARAM;"
        }
    .end annotation
.end field

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupExecutionInfo()V
    .locals 6

    .prologue
    .line 30
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/step/Step;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->endTime:J

    iget-wide v4, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->mExecutionInfo:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public varargs execute([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TPARAM;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    .local p1, "param":[Ljava/lang/Object;, "[TPARAM;"
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->mPARAM:[Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/step/Step;->onPreExecute()V

    .line 15
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/step/Step;->run()V

    .line 16
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/step/Step;->onPostExecute()V

    .line 17
    return-void
.end method

.method public getExecutionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->mExecutionInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected getPARAM()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TPARAM;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->mPARAM:[Ljava/lang/Object;

    return-object v0
.end method

.method protected onPostExecute()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->endTime:J

    .line 43
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/step/Step;->setupExecutionInfo()V

    .line 44
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqgamemi/mgc/step/Step;->startTime:J

    .line 40
    return-void
.end method

.method protected abstract run()V
.end method
