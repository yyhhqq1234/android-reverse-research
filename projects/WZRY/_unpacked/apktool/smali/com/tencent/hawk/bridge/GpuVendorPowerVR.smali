.class public Lcom/tencent/hawk/bridge/GpuVendorPowerVR;
.super Lcom/tencent/hawk/bridge/GpuVendorBase;
.source "GpuVendorPowerVR.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clsNums"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/tencent/hawk/bridge/GpuVendorBase;-><init>(Ljava/lang/String;I)V

    .line 14
    return-void
.end method


# virtual methods
.method checkDeviceClassByGpu([Ljava/lang/String;[II)I
    .locals 16
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "classDefVlues"    # [I
    .param p3, "defLength"    # I

    .prologue
    .line 19
    const/4 v13, 0x0

    aget v4, p2, v13

    .line 20
    .local v4, "level":I
    const/4 v11, 0x0

    .line 21
    .local v11, "version":I
    const-string v7, ""

    .line 22
    .local v7, "series":Ljava/lang/String;
    const/4 v8, 0x0

    .line 23
    .local v8, "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-lt v2, v13, :cond_0

    .line 60
    :goto_1
    const/4 v1, 0x1

    .line 61
    .local v1, "defArrayPos":I
    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    if-eqz v8, :cond_d

    .line 62
    invoke-virtual {v8}, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->getParamValue()[I

    move-result-object v6

    .line 63
    .local v6, "params":[I
    if-nez v6, :cond_9

    .line 64
    const/4 v13, 0x0

    aget v5, p2, v13

    move v13, v5

    .line 78
    .end local v1    # "defArrayPos":I
    .end local v6    # "params":[I
    :goto_2
    return v13

    .line 24
    :cond_0
    aget-object v10, p1, v2

    .line 25
    .local v10, "token":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 23
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_2
    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v8, :cond_4

    .line 29
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;->seriesInOrderList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 39
    :cond_4
    :goto_3
    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    if-eqz v8, :cond_1

    .line 40
    const-string v13, "gx"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "g"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "ge"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 42
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 43
    const-string/jumbo v13, "token length is equals series"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 44
    const/4 v13, 0x0

    aget v5, p2, v13

    move v13, v5

    goto :goto_2

    .line 29
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 30
    .local v9, "tempSeries":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;->seriesMap:Ljava/util/Map;

    invoke-interface {v14, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 32
    move-object v7, v9

    .line 33
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;->seriesMap:Ljava/util/Map;

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    check-cast v8, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;

    .line 34
    .restart local v8    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    goto :goto_3

    .line 46
    .end local v9    # "tempSeries":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 47
    .local v12, "versionStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;->isValidInt(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 48
    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;->sValidNumber:I

    .line 49
    goto/16 :goto_1

    .line 51
    .end local v12    # "versionStr":Ljava/lang/String;
    :cond_8
    const-string v13, "sgx"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 52
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;->isValidInt(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 53
    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;->sValidNumber:I

    .line 54
    goto/16 :goto_1

    .line 66
    .end local v10    # "token":Ljava/lang/String;
    .restart local v1    # "defArrayPos":I
    .restart local v6    # "params":[I
    :cond_9
    const/4 v3, 0x0

    .local v3, "k":I
    move v5, v4

    .end local v4    # "level":I
    .local v5, "level":I
    :goto_4
    move/from16 v0, p3

    if-lt v3, v0, :cond_b

    :cond_a
    move v4, v5

    .end local v5    # "level":I
    .restart local v4    # "level":I
    move v13, v5

    .line 76
    goto/16 :goto_2

    .line 67
    .end local v4    # "level":I
    .restart local v5    # "level":I
    :cond_b
    aget v13, v6, v3

    if-ge v11, v13, :cond_c

    move v4, v5

    .end local v5    # "level":I
    .restart local v4    # "level":I
    move v13, v5

    .line 68
    goto/16 :goto_2

    .line 70
    .end local v4    # "level":I
    .restart local v5    # "level":I
    :cond_c
    move/from16 v0, p3

    if-ge v1, v0, :cond_a

    .line 72
    aget v4, p2, v1

    .line 73
    .end local v5    # "level":I
    .restart local v4    # "level":I
    add-int/lit8 v1, v1, 0x1

    .line 66
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "level":I
    .restart local v5    # "level":I
    goto :goto_4

    .line 78
    .end local v3    # "k":I
    .end local v5    # "level":I
    .end local v6    # "params":[I
    .restart local v4    # "level":I
    :cond_d
    const/4 v13, 0x0

    aget v5, p2, v13

    move v13, v5

    goto/16 :goto_2
.end method
