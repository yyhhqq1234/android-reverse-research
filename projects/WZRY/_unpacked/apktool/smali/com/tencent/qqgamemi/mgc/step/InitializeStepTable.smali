.class public Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;
.super Ljava/lang/Object;
.source "InitializeStepTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;
    }
.end annotation


# instance fields
.field private mInitSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/mgc/step/Step",
            "<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStepContainer:Lcom/tencent/qqgamemi/mgc/step/StepContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qqgamemi/mgc/step/StepContainer",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->mInitSteps:Ljava/util/List;

    .line 14
    new-instance v0, Lcom/tencent/qqgamemi/mgc/step/StepContainer;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/mgc/step/StepContainer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->mStepContainer:Lcom/tencent/qqgamemi/mgc/step/StepContainer;

    .line 15
    return-void
.end method


# virtual methods
.method public addStep(Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;)V
    .locals 1
    .param p1, "step"    # Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->mInitSteps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public runAll(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->mStepContainer:Lcom/tencent/qqgamemi/mgc/step/StepContainer;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->setStepParams([Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->mStepContainer:Lcom/tencent/qqgamemi/mgc/step/StepContainer;

    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->mInitSteps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->setSteps(Ljava/util/List;)V

    .line 24
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->mStepContainer:Lcom/tencent/qqgamemi/mgc/step/StepContainer;

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/mgc/step/StepContainer;->runSteps()V

    .line 25
    return-void
.end method
