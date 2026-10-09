.class public Lcom/tencent/hawk/bridge/ActionCtrl;
.super Ljava/lang/Object;
.source "ActionCtrl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkIpPattern(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ipPattern"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public static hton(Ljava/lang/String;)J
    .locals 18
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 224
    const-wide/16 v8, 0x0

    .line 226
    .local v8, "result":J
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    move-wide v10, v8

    .end local v8    # "result":J
    .local v10, "result":J
    move-wide v12, v8

    .line 245
    :goto_0
    return-wide v12

    .line 229
    .end local v10    # "result":J
    .restart local v8    # "result":J
    :cond_1
    const-string v12, "."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "arr":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v12, v2

    const/4 v13, 0x4

    if-eq v12, v13, :cond_3

    .line 231
    :cond_2
    const-wide/16 v12, -0x1

    move-wide v10, v8

    .end local v8    # "result":J
    .restart local v10    # "result":J
    goto :goto_0

    .line 234
    .end local v10    # "result":J
    .restart local v8    # "result":J
    :cond_3
    const/4 v12, 0x0

    :try_start_0
    aget-object v12, v2, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 235
    .local v4, "ip1":I
    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 236
    .local v5, "ip2":I
    const/4 v12, 0x2

    aget-object v12, v2, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 237
    .local v6, "ip3":I
    const/4 v12, 0x3

    aget-object v12, v2, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 239
    .local v7, "ip4":I
    int-to-long v12, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v14, 0x18

    shl-long/2addr v12, v14

    int-to-long v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x10

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v6

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x8

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v7

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    or-long v8, v12, v14

    move-wide v10, v8

    .end local v8    # "result":J
    .restart local v10    # "result":J
    move-wide v12, v8

    .line 241
    goto :goto_0

    .line 242
    .end local v4    # "ip1":I
    .end local v5    # "ip2":I
    .end local v6    # "ip3":I
    .end local v7    # "ip4":I
    .end local v10    # "result":J
    .restart local v8    # "result":J
    :catch_0
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    const-string v12, "parse error"

    invoke-static {v12}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 245
    const-wide/16 v12, -0x1

    move-wide v10, v8

    .end local v8    # "result":J
    .restart local v10    # "result":J
    goto :goto_0
.end method

.method private static htonRangeWild(Ljava/lang/String;)Lcom/tencent/hawk/bridge/Pair;
    .locals 14
    .param p0, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 252
    :cond_0
    new-instance v5, Lcom/tencent/hawk/bridge/Pair;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    :goto_0
    return-object v5

    .line 253
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v5, v0

    const/4 v10, 0x4

    if-eq v5, v10, :cond_3

    .line 255
    :cond_2
    new-instance v5, Lcom/tencent/hawk/bridge/Pair;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_3
    const/16 v5, 0x2a

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_4

    .line 258
    new-instance v5, Lcom/tencent/hawk/bridge/Pair;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :cond_4
    const-wide/16 v6, 0x0

    .line 261
    .local v6, "left":J
    const-wide/16 v8, 0x0

    .line 263
    .local v8, "right":J
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "ipstr1":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "ipstr2":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "ipstr3":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "ipstr4":Ljava/lang/String;
    const/16 v5, 0x2a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    .line 269
    const-wide/16 v6, 0x0

    .line 270
    const-wide v8, 0xff000000L

    .line 276
    :goto_1
    const/16 v5, 0x2a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_6

    .line 277
    const-wide/32 v10, 0xff0000

    or-long/2addr v8, v10

    .line 283
    :goto_2
    const/16 v5, 0x2a

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_7

    .line 284
    const-wide/32 v10, 0xff00

    or-long/2addr v8, v10

    .line 290
    :goto_3
    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_8

    .line 291
    const-wide/16 v10, 0xff

    or-long/2addr v8, v10

    .line 297
    :goto_4
    new-instance v5, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 272
    :cond_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x18

    shl-long v6, v10, v5

    .line 273
    move-wide v8, v6

    goto :goto_1

    .line 279
    :cond_6
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x10

    shl-long/2addr v10, v5

    or-long/2addr v6, v10

    .line 280
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x10

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    goto :goto_2

    .line 286
    :cond_7
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x8

    shl-long/2addr v10, v5

    or-long/2addr v6, v10

    .line 287
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v5, 0x8

    shl-long/2addr v10, v5

    or-long/2addr v8, v10

    goto :goto_3

    .line 293
    :cond_8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    or-long/2addr v6, v10

    .line 294
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    goto :goto_4
.end method

