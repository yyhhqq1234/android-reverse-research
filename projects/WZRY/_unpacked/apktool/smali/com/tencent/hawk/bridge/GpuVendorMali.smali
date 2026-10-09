.class public Lcom/tencent/hawk/bridge/GpuVendorMali;
.super Lcom/tencent/hawk/bridge/GpuVendorBase;
.source "GpuVendorMali.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clsLevels"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/tencent/hawk/bridge/GpuVendorBase;-><init>(Ljava/lang/String;I)V

    .line 16
    return-void
.end method


# virtual methods
.method checkDeviceClassByGpu([Ljava/lang/String;[II)I
    .locals 20
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "classDefVlues"    # [I
    .param p3, "defLength"    # I

    .prologue
    .line 22
    const/16 v16, 0x0

    .line 23
    .local v16, "version":I
    const-string v13, ""

    .line 24
    .local v13, "series":Ljava/lang/String;
    const/4 v11, 0x0

    .line 25
    .local v11, "mp":I
    const/16 v18, 0x0

    aget v9, p2, v18

    .line 26
    .local v9, "level":I
    const/4 v14, 0x0

    .line 28
    .local v14, "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v6, v0, :cond_0

    .line 101
    if-eqz v14, :cond_11

    .line 103
    invoke-virtual {v14}, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->getParamValue()[I

    move-result-object v12

    .line 104
    .local v12, "paramsValues":[I
    if-nez v12, :cond_d

    .line 105
    const/16 v18, 0x0

    aget v18, p2, v18

    move v10, v9

    .line 123
    .end local v9    # "level":I
    .end local v12    # "paramsValues":[I
    .local v10, "level":I
    :goto_1
    return v18

    .line 29
    .end local v10    # "level":I
    .restart local v9    # "level":I
    :cond_0
    aget-object v15, p1, v6

    .line 31
    .local v15, "token":Ljava/lang/String;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2

    .line 28
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 33
    :cond_2
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    if-nez v14, :cond_4

    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/GpuVendorMali;->seriesMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_6

    .line 45
    :cond_4
    :goto_3
    if-eqz v14, :cond_1

    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "digStart":I
    const/4 v3, 0x0

    .line 48
    .local v3, "digEnd":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_7

    .line 63
    :goto_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v3, v0, :cond_5

    .line 64
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 67
    :cond_5
    if-nez v3, :cond_b

    .line 69
    const/16 v18, 0x0

    aget v18, p2, v18

    move v10, v9

    .end local v9    # "level":I
    .restart local v10    # "level":I
    goto :goto_1

    .line 34
    .end local v3    # "digEnd":I
    .end local v4    # "digStart":I
    .end local v7    # "j":I
    .end local v10    # "level":I
    .restart local v9    # "level":I
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 35
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 37
    .local v8, "keyName":Ljava/lang/String;
    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 38
    move-object v13, v8

    .line 39
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    check-cast v14, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;

    .line 40
    .restart local v14    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    goto :goto_3

    .line 49
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;>;"
    .end local v8    # "keyName":Ljava/lang/String;
    .restart local v3    # "digEnd":I
    .restart local v4    # "digStart":I
    .restart local v7    # "j":I
    :cond_7
    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 50
    if-nez v4, :cond_9

    .line 51
    move v4, v7

    .line 52
    move v3, v7

    .line 48
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 54
    :cond_9
    move v3, v7

    .line 56
    goto :goto_6

    .line 57
    :cond_a
    if-eqz v4, :cond_8

    goto :goto_5

    .line 73
    :cond_b
    if-lt v3, v4, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_1

    .line 74
    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 75
    .local v17, "versionStr":Ljava/lang/String;
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_c

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tencent/hawk/bridge/GpuVendorMali;->isValidInt(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/hawk/bridge/GpuVendorMali;->sValidNumber:I

    move/from16 v16, v0

    .line 79
    goto/16 :goto_2

    .line 81
    :cond_c
    const/16 v18, 0x0

    aget v18, p2, v18

    move v10, v9

    .end local v9    # "level":I
    .restart local v10    # "level":I
    goto/16 :goto_1

    .line 107
    .end local v3    # "digEnd":I
    .end local v4    # "digStart":I
    .end local v7    # "j":I
    .end local v10    # "level":I
    .end local v15    # "token":Ljava/lang/String;
    .end local v17    # "versionStr":Ljava/lang/String;
    .restart local v9    # "level":I
    .restart local v12    # "paramsValues":[I
    :cond_d
    const/16 v18, 0x0

    aget v9, p2, v18

    .line 108
    const/4 v2, 0x1

    .line 110
    .local v2, "defArrayPos":I
    const/4 v6, 0x0

    :goto_7
    move/from16 v0, p3

    if-lt v6, v0, :cond_f

    :cond_e
    move v10, v9

    .end local v9    # "level":I
    .restart local v10    # "level":I
    move/from16 v18, v9

    .line 120
    goto/16 :goto_1

    .line 111
    .end local v10    # "level":I
    .restart local v9    # "level":I
    :cond_f
    aget v18, v12, v6

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    move v10, v9

    .end local v9    # "level":I
    .restart local v10    # "level":I
    move/from16 v18, v9

    .line 112
    goto/16 :goto_1

    .line 114
    .end local v10    # "level":I
    .restart local v9    # "level":I
    :cond_10
    move/from16 v0, p3

    if-ge v2, v0, :cond_e

    .line 116
    aget v9, p2, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .end local v2    # "defArrayPos":I
    .end local v12    # "paramsValues":[I
    :cond_11
    move v10, v9

    .end local v9    # "level":I
    .restart local v10    # "level":I
    move/from16 v18, v9

    .line 123
    goto/16 :goto_1
.end method
