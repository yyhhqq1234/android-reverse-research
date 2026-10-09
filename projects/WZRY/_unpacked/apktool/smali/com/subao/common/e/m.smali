.class public Lcom/subao/common/e/m;
.super Lcom/subao/common/e/x;
.source "ConvergenceNodesDownloader.java"


# direct methods
.method constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/subao/common/e/ab$b;

    invoke-direct {v0, p1}, Lcom/subao/common/e/ab$b;-><init>(Lcom/subao/common/e/ab$a;)V

    invoke-direct {p0, v0, p2}, Lcom/subao/common/e/x;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V

    .line 13
    return-void
.end method

.method public static d()Lcom/subao/common/e/x$a;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/subao/common/e/m$1;

    invoke-direct {v0}, Lcom/subao/common/e/m$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "configs/cip"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "convergence"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "key_convergence_node"

    return-object v0
.end method
