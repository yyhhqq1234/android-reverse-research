.class Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
.super Ljava/lang/Object;
.source "GpuInfoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/GpuInfoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GpuInfo"
.end annotation


# instance fields
.field private mRender:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;
    .param p2, "render"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getRender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVendor:Ljava/lang/String;

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mRender:Ljava/lang/String;

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->mVersion:Ljava/lang/String;

    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method
