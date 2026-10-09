.class public Lcom/tencent/hawk/bridge/GpuVendorAdreno;
.super Lcom/tencent/hawk/bridge/GpuVendorBase;
.source "GpuVendorAdreno.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clsLevels"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/tencent/hawk/bridge/GpuVendorBase;-><init>(Ljava/lang/String;I)V

    .line 11
    return-void
.end method


# virtual methods
.method checkDeviceClassByGpu([Ljava/lang/String;[II)I
    .locals 12
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "classDefVlues"    # [I
    .param p3, "defLength"    # I

    .prologue
    const/4 v11, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    .local v8, "version":I
    aget v6, p2, v11

    .line 18
    .local v6, "targetLevel":I
    const/4 v0, 0x1

    .line 19
    .local v0, "defArrayPos":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v9, p1

    if-lt v1, v9, :cond_0

    .line 50
    aget v7, p2, v11

    move v9, v7

    :goto_1
    return v9

    .line 21
    :cond_0
    aget-object v9, p1, v1

    invoke-virtual {p0, v9}, Lcom/tencent/hawk/bridge/GpuVendorAdreno;->isValidInt(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 23
    iget v8, p0, Lcom/tencent/hawk/bridge/GpuVendorAdreno;->sValidNumber:I

    .line 24
    div-int/lit8 v9, v8, 0x64

    mul-int/lit8 v4, v9, 0x64

    .line 26
    .local v4, "series":I
    iget-object v9, p0, Lcom/tencent/hawk/bridge/GpuVendorAdreno;->seriesMap:Ljava/util/Map;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/tencent/hawk/bridge/GpuVendorAdreno;->seriesMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 27
    iget-object v9, p0, Lcom/tencent/hawk/bridge/GpuVendorAdreno;->seriesMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;

    .line 28
    .local v5, "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    invoke-virtual {v5}, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->getParamValue()[I

    move-result-object v3

    .line 29
    .local v3, "paramValues":[I
    if-nez v3, :cond_1

    .line 30
    aget v7, p2, v11

    move v9, v7

    goto :goto_1

    .line 32
    :cond_1
    const/4 v2, 0x0

    .local v2, "k":I
    move v7, v6

    .end local v6    # "targetLevel":I
    .local v7, "targetLevel":I
    :goto_2
    if-lt v2, p3, :cond_3

    :cond_2
    move v6, v7

    .end local v7    # "targetLevel":I
    .restart local v6    # "targetLevel":I
    move v9, v7

    .line 42
    goto :goto_1

    .line 33
    .end local v6    # "targetLevel":I
    .restart local v7    # "targetLevel":I
    :cond_3
    aget v9, v3, v2

    if-ge v8, v9, :cond_4

    move v6, v7

    .end local v7    # "targetLevel":I
    .restart local v6    # "targetLevel":I
    move v9, v7

    .line 34
    goto :goto_1

    .line 37
    .end local v6    # "targetLevel":I
    .restart local v7    # "targetLevel":I
    :cond_4
    if-ge v0, p3, :cond_2

    .line 38
    aget v6, p2, v0

    .line 39
    .end local v7    # "targetLevel":I
    .restart local v6    # "targetLevel":I
    add-int/lit8 v0, v0, 0x1

    .line 32
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "targetLevel":I
    .restart local v7    # "targetLevel":I
    goto :goto_2

    .line 45
    .end local v2    # "k":I
    .end local v3    # "paramValues":[I
    .end local v5    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    .end local v7    # "targetLevel":I
    .restart local v6    # "targetLevel":I
    :cond_5
    add-int/lit8 v9, p3, -0x1

    aget v7, p2, v9

    move v9, v7

    goto :goto_1

    .line 19
    .end local v4    # "series":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
