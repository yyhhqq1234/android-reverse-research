.class public abstract Lcom/tencent/hawk/bridge/GpuVendorBase;
.super Ljava/lang/Object;
.source "GpuVendorBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    }
.end annotation


# instance fields
.field private gpuVendorName:Ljava/lang/String;

.field protected sValidNumber:I

.field protected seriesInOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected seriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "gpu"    # Ljava/lang/String;
    .param p2, "clsNums"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->sValidNumber:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->gpuVendorName:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->gpuVendorName:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->seriesMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->seriesInOrderList:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method abstract checkDeviceClassByGpu([Ljava/lang/String;[II)I
.end method

.method public getSeriesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->seriesMap:Ljava/util/Map;

    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->gpuVendorName:Ljava/lang/String;

    return-object v0
.end method

.method public initSeries(Ljava/util/List;I)V
    .locals 5
    .param p2, "clsNums"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "seriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 75
    return-void

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->seriesMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2, p2}, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->seriesInOrderList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isValidInt(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 50
    const/4 v3, 0x0

    iput v3, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->sValidNumber:I

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tencent/hawk/bridge/GpuVendorBase;->sValidNumber:I

    .line 55
    const/4 v2, 0x1

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
