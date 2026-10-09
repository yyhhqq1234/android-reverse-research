.class public Lcom/tencent/component/utils/PerformanceUtil;
.super Ljava/lang/Object;
.source "PerformanceUtil.java"


# static fields
.field public static final MEMORY_LEVEL_HIGH:I = 0x0

.field public static final MEMORY_LEVEL_LOW:I = 0x2

.field public static final MEMORY_LEVEL_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PerformanceUtil"

.field private static sCoreNum:I

.field private static sCpuFrequence:J

.field private static sTotalMemo:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/tencent/component/utils/PerformanceUtil;->sCoreNum:I

    .line 26
    sput-wide v2, Lcom/tencent/component/utils/PerformanceUtil;->sCpuFrequence:J

    .line 28
    sput-wide v2, Lcom/tencent/component/utils/PerformanceUtil;->sTotalMemo:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailMemory()J
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 114
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 115
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 117
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method public static getCpuFrequence()J
    .locals 10

    .prologue
    .line 77
    sget-wide v6, Lcom/tencent/component/utils/PerformanceUtil;->sCpuFrequence:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 81
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "line":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/tencent/component/utils/PerformanceUtil;->sCpuFrequence:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    if-eqz v5, :cond_0

    .line 98
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 100
    :cond_0
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 109
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    sget-wide v6, Lcom/tencent/component/utils/PerformanceUtil;->sCpuFrequence:J

    return-wide v6

    .line 104
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v6, "PerformanceUtil"

    const-string v7, "getCpuFrequence IOException occured,e="

    invoke-static {v6, v7, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/tencent/component/utils/PerformanceUtil;->sCpuFrequence:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    if-eqz v4, :cond_2

    .line 98
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 100
    :cond_2
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 104
    :catch_2
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/ClassCastException;
    :goto_2
    :try_start_6
    const-string v6, "PerformanceUtil"

    const-string v7, "getCpuFrequence ClassCastException occured,e="

    invoke-static {v6, v7, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/tencent/component/utils/PerformanceUtil;->sCpuFrequence:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    if-eqz v4, :cond_3

    .line 98
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 100
    :cond_3
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 104
    :catch_4
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    const-string v6, "PerformanceUtil"

    const-string v7, "getCpuFrequence Exception occured,e="

    invoke-static {v6, v7, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    const-wide/16 v6, -0x1

    sput-wide v6, Lcom/tencent/component/utils/PerformanceUtil;->sCpuFrequence:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 97
    if-eqz v4, :cond_4

    .line 98
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 100
    :cond_4
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 104
    :catch_6
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 97
    :goto_4
    if-eqz v4, :cond_5

    .line 98
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 100
    :cond_5
    if-eqz v1, :cond_6

    .line 101
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 106
    :cond_6
    :goto_5
    throw v6

    .line 104
    :catch_7
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 91
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 88
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_b
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 85
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_d
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getMemoryClassLevel()I
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 161
    .local v1, "memorgsize":I
    const/4 v0, 0x0

    .line 162
    .local v0, "cameraSizeLevel":I
    const/16 v2, 0x24

    if-ge v1, v2, :cond_1

    .line 163
    const/4 v0, 0x2

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    const/16 v2, 0x2a

    if-ge v1, v2, :cond_0

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getNumCores()I
    .locals 5

    .prologue
    .line 54
    sget v3, Lcom/tencent/component/utils/PerformanceUtil;->sCoreNum:I

    if-nez v3, :cond_0

    .line 57
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/tencent/component/utils/PerformanceUtil$1CpuFilter;

    invoke-direct {v3}, Lcom/tencent/component/utils/PerformanceUtil$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 61
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    sput v3, Lcom/tencent/component/utils/PerformanceUtil;->sCoreNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_1
    sget v3, Lcom/tencent/component/utils/PerformanceUtil;->sCoreNum:I

    return v3

    .line 61
    .restart local v2    # "files":[Ljava/io/File;
    :cond_1
    :try_start_1
    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 62
    .end local v2    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PerformanceUtil"

    const-string v4, "getNumCores exception occured,e="

    invoke-static {v3, v4, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    const/4 v3, 0x1

    sput v3, Lcom/tencent/component/utils/PerformanceUtil;->sCoreNum:I

    goto :goto_1
.end method

.method public static getPerformanceDetail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\u6b64\u8bbe\u5907\u6027\u80fd\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "Cpu\u9891\u7387 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Lcom/tencent/component/utils/PerformanceUtil;->getCpuFrequence()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, " Cpu\u6838\u6570 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {}, Lcom/tencent/component/utils/PerformanceUtil;->getNumCores()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, " \u603b\u5185\u5b58\u5927\u5c0f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {}, Lcom/tencent/component/utils/PerformanceUtil;->getTotalMemory()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTotalMemory()J
    .locals 14

    .prologue
    .line 122
    sget-wide v10, Lcom/tencent/component/utils/PerformanceUtil;->sTotalMemo:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 123
    const-string v7, "/proc/meminfo"

    .line 126
    .local v7, "str1":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 127
    .local v2, "initial_memory":J
    const/4 v5, 0x0

    .line 129
    .local v5, "localFileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .local v6, "localFileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v4, v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 131
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "str2":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 134
    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x400

    int-to-long v2, v9

    .line 137
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    if-eqz v6, :cond_4

    .line 144
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 150
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .end local v8    # "str2":Ljava/lang/String;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    sput-wide v2, Lcom/tencent/component/utils/PerformanceUtil;->sTotalMemo:J

    .line 152
    :cond_2
    sget-wide v10, Lcom/tencent/component/utils/PerformanceUtil;->sTotalMemo:J

    return-wide v10

    .line 145
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "PerformanceUtil"

    const-string v10, "close localFileReader Exception occured,e="

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 147
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "str2":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 140
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v9, "PerformanceUtil"

    const-string v10, "getTotalMemory Exception occured,e="

    invoke-static {v9, v10, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    if-eqz v5, :cond_1

    .line 144
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 145
    :catch_2
    move-exception v1

    .line 146
    const-string v9, "PerformanceUtil"

    const-string v10, "close localFileReader Exception occured,e="

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v5, :cond_3

    .line 144
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 147
    :cond_3
    :goto_3
    throw v9

    .line 145
    :catch_3
    move-exception v1

    .line 146
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "PerformanceUtil"

    const-string v11, "close localFileReader Exception occured,e="

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 139
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_1

    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :cond_4
    move-object v5, v6

    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_0
.end method
