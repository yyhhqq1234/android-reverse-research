.class public Lcom/tencent/qqgamemi/util/DeviceDetectUtil$Space;
.super Ljava/lang/Object;
.source "DeviceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/util/DeviceDetectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Space"
.end annotation


# static fields
.field public static final SIZE_GB:D = 1.073741824E9

.field public static final SIZE_KB:D = 1024.0

.field public static final SIZE_MB:D = 1048576.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalAvailableSpaceInBytes()J
    .locals 8

    .prologue
    .line 554
    const-wide/16 v0, -0x1

    .line 556
    .local v0, "availableSpace":J
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 557
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 558
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    .line 559
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 564
    .end local v3    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v0

    .line 560
    :catch_0
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getExternalAvailableSpaceInGB()D
    .locals 6

    .prologue
    .line 587
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil$Space;->getExternalAvailableSpaceInBytes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 589
    .local v0, "bg":Ljava/math/BigDecimal;
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static getExternalAvailableSpaceInKB()D
    .locals 6

    .prologue
    .line 571
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil$Space;->getExternalAvailableSpaceInBytes()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 573
    .local v0, "bg":Ljava/math/BigDecimal;
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static getExternalAvailableSpaceInMB()D
    .locals 2

    .prologue
    .line 580
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil$Space;->getExternalAvailableSpaceInBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil$Space;->getFileSize(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExternalStorageAvailableBlocks()J
    .locals 5

    .prologue
    .line 596
    const-wide/16 v0, -0x1

    .line 598
    .local v0, "availableBlocks":J
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 599
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 600
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v0, v4

    .line 605
    .end local v3    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v0

    .line 601
    :catch_0
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFileSize(J)D
    .locals 6
    .param p0, "size"    # J

    .prologue
    .line 609
    new-instance v0, Ljava/math/BigDecimal;

    long-to-double v2, p0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 610
    .local v0, "bg":Ljava/math/BigDecimal;
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static isExternalAvailable()Z
    .locals 2

    .prologue
    .line 546
    const-string v0, "mounted"

    .line 547
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
