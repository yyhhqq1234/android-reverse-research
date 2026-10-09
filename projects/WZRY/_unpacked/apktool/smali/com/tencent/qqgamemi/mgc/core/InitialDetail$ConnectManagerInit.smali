.class Lcom/tencent/qqgamemi/mgc/core/InitialDetail$ConnectManagerInit;
.super Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;
.source "InitialDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/mgc/core/InitialDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectManagerInit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep",
        "<",
        "Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;-><init>()V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "ConnectManager Init"

    return-object v0
.end method

.method protected run()V
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/core/InitialDetail$ConnectManagerInit;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    .line 17
    .local v0, "obj":Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;
    invoke-virtual {v0}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->init()V

    .line 18
    return-void
.end method
