.class public Lcom/tencent/hawk/bridge/GpuVendorTegra;
.super Lcom/tencent/hawk/bridge/GpuVendorBase;
.source "GpuVendorTegra.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clsNums"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/tencent/hawk/bridge/GpuVendorBase;-><init>(Ljava/lang/String;I)V

    .line 16
    return-void
.end method


# virtual methods
.method checkDeviceClassByGpu([Ljava/lang/String;[II)I
    .locals 11
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "classDefVlues"    # [I
    .param p3, "defLength"    # I

    .prologue
    const/4 v10, 0x0

    .line 21
    const/4 v8, 0x0

    .line 23
    .local v8, "version":I
    aget v3, p2, v10

    .line 24
    .local v3, "level":I
    const/4 v6, 0x0

    .line 26
    .local v6, "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v9, p1

    if-lt v1, v9, :cond_0

    .line 34
    :goto_1
    if-nez v6, :cond_2

    .line 35
    aget v3, p2, v10

    move v4, v3

    .end local v3    # "level":I
    .local v4, "level":I
    move v9, v3

    .line 54
    :goto_2
    return v9

    .line 27
    .end local v4    # "level":I
    .restart local v3    # "level":I
    :cond_0
    aget-object v7, p1, v1

    .line 28
    .local v7, "token":Ljava/lang/String;
    iget-object v9, p0, Lcom/tencent/hawk/bridge/GpuVendorTegra;->seriesMap:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 29
    iget-object v9, p0, Lcom/tencent/hawk/bridge/GpuVendorTegra;->seriesMap:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    check-cast v6, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;

    .line 30
    .restart local v6    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v7    # "token":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    .line 38
    .local v0, "defArrayPos":I
    invoke-virtual {v6}, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->getParamValue()[I

    move-result-object v5

    .line 39
    .local v5, "paramValues":[I
    if-nez v5, :cond_3

    .line 40
    aget v9, p2, v10

    move v4, v3

    .end local v3    # "level":I
    .restart local v4    # "level":I
    goto :goto_2

    .line 42
    .end local v4    # "level":I
    .restart local v3    # "level":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    if-lt v2, p3, :cond_5

    :cond_4
    move v4, v3

    .end local v3    # "level":I
    .restart local v4    # "level":I
    move v9, v3

    .line 52
    goto :goto_2

    .line 43
    .end local v4    # "level":I
    .restart local v3    # "level":I
    :cond_5
    aget v9, v5, v2

    if-ge v8, v9, :cond_6

    move v4, v3

    .end local v3    # "level":I
    .restart local v4    # "level":I
    move v9, v3

    .line 44
    goto :goto_2

    .line 46
    .end local v4    # "level":I
    .restart local v3    # "level":I
    :cond_6
    if-ge v0, p3, :cond_4

    .line 48
    aget v3, p2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
