.class public abstract Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;
.super Lcom/tencent/qqgamemi/mgc/step/Step;
.source "InitializeStepTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntializeStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INSTANCE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qqgamemi/mgc/step/Step",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TINSTANCE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;, "Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep<TINSTANCE;>;"
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/step/Step;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 39
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;, "Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep<TINSTANCE;>;"
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;->getPARAM()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TINSTANCE;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;, "Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep<TINSTANCE;>;"
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;)Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINSTANCE;)",
            "Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;, "Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep<TINSTANCE;>;"
    .local p1, "object":Ljava/lang/Object;, "TINSTANCE;"
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;->object:Ljava/lang/Object;

    .line 31
    return-object p0
.end method
