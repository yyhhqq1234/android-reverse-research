.class public Lcom/tencent/hawk/bridge/DevPacket;
.super Ljava/lang/Object;
.source "DevPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;
    }
.end annotation


# static fields
.field private static final READ_PHONE_STATE_PERMISSION:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static sCPUFreqPair:Lcom/tencent/hawk/bridge/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 427
    new-instance v0, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/hawk/bridge/DevPacket;->sCPUFreqPair:Lcom/tencent/hawk/bridge/Pair;

    .line 774
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInternalFlashSz(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 702
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 703
    .local v0, "path":Ljava/io/File;
    if-nez v0, :cond_0

    .line 704
    new-instance v1, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 705
    :cond_0
    invoke-static {v0}, Lcom/tencent/hawk/bridge/DevPacket;->getPathSz(Ljava/io/File;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v1

    return-object v1
.end method

.method private static checkMountStat()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 647
    const/4 v0, 0x0

    .line 649
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    if-nez v1, :cond_1

    .line 668
    if-eqz v1, :cond_0

    .line 670
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return v4

    .line 671
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 672
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkMountStat2"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    .line 653
    .local v3, "line":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    if-nez v3, :cond_3

    .line 668
    if-eqz v1, :cond_7

    .line 670
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .line 671
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 655
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    const-string/jumbo v5, "vfat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "/mnt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 656
    :cond_4
    const-string v5, "/dev/block/vold"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 657
    const-string v5, "/mnt/secure"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "/mnt/asec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "/mnt/obb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 658
    const-string v5, "/dev/mapper"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "tmpfs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    .line 668
    if-eqz v1, :cond_5

    .line 670
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 660
    :cond_5
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 671
    :catch_1
    move-exception v2

    .line 672
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkMountStat2"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 665
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 666
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkMountStat1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 668
    if-eqz v0, :cond_0

    .line 670
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 671
    :catch_3
    move-exception v2

    .line 672
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkMountStat2"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 668
    :goto_3
    if-eqz v0, :cond_6

    .line 670
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 674
    :cond_6
    :goto_4
    throw v4

    .line 671
    :catch_4
    move-exception v2

    .line 672
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkMountStat2"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 671
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 672
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkMountStat2"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 667
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 665
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static checkPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 777
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 778
    .local v0, "perm":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 852
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 854
    const-string v0, "0"

    .line 855
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getCpuABI()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 319
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 320
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 321
    .local v1, "buffer":Ljava/lang/StringBuffer;
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 322
    .local v0, "abis":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 323
    const-string v3, "arm64-v8a"

    .line 331
    .end local v0    # "abis":[Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    :goto_0
    return-object v3

    .line 325
    .restart local v0    # "abis":[Ljava/lang/String;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 326
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "abis":[Ljava/lang/String;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_2
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCpuCoreNum()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 113
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "dir":Ljava/io/File;
    new-instance v4, Lcom/tencent/hawk/bridge/DevPacket$1CpuFilter;

    invoke-direct {v4}, Lcom/tencent/hawk/bridge/DevPacket$1CpuFilter;-><init>()V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 115
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 116
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static getCpuFreq(I)Lcom/tencent/hawk/bridge/Pair;
    .locals 7
    .param p0, "cores"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    .line 430
    sget-object v4, Lcom/tencent/hawk/bridge/DevPacket;->sCPUFreqPair:Lcom/tencent/hawk/bridge/Pair;

    invoke-virtual {v4}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    sget-object v4, Lcom/tencent/hawk/bridge/DevPacket;->sCPUFreqPair:Lcom/tencent/hawk/bridge/Pair;

    invoke-virtual {v4}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 431
    sget-object v4, Lcom/tencent/hawk/bridge/DevPacket;->sCPUFreqPair:Lcom/tencent/hawk/bridge/Pair;

    .line 447
    :goto_0
    return-object v4

    .line 433
    :cond_0
    const/high16 v2, 0x41200000    # 10.0f

    .line 434
    .local v2, "minFreq":F
    const/4 v1, 0x0

    .line 435
    .local v1, "maxFreq":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p0, :cond_1

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FREQ: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 446
    new-instance v4, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v4, Lcom/tencent/hawk/bridge/DevPacket;->sCPUFreqPair:Lcom/tencent/hawk/bridge/Pair;

    .line 447
    sget-object v4, Lcom/tencent/hawk/bridge/DevPacket;->sCPUFreqPair:Lcom/tencent/hawk/bridge/Pair;

    goto :goto_0

    .line 436
    :cond_1
    sget-object v4, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->MAX:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    invoke-static {v0, v4}, Lcom/tencent/hawk/bridge/DevPacket;->getTargetCpuFreq(ILcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;)F

    move-result v3

    .line 437
    .local v3, "temp":F
    cmpl-float v4, v3, v6

    if-lez v4, :cond_2

    cmpg-float v4, v3, v2

    if-gez v4, :cond_2

    .line 438
    move v2, v3

    .line 441
    :cond_2
    cmpl-float v4, v3, v6

    if-lez v4, :cond_3

    cmpg-float v4, v1, v3

    if-gez v4, :cond_3

    .line 442
    move v1, v3

    .line 435
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCpuMinFreq()F
    .locals 10

    .prologue
    .line 350
    const/4 v5, 0x0

    .line 351
    .local v5, "result":F
    const/4 v3, 0x0

    .line 352
    .local v3, "cpuMinFreq":F
    const/4 v1, 0x0

    .line 354
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v6, ""

    .line 356
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 357
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 358
    const-string v7, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 359
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const v8, 0x49742400    # 1000000.0f

    div-float v3, v7, v8

    .line 361
    new-instance v7, Ljava/math/BigDecimal;

    float-to-double v8, v3

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v8, 0x2

    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 362
    .local v0, "bg":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 369
    .end local v0    # "bg":Ljava/math/BigDecimal;
    :cond_0
    if-eqz v2, :cond_1

    .line 371
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 377
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "result":F
    .end local v6    # "text":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    return v5

    .line 366
    .restart local v5    # "result":F
    :catch_0
    move-exception v4

    .line 369
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_2

    .line 371
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 367
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_1

    .line 372
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 373
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 368
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 369
    :goto_4
    if-eqz v1, :cond_3

    .line 371
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 376
    :cond_3
    :goto_5
    throw v7

    .line 372
    :catch_2
    move-exception v4

    .line 373
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 372
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 373
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "text":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 366
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 453
    const-string v5, "N/A"

    .line 454
    .local v5, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 456
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 457
    .local v4, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    if-nez v2, :cond_1

    .line 471
    if-eqz v2, :cond_0

    .line 473
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    :cond_0
    :goto_0
    const-string v5, "N/A"

    .end local v5    # "result":Ljava/lang/String;
    move-object v1, v2

    .line 480
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-object v5

    .line 474
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 475
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 460
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 461
    .local v6, "text":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 471
    if-eqz v2, :cond_2

    .line 473
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move-object v1, v2

    .line 462
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 474
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 463
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    const-string v7, ":\\s+"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v7, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ge v7, v9, :cond_6

    .line 471
    :cond_4
    if-eqz v2, :cond_5

    .line 473
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 465
    :cond_5
    :goto_3
    const-string v5, "N/A"

    .end local v5    # "result":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 474
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 466
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v7, 0x1

    :try_start_6
    aget-object v5, v0, v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 471
    if-eqz v2, :cond_7

    .line 473
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_7
    :goto_4
    move-object v1, v2

    .line 480
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 468
    .end local v0    # "array":[Ljava/lang/String;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "text":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 471
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    if-eqz v1, :cond_8

    .line 473
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 469
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    const-string v5, "N/A"

    goto :goto_1

    .line 474
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 475
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 470
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 471
    :goto_7
    if-eqz v1, :cond_9

    .line 473
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 478
    :cond_9
    :goto_8
    throw v7

    .line 474
    :catch_5
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 474
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catch_6
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 470
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "text":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 468
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "cx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 136
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 137
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v4, "metric":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 140
    .local v5, "size":Landroid/graphics/Point;
    const-string v6, ""

    .line 142
    .local v6, "str":Ljava/lang/String;
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_0

    .line 143
    invoke-virtual {v0, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/graphics/Point;->x:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v7, v6

    .end local v6    # "str":Ljava/lang/String;
    .local v7, "str":Ljava/lang/String;
    move-object v8, v6

    .line 157
    :goto_1
    return-object v8

    .line 146
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_0
    const-string v8, "android.view.Display"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getRealMetrics"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/util/DisplayMetrics;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 147
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v3, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 150
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    const-string v8, "N/A"

    move-object v7, v6

    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDpx(Landroid/content/Context;)I
    .locals 12
    .param p0, "cx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 163
    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 164
    .local v3, "mWindowManager":Landroid/view/WindowManager;
    if-nez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v7

    .line 166
    :cond_1
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 167
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 169
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    .local v5, "metric":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 173
    .local v6, "size":Landroid/graphics/Point;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_2

    .line 174
    invoke-virtual {v1, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 175
    iget v7, v6, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 177
    :cond_2
    const/4 v4, 0x0

    .line 179
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v8, "android.view.Display"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 182
    const-string v8, "getRealMetrics"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/util/DisplayMetrics;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 191
    if-eqz v4, :cond_0

    .line 194
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 205
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 183
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 186
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDpy(Landroid/content/Context;)I
    .locals 12
    .param p0, "cx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 212
    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 213
    .local v3, "mWindowManager":Landroid/view/WindowManager;
    if-nez v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v7

    .line 215
    :cond_1
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 216
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 218
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 220
    .local v5, "metric":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 222
    .local v6, "size":Landroid/graphics/Point;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_2

    .line 223
    invoke-virtual {v1, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 224
    iget v7, v6, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 226
    :cond_2
    const/4 v4, 0x0

    .line 228
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v8, "android.view.Display"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 229
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 231
    const-string v8, "getRealMetrics"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/util/DisplayMetrics;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 240
    if-eqz v4, :cond_0

    .line 243
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 254
    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 232
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getExtendedMemoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 18
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 591
    const-string/jumbo v15, "storage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    .line 592
    .local v7, "mStorageManager":Landroid/os/storage/StorageManager;
    if-nez v7, :cond_0

    .line 593
    const/4 v8, 0x0

    .line 643
    :goto_0
    return-object v8

    .line 594
    :cond_0
    const/4 v13, 0x0

    .line 596
    .local v13, "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v15, "android.os.storage.StorageVolume"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 597
    if-nez v13, :cond_1

    .line 598
    const/4 v8, 0x0

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "getVolumeList"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 601
    .local v3, "getVolumeList":Ljava/lang/reflect/Method;
    if-nez v3, :cond_2

    .line 602
    const/4 v8, 0x0

    goto :goto_0

    .line 604
    :cond_2
    const-string v15, "getPath"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 605
    .local v2, "getPath":Ljava/lang/reflect/Method;
    if-nez v2, :cond_3

    .line 606
    const/4 v8, 0x0

    goto :goto_0

    .line 608
    :cond_3
    const-string v15, "isRemovable"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 609
    .local v5, "isRemovable":Ljava/lang/reflect/Method;
    if-nez v5, :cond_4

    .line 610
    const/4 v8, 0x0

    goto :goto_0

    .line 612
    :cond_4
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 613
    .local v11, "result":Ljava/lang/Object;
    if-nez v11, :cond_5

    .line 614
    const/4 v8, 0x0

    goto :goto_0

    .line 616
    :cond_5
    invoke-static {v11}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 617
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v6, :cond_6

    .line 643
    .end local v2    # "getPath":Ljava/lang/reflect/Method;
    .end local v3    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v4    # "i":I
    .end local v5    # "isRemovable":Ljava/lang/reflect/Method;
    .end local v6    # "length":I
    .end local v11    # "result":Ljava/lang/Object;
    :goto_2
    const/4 v8, 0x0

    goto :goto_0

    .line 618
    .restart local v2    # "getPath":Ljava/lang/reflect/Method;
    .restart local v3    # "getVolumeList":Ljava/lang/reflect/Method;
    .restart local v4    # "i":I
    .restart local v5    # "isRemovable":Ljava/lang/reflect/Method;
    .restart local v6    # "length":I
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_6
    invoke-static {v11, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    .line 619
    .local v14, "storageVolumeElement":Ljava/lang/Object;
    if-nez v14, :cond_8

    .line 617
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 622
    :cond_8
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 623
    .local v9, "pathObject":Ljava/lang/Object;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v5, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 624
    .local v12, "rmObject":Ljava/lang/Object;
    if-eqz v9, :cond_7

    if-eqz v12, :cond_7

    .line 627
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "path":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    .line 630
    .local v10, "removable":Z
    if-eqz v10, :cond_7

    goto/16 :goto_0

    .line 634
    .end local v2    # "getPath":Ljava/lang/reflect/Method;
    .end local v3    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v4    # "i":I
    .end local v5    # "isRemovable":Ljava/lang/reflect/Method;
    .end local v6    # "length":I
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "pathObject":Ljava/lang/Object;
    .end local v10    # "removable":Z
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "rmObject":Ljava/lang/Object;
    .end local v14    # "storageVolumeElement":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 636
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 637
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 638
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 640
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getExternalFlashSz(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3

    const-wide/16 v8, 0x2

    const-wide/16 v6, 0x1

    .line 679
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->checkMountStat()Z

    move-result v3

    if-nez v3, :cond_0

    .line 680
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 697
    :goto_0
    return-object v3

    .line 683
    :cond_0
    invoke-static {p0}, Lcom/tencent/hawk/bridge/DevPacket;->getExtendedMemoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 685
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 686
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ExternalFlashSz is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 687
    const/4 v1, 0x0

    .line 689
    .local v1, "externalPath":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "externalPath":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .restart local v1    # "externalPath":Ljava/io/File;
    invoke-static {v1}, Lcom/tencent/hawk/bridge/DevPacket;->getPathSz(Ljava/io/File;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v3

    goto :goto_0

    .line 690
    .end local v1    # "externalPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ExternalMem error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 694
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getHardwareInfo()Ljava/lang/String;
    .locals 11

    .prologue
    .line 872
    const-string v3, "/proc/cpuinfo"

    .line 873
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 874
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 875
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 877
    .local v7, "line":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    if-nez v5, :cond_1

    .line 922
    if-eqz v0, :cond_0

    .line 924
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 879
    :cond_0
    :goto_0
    const-string v6, "NA"

    move-object v4, v5

    .line 930
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :goto_1
    return-object v6

    .line 925
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 926
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 880
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v1, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 881
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    if-nez v1, :cond_c

    .line 922
    if-eqz v1, :cond_2

    .line 924
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 882
    :cond_2
    :goto_2
    const-string v6, "NA"

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .line 925
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 885
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    const-string v9, "Hardware"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 886
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 887
    .local v8, "temp":[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v9, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v10, 0x2

    if-ge v9, v10, :cond_6

    .line 922
    :cond_4
    if-eqz v1, :cond_5

    .line 924
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 888
    :cond_5
    :goto_3
    const-string v6, "NA"

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .line 925
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 890
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v9, 0x1

    :try_start_6
    aget-object v9, v8, v9

    if-eqz v9, :cond_a

    .line 891
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 907
    .local v6, "hardware":Ljava/lang/String;
    const-string v9, "qualcomm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "msm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 908
    const-string v9, "msm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v6

    .line 922
    .end local v6    # "hardware":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 924
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_4
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 908
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .line 925
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 922
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "hardware":Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    .line 924
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_9
    :goto_5
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 910
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 925
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 922
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "hardware":Ljava/lang/String;
    :cond_a
    if-eqz v1, :cond_b

    .line 924
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 913
    :cond_b
    :goto_6
    const-string v6, "Error"

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 925
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 884
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "temp":[Ljava/lang/String;
    :cond_c
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v7

    if-nez v7, :cond_3

    .line 922
    if-eqz v1, :cond_d

    .line 924
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 930
    :cond_d
    :goto_7
    const-string v6, "NA"

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 919
    :catch_6
    move-exception v2

    .line 922
    .local v2, "e":Ljava/lang/Exception;
    :goto_8
    if-eqz v0, :cond_e

    .line 924
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 920
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_9
    const-string v6, "N/A"

    goto/16 :goto_1

    .line 925
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .line 926
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 921
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 922
    :goto_a
    if-eqz v0, :cond_f

    .line 924
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 929
    :cond_f
    :goto_b
    throw v9

    .line 925
    :catch_8
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 925
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 921
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_a

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_a

    .line 919
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_8

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_8
.end method

.method public static getIMEI(Landroid/content/Context;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    .line 751
    if-nez p0, :cond_1

    move-wide v2, v8

    .line 771
    :cond_0
    :goto_0
    return-wide v2

    .line 755
    :cond_1
    const-string v5, "APMCfg"

    const/4 v10, 0x0

    invoke-virtual {p0, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 756
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-nez v1, :cond_2

    move-wide v2, v8

    .line 757
    goto :goto_0

    .line 760
    :cond_2
    const-string v5, "apm_uuid"

    invoke-interface {v1, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 761
    .local v2, "localUUID":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    .line 762
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    .line 763
    .local v4, "uuid":Ljava/util/UUID;
    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    .line 764
    .local v6, "value":J
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 765
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_3

    .line 766
    const-string v5, "apm_uuid"

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 767
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    :cond_3
    move-wide v2, v6

    goto :goto_0
.end method

.method public static getIMEIUnderPermission(Landroid/content/Context;I)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkFlag"    # I

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    .line 795
    const-string v1, "1"

    .line 796
    .local v1, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 816
    :goto_0
    return-wide v2

    .line 798
    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/tencent/hawk/bridge/DevPacket;->checkPermission(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "imei check permission,failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    move-wide v2, v4

    .line 804
    goto :goto_0

    .line 808
    :cond_2
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 813
    :goto_1
    if-eqz v1, :cond_3

    .line 814
    invoke-static {v1}, Lcom/tencent/hawk/bridge/DevPacket;->parseHex(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "1"

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move-wide v2, v4

    .line 816
    goto :goto_0
.end method

.method public static getMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 492
    const-string v4, "02:00:00:00:00:00"

    .line 493
    .local v4, "defaultMacAddr":Ljava/lang/String;
    const-string/jumbo v11, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 494
    .local v10, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v10, :cond_1

    .line 495
    const-string v4, "0"

    .line 551
    .end local v4    # "defaultMacAddr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 496
    .restart local v4    # "defaultMacAddr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 498
    .local v9, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v9, :cond_2

    .line 499
    const-string v4, "1"

    goto :goto_0

    .line 501
    :cond_2
    const/4 v8, 0x0

    .line 502
    .local v8, "macAddr":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 503
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 505
    :cond_3
    const-string v11, "/sys/class/net/wlan0/address"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/FileUtil;->fread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 506
    if-nez v8, :cond_6

    .line 507
    const-string v11, "/sys/class/net/eth1/address"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/FileUtil;->fread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 512
    if-nez v8, :cond_8

    .line 513
    const/4 v7, 0x0

    .line 515
    .local v7, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 520
    if-eqz v7, :cond_0

    .line 522
    :cond_4
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 523
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 524
    .local v6, "iF":Ljava/net/NetworkInterface;
    const/4 v1, 0x0

    .line 526
    .local v1, "addr":[B
    :try_start_1
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 531
    if-eqz v1, :cond_4

    array-length v11, v1

    if-eqz v11, :cond_4

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v3, "buf":Ljava/lang/StringBuilder;
    array-length v12, v1

    const/4 v11, 0x0

    :goto_1
    if-lt v11, v12, :cond_7

    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 539
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 541
    :cond_5
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wlan0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 542
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v1    # "addr":[B
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v6    # "iF":Ljava/net/NetworkInterface;
    .end local v7    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_6
    move-object v4, v8

    .line 509
    goto :goto_0

    .line 516
    .restart local v7    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v5

    .line 518
    .local v5, "e":Ljava/net/SocketException;
    const-string v4, "2"

    goto/16 :goto_0

    .line 527
    .end local v5    # "e":Ljava/net/SocketException;
    .restart local v1    # "addr":[B
    .restart local v6    # "iF":Ljava/net/NetworkInterface;
    :catch_1
    move-exception v5

    .line 529
    .restart local v5    # "e":Ljava/net/SocketException;
    const-string v4, "3"

    goto/16 :goto_0

    .line 535
    .end local v5    # "e":Ljava/net/SocketException;
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_7
    aget-byte v2, v1, v11

    .line 536
    .local v2, "b":B
    const-string v13, "%02X:"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v1    # "addr":[B
    .end local v2    # "b":B
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v6    # "iF":Ljava/net/NetworkInterface;
    .end local v7    # "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_8
    move-object v4, v8

    .line 546
    goto/16 :goto_0

    .line 549
    :cond_9
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getManu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getMaxPixelsInDpy(Landroid/content/Context;)I
    .locals 12
    .param p0, "cx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 261
    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 262
    .local v3, "mWindowManager":Landroid/view/WindowManager;
    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v7

    .line 264
    :cond_1
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 265
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 267
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 269
    .local v5, "metric":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 271
    .local v6, "size":Landroid/graphics/Point;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_3

    .line 272
    invoke-virtual {v1, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 273
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_2

    iget v7, v6, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    iget v7, v6, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 275
    :cond_3
    const/4 v4, 0x0

    .line 277
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v8, "android.view.Display"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 278
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 280
    const-string v8, "getRealMetrics"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/util/DisplayMetrics;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 281
    if-eqz v4, :cond_0

    .line 283
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 292
    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_4

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 284
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 287
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    .line 284
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static getMemory()I
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 58
    const-string v8, "/proc/meminfo"

    .line 61
    .local v8, "str1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, "initial_memory":I
    const/4 v6, 0x0

    .line 63
    .local v6, "localFileReader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 66
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .local v7, "localFileReader":Ljava/io/FileReader;
    if-nez v7, :cond_1

    .line 83
    if-eqz v4, :cond_0

    .line 85
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    move v3, v2

    .line 92
    .end local v2    # "initial_memory":I
    .local v3, "initial_memory":I
    :goto_1
    return v10

    .line 86
    .end local v3    # "initial_memory":I
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v2    # "initial_memory":I
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v12, 0x2000

    invoke-direct {v5, v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v5, "localBufferedReader":Ljava/io/BufferedReader;
    if-nez v5, :cond_3

    .line 83
    if-eqz v5, :cond_2

    .line 85
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move-object v4, v5

    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    move v3, v2

    .line 71
    .end local v2    # "initial_memory":I
    .restart local v3    # "initial_memory":I
    goto :goto_1

    .line 86
    .end local v3    # "initial_memory":I
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v2    # "initial_memory":I
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 72
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v9

    .line 74
    .local v9, "str2":Ljava/lang/String;
    if-nez v9, :cond_5

    .line 83
    if-eqz v5, :cond_4

    .line 85
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    move-object v4, v5

    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    move v3, v2

    .line 75
    .end local v2    # "initial_memory":I
    .restart local v3    # "initial_memory":I
    goto :goto_1

    .line 86
    .end local v3    # "initial_memory":I
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v2    # "initial_memory":I
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_6
    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "arrayOfString":[Ljava/lang/String;
    if-eqz v0, :cond_6

    array-length v10, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ge v10, v13, :cond_8

    .line 83
    :cond_6
    if-eqz v5, :cond_7

    .line 85
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_4
    move-object v4, v5

    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    move v3, v2

    .end local v2    # "initial_memory":I
    .restart local v3    # "initial_memory":I
    move v10, v11

    .line 78
    goto :goto_1

    .line 86
    .end local v3    # "initial_memory":I
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v2    # "initial_memory":I
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    const/4 v10, 0x1

    :try_start_8
    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    div-int/lit16 v2, v10, 0x400
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 83
    if-eqz v5, :cond_9

    .line 85
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_9
    :goto_5
    move-object v4, v5

    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    move v3, v2

    .end local v2    # "initial_memory":I
    .restart local v3    # "initial_memory":I
    move v10, v2

    .line 92
    goto :goto_1

    .line 80
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v3    # "initial_memory":I
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v2    # "initial_memory":I
    :catch_4
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    if-eqz v4, :cond_a

    .line 85
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    move v3, v2

    .end local v2    # "initial_memory":I
    .restart local v3    # "initial_memory":I
    move v10, v11

    .line 81
    goto :goto_1

    .line 86
    .end local v3    # "initial_memory":I
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "initial_memory":I
    :catch_5
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 83
    :goto_8
    if-eqz v4, :cond_b

    .line 85
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 90
    :cond_b
    :goto_9
    throw v10

    .line 86
    :catch_6
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v0    # "arrayOfString":[Ljava/lang/String;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v9    # "str2":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 82
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    goto :goto_8

    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    goto :goto_8

    .line 80
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "localFileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    goto :goto_6
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getPathSz(Ljava/io/File;)Lcom/tencent/hawk/bridge/Pair;
    .locals 16
    .param p0, "file"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    if-nez p0, :cond_0

    .line 568
    new-instance v7, Lcom/tencent/hawk/bridge/Pair;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    :goto_0
    return-object v7

    .line 571
    :cond_0
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 572
    .local v6, "stat":Landroid/os/StatFs;
    const-wide/16 v4, 0x0

    .local v4, "blockSize":J
    const-wide/16 v8, 0x0

    .local v8, "totalBlocks":J
    const-wide/16 v2, 0x0

    .line 574
    .local v2, "aviable":J
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-lt v7, v12, :cond_1

    .line 575
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 576
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v8

    .line 577
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 584
    :goto_1
    mul-long v12, v4, v8

    const/16 v7, 0x14

    shr-long v10, v12, v7

    .line 585
    .local v10, "totalMb":J
    mul-long v12, v2, v4

    const/16 v7, 0x14

    shr-long v0, v12, v7

    .line 586
    .local v0, "availableMb":J
    new-instance v7, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 579
    .end local v0    # "availableMb":J
    .end local v10    # "totalMb":J
    :cond_1
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 580
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v8, v7

    .line 581
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    goto :goto_1
.end method

.method public static getPkgVersionInfo(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 709
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 710
    :cond_0
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    const-string v4, "N/A"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    :goto_0
    return-object v3

    .line 719
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 720
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 721
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    const-string v4, "N/A"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 723
    :cond_2
    const/4 v1, 0x0

    .line 725
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 731
    if-eqz v1, :cond_3

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 732
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 728
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    const-string v4, "N/A"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 734
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v3, Lcom/tencent/hawk/bridge/Pair;

    const-string v4, "N/A"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getTargetCpuFreq(ILcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;)F
    .locals 14
    .param p0, "cores"    # I
    .param p1, "type"    # Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    .prologue
    const/high16 v9, -0x40800000    # -1.0f

    .line 387
    sget-object v10, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->MIN:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    if-ne p1, v10, :cond_2

    .line 388
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/sys/devices/system/cpu/cpu"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "path":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 396
    .local v7, "result":F
    const/4 v3, 0x0

    .line 397
    .local v3, "cpuMinFreq":F
    const/4 v1, 0x0

    .line 399
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    if-nez v2, :cond_4

    .line 416
    if-eqz v2, :cond_0

    .line 418
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_1
    move v7, v9

    .line 424
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "cpuMinFreq":F
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "result":F
    :cond_1
    :goto_2
    return v7

    .line 389
    :cond_2
    sget-object v10, Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;->MAX:Lcom/tencent/hawk/bridge/DevPacket$CPU_FREQ;

    if-ne p1, v10, :cond_3

    .line 390
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/sys/devices/system/cpu/cpu"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 391
    .restart local v5    # "path":Ljava/lang/String;
    goto :goto_0

    .end local v5    # "path":Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 392
    goto :goto_2

    .line 401
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "cpuMinFreq":F
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "result":F
    :cond_4
    :try_start_2
    const-string v8, ""

    .line 402
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 403
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 404
    const-string v10, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 405
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const v11, 0x49742400    # 1000000.0f

    div-float v3, v10, v11

    .line 406
    new-instance v10, Ljava/math/BigDecimal;

    float-to-double v12, v3

    invoke-direct {v10, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v11, 0x2

    sget-object v12, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v10, v11, v12}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 407
    .local v0, "bg":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    .line 416
    .end local v0    # "bg":Ljava/math/BigDecimal;
    :cond_5
    if-eqz v2, :cond_1

    .line 418
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 419
    :catch_0
    move-exception v9

    goto :goto_2

    .line 411
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "text":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 416
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v1, :cond_6

    .line 418
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_6
    :goto_4
    move v7, v9

    .line 412
    goto :goto_2

    .line 413
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 416
    .local v6, "pe":Ljava/lang/NumberFormatException;
    :goto_5
    if-eqz v1, :cond_7

    .line 418
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_7
    :goto_6
    move v7, v9

    .line 414
    goto :goto_2

    .line 415
    .end local v6    # "pe":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v9

    .line 416
    :goto_7
    if-eqz v1, :cond_8

    .line 418
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 423
    :cond_8
    :goto_8
    throw v9

    .line 419
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v10

    goto :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "pe":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v10

    goto :goto_6

    .end local v6    # "pe":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v10

    goto :goto_8

    .line 415
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 413
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 411
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getUUID(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/tencent/hawk/bridge/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 821
    if-nez p0, :cond_0

    .line 822
    new-instance v7, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 843
    :goto_0
    return-object v7

    .line 825
    :cond_0
    const-string v7, "APMCfg"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 826
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 827
    new-instance v7, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 830
    :cond_1
    const-string v7, "apm_uuid_high"

    invoke-interface {v1, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 831
    .local v2, "highValue":J
    const-string v7, "apm_uuid_low"

    invoke-interface {v1, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 832
    .local v4, "lowValue":J
    cmp-long v7, v2, v10

    if-nez v7, :cond_2

    cmp-long v7, v4, v10

    if-nez v7, :cond_2

    .line 833
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 834
    .local v6, "uuid":Ljava/util/UUID;
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 835
    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 836
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 837
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_2

    .line 838
    const-string v7, "apm_uuid_high"

    invoke-interface {v0, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 839
    const-string v7, "apm_uuid_low"

    invoke-interface {v0, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 843
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "uuid":Ljava/util/UUID;
    :cond_2
    new-instance v7, Lcom/tencent/hawk/bridge/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/tencent/hawk/bridge/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static parseHex(Ljava/lang/String;)J
    .locals 8
    .param p0, "valueStr"    # Ljava/lang/String;

    .prologue
    .line 782
    const-wide/16 v2, 0x1

    .line 784
    .local v2, "result":J
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v4, v2

    .end local v2    # "result":J
    .local v4, "result":J
    move-wide v6, v2

    .line 788
    :goto_0
    return-wide v6

    .line 785
    .end local v4    # "result":J
    .restart local v2    # "result":J
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v6, 0x0

    move-wide v4, v2

    .end local v2    # "result":J
    .restart local v4    # "result":J
    goto :goto_0
.end method


# virtual methods
.method public isEmulator(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method