.method public static isApmVersionBlk(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "mBlkApmVersionListPattern"    # Ljava/lang/String;
    .param p1, "apmVer"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/ActionCtrl;->isVersionBlkTp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isArchBlk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mBlkArchListPattern"    # Ljava/lang/String;
    .param p1, "arch"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 215
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGameVersionBlk(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "mGameVersionListPattern"    # Ljava/lang/String;
    .param p1, "gamevr"    # I

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/ActionCtrl;->isVersionBlkTp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isGrayIp(Ljava/lang/String;J)Z
    .locals 25
    .param p0, "grayIPListPattern"    # Ljava/lang/String;
    .param p1, "localIp"    # J

    .prologue
    .line 309
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 310
    :cond_0
    const/16 v17, 0x0

    .line 368
    :goto_0
    return v17

    .line 311
    :cond_1
    const-string v17, ","

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 312
    .local v13, "range":[Ljava/lang/String;
    if-nez v13, :cond_2

    .line 313
    const/16 v17, 0x0

    goto :goto_0

    .line 314
    :cond_2
    array-length v0, v13

    move/from16 v19, v0

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 368
    const/16 v17, 0x0

    goto :goto_0

    .line 314
    :cond_3
    aget-object v15, v13, v18

    .line 316
    .local v15, "temp":Ljava/lang/String;
    const/16 v17, 0x5b

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v17, 0x5d

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 317
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 319
    :cond_5
    const/16 v17, 0x5b

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const/16 v20, 0x5d

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "ipPair":Ljava/lang/String;
    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 322
    .local v2, "firstDot":I
    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 323
    .local v11, "lastDot":I
    const/16 v17, 0x2d

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 324
    .local v12, "minus":I
    const/16 v17, 0x2a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 326
    .local v14, "starWild":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_6

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_6

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_7

    .line 327
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 329
    :cond_7
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_8

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_8

    .line 330
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 332
    :cond_8
    const-wide/high16 v4, -0x8000000000000000L

    .line 333
    .local v4, "ipLeft":J
    const-wide v8, 0x7fffffffffffffffL

    .line 335
    .local v8, "ipRight":J
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_d

    .line 336
    invoke-static {v7}, Lcom/tencent/hawk/bridge/ActionCtrl;->htonRangeWild(Ljava/lang/String;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v16

    .line 338
    .local v16, "wildRange":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v17, v20, v22

    if-eqz v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v17, v20, v22

    if-nez v17, :cond_a

    .line 339
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 341
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 342
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 362
    .end local v16    # "wildRange":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_b
    :goto_2
    const-wide/16 v20, -0x1

    cmp-long v17, v4, v20

    if-eqz v17, :cond_c

    const-wide/16 v20, -0x1

    cmp-long v17, v8, v20

    if-nez v17, :cond_13

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 345
    :cond_d
    const/16 v17, 0x2d

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v17, 0x0

    goto/16 :goto_0

    .line 346
    :cond_e
    if-le v12, v2, :cond_f

    if-le v12, v11, :cond_f

    .line 347
    const/16 v17, 0x0

    const/16 v20, 0x2d

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "ipLeftStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/hawk/bridge/ActionCtrl;->hton(Ljava/lang/String;)J

    move-result-wide v4

    .line 349
    goto :goto_2

    .end local v3    # "ipLeftStr":Ljava/lang/String;
    :cond_f
    if-le v12, v2, :cond_12

    if-ge v12, v11, :cond_12

    .line 351
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "ipList":[Ljava/lang/String;
    if-eqz v6, :cond_10

    array-length v0, v6

    move/from16 v17, v0

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 353
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 354
    :cond_11
    const/16 v17, 0x0

    aget-object v17, v6, v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/hawk/bridge/ActionCtrl;->hton(Ljava/lang/String;)J

    move-result-wide v4

    .line 355
    const/16 v17, 0x1

    aget-object v17, v6, v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/hawk/bridge/ActionCtrl;->hton(Ljava/lang/String;)J

    move-result-wide v8

    .line 356
    goto :goto_2

    .end local v6    # "ipList":[Ljava/lang/String;
    :cond_12
    if-ge v12, v2, :cond_b

    .line 357
    const/16 v17, 0x2d

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, "ipRightStr":Ljava/lang/String;
    invoke-static {v10}, Lcom/tencent/hawk/bridge/ActionCtrl;->hton(Ljava/lang/String;)J

    move-result-wide v8

    goto/16 :goto_2

    .line 364
    .end local v10    # "ipRightStr":Ljava/lang/String;
    :cond_13
    cmp-long v17, p1, v4

    if-ltz v17, :cond_14

    cmp-long v17, p1, v8

    if-gtz v17, :cond_14

    .line 365
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 314
    :cond_14
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto/16 :goto_1
.end method

.method public static isGrayMac(Ljava/lang/String;J)Z
    .locals 29
    .param p0, "grayMacListPattern"    # Ljava/lang/String;
    .param p1, "localMac"    # J

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    const/16 v21, 0x1

    .line 423
    :goto_0
    return v21

    .line 375
    :cond_0
    const-string v21, ","

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "macPattern":[Ljava/lang/String;
    if-nez v9, :cond_1

    .line 377
    const/16 v21, 0x1

    goto :goto_0

    .line 379
    :cond_1
    array-length v0, v9

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 423
    const/16 v21, 0x1

    goto :goto_0

    .line 379
    :cond_2
    aget-object v17, v9, v21

    .line 380
    .local v17, "temp":Ljava/lang/String;
    const/16 v23, 0x23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 381
    .local v8, "hashTag":I
    const/16 v23, 0x2d

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 382
    .local v12, "minus":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_4

    .line 383
    :cond_3
    const/16 v21, 0x0

    goto :goto_0

    .line 386
    :cond_4
    const-string v23, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 387
    .local v16, "sepArr":[Ljava/lang/String;
    if-eqz v16, :cond_5

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 388
    :cond_5
    const/16 v21, 0x0

    goto :goto_0

    .line 391
    :cond_6
    const/4 v4, -0x1

    .line 393
    .local v4, "bytePos":I
    const/16 v23, 0x0

    :try_start_0
    aget-object v23, v16, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 399
    const/16 v23, 0x1

    move/from16 v0, v23

    if-lt v4, v0, :cond_7

    const/16 v23, 0x6

    move/from16 v0, v23

    if-le v4, v0, :cond_8

    .line 400
    :cond_7
    const/16 v21, 0x0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v5

    .line 395
    .local v5, "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "parse error"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 396
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 402
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    rsub-int/lit8 v4, v4, 0x6

    .line 403
    mul-int/lit8 v23, v4, 0x8

    shr-long v24, p1, v23

    const-wide/16 v26, 0xff

    and-long v6, v24, v26

    .line 405
    .local v6, "byteValue":J
    const/16 v23, 0x1

    aget-object v23, v16, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 406
    .local v20, "trimRange":Ljava/lang/String;
    const/16 v23, 0x2d

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    if-nez v23, :cond_9

    .line 407
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 408
    .local v18, "target":J
    cmp-long v23, v6, v18

    if-lez v23, :cond_c

    .line 409
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 410
    .end local v18    # "target":J
    :cond_9
    const/16 v23, 0x2d

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 411
    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 412
    .restart local v18    # "target":J
    cmp-long v23, v6, v18

    if-gez v23, :cond_c

    .line 413
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 415
    .end local v18    # "target":J
    :cond_a
    const-string v23, "-"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 416
    .local v13, "rangeValue":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v23, v13, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 417
    .local v10, "left":J
    const/16 v23, 0x1

    aget-object v23, v13, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 418
    .local v14, "right":J
    cmp-long v23, v10, v6

    if-gtz v23, :cond_b

    cmp-long v23, v14, v6

    if-gez v23, :cond_c

    .line 419
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 379
    .end local v10    # "left":J
    .end local v13    # "rangeValue":[Ljava/lang/String;
    .end local v14    # "right":J
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1
.end method

.method public static isGrayManu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "grayManuPattern"    # Ljava/lang/String;
    .param p1, "manu"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2a

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 143
    :cond_1
    :goto_0
    return v3

    .line 118
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 119
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-static {p1, p0}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 123
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 143
    goto :goto_0

    .line 128
    :cond_4
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "manuArr":[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v5, v0

    if-nez v5, :cond_6

    :cond_5
    move v3, v4

    .line 130
    goto :goto_0

    .line 131
    :cond_6
    array-length v6, v0

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_7

    move v3, v4

    .line 141
    goto :goto_0

    .line 131
    :cond_7
    aget-object v1, v0, v5

    .line 132
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "trimTemp":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_8

    invoke-static {p1, v2}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 137
    :cond_8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static isGrayModel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "mGrayModelPattern"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2a

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    if-eqz p1, :cond_0

    .line 185
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 186
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_2

    invoke-static {p1, p0}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 191
    goto :goto_0

    .line 195
    :cond_3
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "modelArr":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-eqz v5, :cond_0

    .line 199
    array-length v6, v0

    move v5, v3

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 200
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "trimTemp":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_4

    invoke-static {p1, v2}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    .line 203
    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    .line 206
    goto :goto_0

    .line 199
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static isManuBlk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "mBlkManuListPattern"    # Ljava/lang/String;
    .param p1, "manu"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2a

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 111
    :cond_1
    :goto_0
    return v3

    .line 80
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v3, v4

    .line 81
    goto :goto_0

    .line 84
    :cond_4
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 85
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_5

    invoke-static {p1, p0}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 111
    goto :goto_0

    .line 95
    :cond_6
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "manuArr":[Ljava/lang/String;
    if-eqz v0, :cond_7

    array-length v5, v0

    if-nez v5, :cond_8

    :cond_7
    move v3, v4

    .line 97
    goto :goto_0

    .line 99
    :cond_8
    array-length v6, v0

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_9

    move v3, v4

    .line 109
    goto :goto_0

    .line 99
    :cond_9
    aget-object v1, v0, v5

    .line 100
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "trimTemp":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_a

    invoke-static {p1, v2}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 105
    :cond_a
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static isModelBlk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "mBlkModelListPattern"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2a

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 175
    :cond_1
    :goto_0
    return v3

    .line 150
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 151
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-static {p1, p0}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 175
    goto :goto_0

    .line 160
    :cond_4
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "modelArr":[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v5, v0

    if-nez v5, :cond_6

    :cond_5
    move v3, v4

    .line 162
    goto :goto_0

    .line 163
    :cond_6
    array-length v6, v0

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_7

    move v3, v4

    .line 173
    goto :goto_0

    .line 163
    :cond_7
    aget-object v1, v0, v5

    .line 164
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "trimTemp":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_8

    invoke-static {p1, v2}, Lcom/tencent/hawk/bridge/WildMatch;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 169
    :cond_8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static isOSVersionBlk(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "mBlkOSVersionListPattern"    # Ljava/lang/String;
    .param p1, "oslevel"    # I

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/ActionCtrl;->isVersionBlkTp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isVersionBlkTp(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "versionList"    # Ljava/lang/String;
    .param p1, "checkVersion"    # I

    .prologue
    const/4 v3, 0x0

    .line 11
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v3

    .line 13
    :cond_1
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, "versions":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "targetversion":Ljava/lang/String;
    array-length v5, v2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 20
    .local v1, "temp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 21
    const/4 v3, 0x1

    goto :goto_0

    .line 19
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
