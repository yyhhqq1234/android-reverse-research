.class public Lcom/netease/mpay/widget/ad;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_0

    const-string v2, "Orientation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a([B)I
    .locals 10

    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return v1

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v0, 0x3

    array-length v4, p0

    if-ge v2, v4, :cond_d

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xff

    if-ne v0, v4, :cond_e

    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    const/16 v0, 0xff

    if-ne v4, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    const/16 v2, 0xd8

    if-eq v4, v2, :cond_1

    if-eq v4, v3, :cond_1

    const/16 v2, 0xd9

    if-eq v4, v2, :cond_d

    const/16 v2, 0xda

    if-ne v4, v2, :cond_3

    move v2, v1

    move v4, v0

    :goto_2
    if-le v2, v9, :cond_c

    invoke-static {p0, v4, v8, v1}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v0

    const v5, 0x49492a00    # 823968.0f

    if-eq v0, v5, :cond_7

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-eq v0, v5, :cond_7

    const-string v0, "CameraExif"

    const-string v2, "Invalid byte order"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p0, v0, v7, v1}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v5

    if-lt v5, v7, :cond_4

    add-int v2, v0, v5

    array-length v6, p0

    if-le v2, v6, :cond_5

    :cond_4
    const-string v0, "CameraExif"

    const-string v2, "Invalid length"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/16 v2, 0xe1

    if-ne v4, v2, :cond_6

    if-lt v5, v9, :cond_6

    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2, v8, v1}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v2

    const v4, 0x45786966

    if-ne v2, v4, :cond_6

    add-int/lit8 v2, v0, 0x6

    invoke-static {p0, v2, v7, v1}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v0, v5, -0x8

    move v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    add-int/2addr v0, v5

    goto :goto_1

    :cond_7
    const v5, 0x49492a00    # 823968.0f

    if-ne v0, v5, :cond_9

    move v0, v3

    :goto_3
    add-int/lit8 v3, v4, 0x4

    invoke-static {p0, v3, v8, v0}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    const/16 v5, 0xa

    if-lt v3, v5, :cond_8

    if-le v3, v2, :cond_a

    :cond_8
    const-string v0, "CameraExif"

    const-string v2, "Invalid offset"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    add-int/2addr v4, v3

    sub-int v3, v2, v3

    add-int/lit8 v2, v4, -0x2

    invoke-static {p0, v2, v7, v0}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v2

    move v5, v4

    move v4, v3

    :goto_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_c

    const/16 v2, 0xc

    if-lt v4, v2, :cond_c

    invoke-static {p0, v5, v7, v0}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v2

    const/16 v6, 0x112

    if-ne v2, v6, :cond_b

    add-int/lit8 v2, v5, 0x8

    invoke-static {p0, v2, v7, v0}, Lcom/netease/mpay/widget/ad;->a([BIIZ)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    const-string v0, "CameraExif"

    const-string v2, "Unsupported orientation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x5a

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x10e

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v2, v4, -0xc

    move v4, v2

    move v2, v3

    goto :goto_4

    :cond_c
    const-string v0, "CameraExif"

    const-string v2, "Orientation not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move v2, v1

    move v4, v0

    goto/16 :goto_2

    :cond_e
    move v4, v2

    move v2, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static a([BIIZ)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    add-int/lit8 v0, p2, -0x1

    add-int/2addr p1, v0

    const/4 v0, -0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 v1, v1, 0x8

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/2addr p1, v0

    move p2, v2

    goto :goto_0

    :cond_1
    return v1
.end method
