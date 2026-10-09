.class public Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;
.super Ljava/lang/Object;
.source "QCCJudgerMultiVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QCCParam"
.end annotation


# instance fields
.field cpuCore:I

.field cpuFreq:I

.field gpuRenderer:Ljava/lang/String;

.field gpuVendor:Ljava/lang/String;

.field manu:Ljava/lang/String;

.field model:Ljava/lang/String;

.field ram:I

.field resolution:I

.field socPlat:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->manu:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->model:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->ram:I

    .line 56
    iput v1, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuCore:I

    .line 57
    iput v1, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuFreq:I

    .line 58
    iput v1, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->resolution:I

    .line 59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->manu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->ram:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    iget v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuCore:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuFreq:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    iget v2, p0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->resolution:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
