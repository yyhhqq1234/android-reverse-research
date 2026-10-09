.class public Lcom/tencent/qqgamemi/mgc/step/StepContainer;
.super Ljava/lang/Object;
.source "StepContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PARAM:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Step"


# instance fields
.field private mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TPARAM;"
        }
    .end annotation
.end field

.field private mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/mgc/step/Step",
            "<TPARAM;>;>;"
        }
    .end annotation
.end field

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/StepContainer;, "Lcom/tencent/qqgamemi/mgc/step/StepContainer<TPARAM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->mSteps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStep(Lcom/tencent/qqgamemi/mgc/step/Step;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqgamemi/mgc/step/Step",
            "<TPARAM;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/StepContainer;, "Lcom/tencent/qqgamemi/mgc/step/StepContainer<TPARAM;>;"
    .local p1, "step":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->mSteps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public allSteps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/mgc/step/Step",
            "<TPARAM;>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/StepContainer;, "Lcom/tencent/qqgamemi/mgc/step/StepContainer<TPARAM;>;"
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;>;"
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->mSteps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    return-void
.end method

.method public runSteps()V
    .locals 8

    .prologue
    .line 38
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/StepContainer;, "Lcom/tencent/qqgamemi/mgc/step/StepContainer<TPARAM;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->startTime:J

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->mSteps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqgamemi/mgc/step/Step;

    .line 43
    .local v1, "step":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    iget-object v5, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/tencent/qqgamemi/mgc/step/Step;->execute([Ljava/lang/Object;)V

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/qqgamemi/mgc/step/Step;->getExecutionInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    .end local v1    # "step":Lcom/tencent/qqgamemi/mgc/step/Step;, "Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;"
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    .local v2, "endTime":J
    const-string v4, "Step"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StepContainer: all steps finished, duration(ms)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->startTime:J

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", details:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public varargs setStepParams([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TPARAM;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/StepContainer;, "Lcom/tencent/qqgamemi/mgc/step/StepContainer<TPARAM;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TPARAM;"
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->mParams:[Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/mgc/step/Step",
            "<TPARAM;>;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/StepContainer;, "Lcom/tencent/qqgamemi/mgc/step/StepContainer<TPARAM;>;"
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/mgc/step/Step<TPARAM;>;>;"
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "you set a null step list!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->mSteps:Ljava/util/List;

    .line 21
    return-void
.end method
