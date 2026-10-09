.class public Lcom/tencent/qqgamemi/util/DeviceDetectUtil;
.super Ljava/lang/Object;
.source "DeviceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/util/DeviceDetectUtil$Space;
    }
.end annotation


# static fields
.field private static final ARRY_LIST:Ljava/lang/String; = "list"

.field private static final BLACK_MODEL_LIST:Ljava/lang/String; = "srp_black_list.json"

.field public static final FIT_MEMORY:J = 0x5dcL

.field public static FREQ_BASE_PATH:[Ljava/lang/String; = null

.field public static FREQ_MAX_PATH:[Ljava/lang/String; = null

.field private static final LI_MAN:Ljava/lang/String; = "man"

.field private static final LI_MODEL:Ljava/lang/String; = "model"

.field public static final RESOLUTION_HEIGH:J = 0x21cL

.field public static final RESOLUTION_WIDTH:J = 0x3c0L

.field private static final TAG:Ljava/lang/String; = "DeviceDetectUtil"

.field public static cpu_info:Ljava/lang/String;

.field public static gpu_info:Ljava/lang/String;

.field private static sTotalMemo:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->sTotalMemo:J

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/sys/class/kgsl"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq"

    aput-object v1, v0, v3

    const-string v1, "/sys/class/devfreq"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->FREQ_BASE_PATH:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/kgsl-3d0/max_gpuclk"

    aput-object v1, v0, v2

    const-string v1, "/kgsl-3d0/devfreq/max_freq"

    aput-object v1, v0, v3

    const-string v1, "/scaling_max_freq"

    aput-object v1, v0, v4

    const-string v1, "/e8600000.mali/max_freq"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->FREQ_MAX_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    .line 253
    :goto_0
    return-object v0

    .line 246
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getCpuInfoByAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getCpuInfoByRelativePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    .line 250
    :cond_1
    sget-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getCpuinfoBySystemProperties()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    .line 253
    :cond_2
    sget-object v0, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->cpu_info:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCpuInfoByAbsolutePath()Ljava/lang/String;
    .locals 13

    .prologue
    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 175
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 176
    .local v3, "cpuInfo":Ljava/lang/String;
    const-string v2, "/proc/cpuinfo"

    .line 179
    .local v2, "cpuFile":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    const-string/jumbo v9, "x86"

    invoke-static {v9}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->hasCpuAbi(Ljava/lang/String;)Z

    move-result v8

    .line 182
    .local v8, "hasX86":Z
    const-string v9, "arm"

    invoke-static {v9}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->hasCpuAbi(Ljava/lang/String;)Z

    move-result v7

    .line 183
    .local v7, "hasArm":Z
    if-eqz v8, :cond_4

    .line 184
    invoke-static {v1}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->parseCpuInfoByX86(Ljava/io/BufferedReader;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 196
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 197
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 200
    :cond_1
    if-eqz v1, :cond_2

    .line 201
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 207
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .end local v7    # "hasArm":Z
    .end local v8    # "hasX86":Z
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :cond_3
    :goto_1
    return-object v3

    .line 186
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "hasArm":Z
    .restart local v8    # "hasX86":Z
    :cond_4
    if-eqz v7, :cond_0

    .line 187
    :try_start_4
    invoke-static {v1}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->parseCpuInfoByArm(Ljava/io/BufferedReader;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    goto :goto_0

    .line 203
    :catch_0
    move-exception v4

    .line 204
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "DeviceDetectUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCpuInfo file close IOException e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 206
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .line 190
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "hasArm":Z
    .end local v8    # "hasX86":Z
    :catch_1
    move-exception v4

    .line 191
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v9, "DeviceDetectUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCpuInfo FileNotFoundException e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    if-eqz v5, :cond_5

    .line 197
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 200
    :cond_5
    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 203
    :catch_2
    move-exception v4

    .line 204
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "DeviceDetectUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCpuInfo file close IOException e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 193
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_3
    :try_start_7
    const-string v9, "DeviceDetectUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCpuInfo NullPointerException e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 196
    if-eqz v5, :cond_6

    .line 197
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 200
    :cond_6
    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 203
    :catch_4
    move-exception v4

    .line 204
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "DeviceDetectUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCpuInfo file close IOException e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 196
    :goto_4
    if-eqz v5, :cond_7

    .line 197
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 200
    :cond_7
    if-eqz v0, :cond_8

    .line 201
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 205
    :cond_8
    :goto_5
    throw v9

    .line 203
    :catch_5
    move-exception v4

    .line 204
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "DeviceDetectUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCpuInfo file close IOException e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 192
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 190
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method private static getCpuInfoByRelativePath()Ljava/lang/String;
    .locals 12

    .prologue
    .line 137
    const-string v0, ""

    .line 138
    .local v0, "cpuInfo":Ljava/lang/String;
    const/4 v4, 0x0

    .line 139
    .local v4, "input":Ljava/io/LineNumberReader;
    const/4 v7, 0x0

    .line 141
    .local v7, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "cat proc/cpuinfo"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 142
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 143
    .local v6, "ir":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/LineNumberReader;

    invoke-direct {v5, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .local v5, "input":Ljava/io/LineNumberReader;
    :try_start_1
    const-string/jumbo v8, "x86"

    invoke-static {v8}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->hasCpuAbi(Ljava/lang/String;)Z

    move-result v3

    .line 145
    .local v3, "hasX86":Z
    const-string v8, "arm"

    invoke-static {v8}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->hasCpuAbi(Ljava/lang/String;)Z

    move-result v2

    .line 146
    .local v2, "hasArm":Z
    if-eqz v3, :cond_3

    .line 147
    invoke-static {v5}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->parseCpuInfoByX86(Ljava/io/BufferedReader;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 156
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 157
    :try_start_2
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    :cond_1
    :goto_1
    if-eqz v7, :cond_7

    .line 162
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    move-object v4, v5

    .line 167
    .end local v2    # "hasArm":Z
    .end local v3    # "hasX86":Z
    .end local v5    # "input":Ljava/io/LineNumberReader;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    :cond_2
    :goto_2
    return-object v0

    .line 149
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v2    # "hasArm":Z
    .restart local v3    # "hasX86":Z
    .restart local v5    # "input":Ljava/io/LineNumberReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    :cond_3
    if-eqz v2, :cond_0

    .line 150
    :try_start_3
    invoke-static {v5}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->parseCpuInfoByArm(Ljava/io/BufferedReader;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "DeviceDetectUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCpuInfoByRelativePath file close IOException e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "hasArm":Z
    .end local v3    # "hasX86":Z
    .end local v5    # "input":Ljava/io/LineNumberReader;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    :catch_1
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v8, "DeviceDetectUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCpuInfoByRelativePath file  IOException e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    if-eqz v4, :cond_4

    .line 157
    :try_start_5
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 161
    :cond_4
    :goto_4
    if-eqz v7, :cond_2

    .line 162
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 158
    :catch_2
    move-exception v1

    .line 159
    const-string v8, "DeviceDetectUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCpuInfoByRelativePath file close IOException e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v4, :cond_5

    .line 157
    :try_start_6
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 161
    :cond_5
    :goto_6
    if-eqz v7, :cond_6

    .line 162
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    :cond_6
    throw v8

    .line 158
    :catch_3
    move-exception v1

    .line 159
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "DeviceDetectUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCpuInfoByRelativePath file close IOException e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v5    # "input":Ljava/io/LineNumberReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "input":Ljava/io/LineNumberReader;
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    goto :goto_5

    .line 153
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v5    # "input":Ljava/io/LineNumberReader;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "input":Ljava/io/LineNumberReader;
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    goto :goto_3

    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v2    # "hasArm":Z
    .restart local v3    # "hasX86":Z
    .restart local v5    # "input":Ljava/io/LineNumberReader;
    :cond_7
    move-object v4, v5

    .end local v5    # "input":Ljava/io/LineNumberReader;
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    goto/16 :goto_2
.end method

.method private static getCpuinfoBySystemProperties()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    const-string v1, "ro.hardware.alter"

    invoke-static {v1}, Lcom/tencent/qqgamemi/util/SystemPropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "cpuinfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Lcom/tencent/qqgamemi/util/SystemPropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "ro.product.board"

    invoke-static {v1}, Lcom/tencent/qqgamemi/util/SystemPropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_1
    return-object v0
.end method

.method public static getGpuFreq()Ljava/lang/String;
    .locals 15

    .prologue
    .line 395
    const/4 v4, 0x0

    .line 396
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 397
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 399
    .local v7, "gpu_freq":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getGpuFreqPath()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 401
    const-string v11, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-eqz v4, :cond_0

    .line 420
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 423
    :cond_0
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-object v8, v7

    .line 430
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v7    # "gpu_freq":Ljava/lang/String;
    .local v8, "gpu_freq":Ljava/lang/String;
    :goto_1
    return-object v11

    .line 426
    .end local v8    # "gpu_freq":Ljava/lang/String;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v7    # "gpu_freq":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Ljava/io/IOException;
    const-string v12, "DeviceDetectUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getGpuFreq file close IOException e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v11, 0x200

    invoke-direct {v1, v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 406
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_4
    const-string v9, ""

    .line 407
    .local v9, "line":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v10, "output":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 409
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 413
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "output":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 414
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :goto_3
    :try_start_5
    const-string v11, "readLine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 419
    if-eqz v4, :cond_3

    .line 420
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 423
    :cond_3
    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    move-object v8, v7

    .end local v7    # "gpu_freq":Ljava/lang/String;
    .restart local v8    # "gpu_freq":Ljava/lang/String;
    move-object v11, v7

    .line 430
    goto :goto_1

    .line 411
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v8    # "gpu_freq":Ljava/lang/String;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "gpu_freq":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "output":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const v12, 0xf4240

    div-int v6, v11, v12

    .line 412
    .local v6, "freq":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MHz"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v7

    .line 419
    if-eqz v5, :cond_6

    .line 420
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 423
    :cond_6
    if-eqz v1, :cond_7

    .line 424
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 428
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 426
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 427
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "DeviceDetectUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getGpuFreq file close IOException e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 429
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 426
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v6    # "freq":I
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "output":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v2

    .line 427
    const-string v11, "DeviceDetectUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getGpuFreq file close IOException e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 415
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    :try_start_9
    const-string v11, "BufferedReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IllegalArgumentException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 419
    if-eqz v4, :cond_8

    .line 420
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 423
    :cond_8
    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_4

    .line 426
    :catch_5
    move-exception v2

    .line 427
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "DeviceDetectUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getGpuFreq file close IOException e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 418
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 419
    :goto_6
    if-eqz v4, :cond_9

    .line 420
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 423
    :cond_9
    if-eqz v0, :cond_a

    .line 424
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 428
    :cond_a
    :goto_7
    throw v11

    .line 426
    :catch_6
    move-exception v2

    .line 427
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v12, "DeviceDetectUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getGpuFreq file close IOException e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 418
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 415
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 413
    .end local v3    # "filePath":Ljava/lang/String;
    :catch_9
    move-exception v2

    goto/16 :goto_3

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_3
.end method

.method public static getGpuFreqPath()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 434
    const-string v0, ""

    .line 435
    .local v0, "gpuBasePath":Ljava/lang/String;
    const-string v1, ""

    .line 437
    .local v1, "gpuFreqMaxPath":Ljava/lang/String;
    sget-object v5, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->FREQ_BASE_PATH:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 438
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->fileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 439
    move-object v0, v2

    .line 437
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 443
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->FREQ_MAX_PATH:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 444
    .restart local v2    # "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->fileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 448
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public static getGpuInfo()Ljava/lang/String;
    .locals 20

    .prologue
    .line 323
    sget-object v4, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->gpu_info:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    sget-object v4, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->gpu_info:Ljava/lang/String;

    .line 390
    .local v14, "gpuInfo":Ljava/lang/StringBuilder;
    :goto_0
    return-object v4

    .line 328
    .end local v14    # "gpuInfo":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .restart local v14    # "gpuInfo":Ljava/lang/StringBuilder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v4, v6, :cond_2

    .line 331
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    .line 332
    .local v2, "dpy":Landroid/opengl/EGLDisplay;
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 333
    .local v19, "vers":[I
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-static {v2, v0, v4, v1, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 336
    const/16 v4, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 344
    .local v3, "configAttr":[I
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/opengl/EGLConfig;

    .line 345
    .local v5, "configs":[Landroid/opengl/EGLConfig;
    const/4 v4, 0x1

    new-array v8, v4, [I

    .line 346
    .local v8, "numConfig":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 347
    const/4 v4, 0x0

    aget v4, v8, v4

    if-nez v4, :cond_1

    .line 348
    const-string v4, "getOpenGLESInformation"

    const-string v6, "no config found! PANIC!"

    invoke-static {v4, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_1
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    .line 357
    .local v18, "surfAttr":[I
    const/4 v4, 0x0

    aget-object v10, v5, v4

    .line 358
    .local v10, "config":Landroid/opengl/EGLConfig;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v10, v0, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v17

    .line 361
    .local v17, "surf":Landroid/opengl/EGLSurface;
    const/4 v4, 0x3

    new-array v12, v4, [I

    fill-array-data v12, :array_2

    .line 362
    .local v12, "ctxAttrib":[I
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v6, 0x0

    invoke-static {v2, v10, v4, v12, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v11

    .line 365
    .local v11, "ctx":Landroid/opengl/EGLContext;
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1, v11}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 368
    const/16 v4, 0x1f01

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v16

    .line 369
    .local v16, "gpu_render":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v4, v6, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 373
    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 374
    invoke-static {v2, v11}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 375
    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 378
    .end local v2    # "dpy":Landroid/opengl/EGLDisplay;
    .end local v3    # "configAttr":[I
    .end local v5    # "configs":[Landroid/opengl/EGLConfig;
    .end local v8    # "numConfig":[I
    .end local v10    # "config":Landroid/opengl/EGLConfig;
    .end local v11    # "ctx":Landroid/opengl/EGLContext;
    .end local v12    # "ctxAttrib":[I
    .end local v16    # "gpu_render":Ljava/lang/String;
    .end local v17    # "surf":Landroid/opengl/EGLSurface;
    .end local v18    # "surfAttr":[I
    .end local v19    # "vers":[I
    :cond_2
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getGpuFreq()Ljava/lang/String;

    move-result-object v15

    .line 379
    .local v15, "gpu_freq":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 380
    const-string v4, " @"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->gpu_info:Ljava/lang/String;

    .line 384
    sget-object v4, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->gpu_info:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 385
    .end local v15    # "gpu_freq":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 386
    .local v13, "e":Ljava/lang/NullPointerException;
    const-string v4, "DeviceDetectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGpuInfo NullPointerException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 388
    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v13

    .line 389
    .local v13, "e":Ljava/lang/Exception;
    const-string v4, "DeviceDetectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGpuInfo Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 336
    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 352
    :array_1
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data

    .line 361
    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static getListFromJsonString(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 482
    const/4 v1, 0x0

    .line 484
    .local v1, "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    const-string v12, "srp_black_list.json"

    invoke-static {p0, v12}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, "jsonToString":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 517
    .end local v5    # "jsonToString":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 486
    .restart local v5    # "jsonToString":Ljava/lang/String;
    :cond_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 487
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v12, "list"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 488
    .local v6, "m_jArry":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v1    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v2, "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 492
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 493
    .local v4, "jo_inside":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 494
    .local v8, "man_value":Ljava/lang/String;
    const/4 v9, 0x0

    .line 495
    .local v9, "model_value":Ljava/lang/String;
    const-string v12, "man"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 497
    const-string v12, "man"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 499
    :cond_1
    const-string v12, "model"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 501
    const-string v12, "model"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 505
    :cond_2
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    .line 506
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 507
    .local v7, "m_li":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "man"

    invoke-virtual {v7, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v12, "model"

    invoke-virtual {v7, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    .end local v7    # "m_li":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 513
    .end local v2    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    .end local v4    # "jo_inside":Lorg/json/JSONObject;
    .end local v5    # "jsonToString":Ljava/lang/String;
    .end local v6    # "m_jArry":Lorg/json/JSONArray;
    .end local v8    # "man_value":Ljava/lang/String;
    .end local v9    # "model_value":Ljava/lang/String;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .restart local v1    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v12, "DeviceDetectUtil"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "i":I
    .restart local v5    # "jsonToString":Ljava/lang/String;
    .restart local v6    # "m_jArry":Lorg/json/JSONArray;
    .restart local v10    # "obj":Lorg/json/JSONObject;
    :cond_4
    move-object v1, v2

    .end local v2    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object v11, v2

    .line 517
    goto :goto_0

    .line 513
    .end local v1    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "formList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_2
.end method

.method private static getPhoneBrand()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    const-string v1, "ro.product.brand"

    invoke-static {v1}, Lcom/tencent/qqgamemi/util/SystemPropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "brand":Ljava/lang/String;
    return-object v0
.end method

.method public static getTotalMemory()J
    .locals 14

    .prologue
    .line 58
    sget-wide v10, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->sTotalMemo:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 59
    const-string v7, "/proc/meminfo"

    .line 62
    .local v7, "str1":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 63
    .local v2, "initial_memory":J
    const/4 v5, 0x0

    .line 65
    .local v5, "localFileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .local v6, "localFileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v4, v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 67
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "str2":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 70
    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    div-int/lit16 v9, v9, 0x400

    int-to-long v2, v9

    .line 73
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    if-eqz v6, :cond_4

    .line 80
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 86
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .end local v8    # "str2":Ljava/lang/String;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    sput-wide v2, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->sTotalMemo:J

    .line 88
    :cond_2
    sget-wide v10, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->sTotalMemo:J

    return-wide v10

    .line 81
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "DeviceDetectUtil"

    const-string v10, "close localFileReader Exception occured,e="

    invoke-static {v9, v10, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 83
    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v8    # "str2":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 76
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v9, "DeviceDetectUtil"

    const-string v10, "getTotalMemory Exception occured,e="

    invoke-static {v9, v10, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    if-eqz v5, :cond_1

    .line 80
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    const-string v9, "DeviceDetectUtil"

    const-string v10, "close localFileReader Exception occured,e="

    invoke-static {v9, v10, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v5, :cond_3

    .line 80
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 83
    :cond_3
    :goto_3
    throw v9

    .line 81
    :catch_3
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "DeviceDetectUtil"

    const-string v11, "close localFileReader Exception occured,e="

    invoke-static {v10, v11, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v6    # "localFileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "localFileReader":Ljava/io/FileReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    goto :goto_2

    .line 75
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

.method private static hasCpuAbi(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isBlackModel(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 521
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "man"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-static {p0}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getListFromJsonString(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 525
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0

    .line 526
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 527
    .local v0, "isBlack":Z
    const-string v3, "DeviceDetectUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDeviceEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->isResolutionFit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->isBlackModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMemoryFit()Z
    .locals 6

    .prologue
    .line 108
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getTotalMemory()J

    move-result-wide v2

    .line 109
    .local v2, "totalMemory":J
    const-wide/16 v4, 0x5dc

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 110
    .local v0, "isFitTotalMemory":Z
    :goto_0
    const-string v1, "DeviceDetectUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFitTotalMemory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u5185\u5b58\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v0

    .line 109
    .end local v0    # "isFitTotalMemory":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumCoresFit()Z
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Lcom/tencent/component/utils/PerformanceUtil;->getNumCores()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 98
    .local v0, "isFitNumCores":Z
    :goto_0
    const-string v1, "DeviceDetectUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFitNumCores:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v0

    .line 97
    .end local v0    # "isFitNumCores":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResolutionFit(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x0

    .line 121
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 123
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v5, v6, :cond_0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 125
    .local v3, "nWidth":I
    :goto_0
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 127
    .local v2, "nHeight":I
    :goto_1
    int-to-long v6, v3

    const-wide/16 v8, 0x3c0

    sub-long/2addr v6, v8

    cmp-long v5, v6, v10

    if-ltz v5, :cond_2

    int-to-long v6, v2

    const-wide/16 v8, 0x21c

    sub-long/2addr v6, v8

    cmp-long v5, v6, v10

    if-ltz v5, :cond_2

    const/4 v1, 0x1

    .line 128
    .local v1, "isFitResolution":Z
    :goto_2
    const-string v5, "DeviceDetectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFitResolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v1

    .line 124
    .end local v1    # "isFitResolution":Z
    .end local v2    # "nHeight":I
    .end local v3    # "nWidth":I
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 125
    .restart local v3    # "nWidth":I
    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 127
    .restart local v2    # "nHeight":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 460
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v5

    .line 473
    :goto_0
    return-object v3

    .line 461
    :cond_1
    const/4 v3, 0x0

    .line 463
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 464
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 465
    .local v4, "size":I
    new-array v0, v4, [B

    .line 466
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 467
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 468
    new-instance v3, Ljava/lang/String;

    .end local v3    # "json":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "json":Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 470
    .local v1, "ex":Ljava/io/IOException;
    const-string v6, "DeviceDetectUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 471
    goto :goto_0
.end method

.method private static parseCpuInfoByArm(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 288
    const-string v0, ""

    .line 291
    .local v0, "cpuInfo":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "cpuInfoStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 292
    const-string v3, "Hardware"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 293
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 294
    const-string v3, "DeviceDetectUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cpuInfo by arm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 303
    .end local v1    # "cpuInfoStr":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 304
    .end local v0    # "cpuInfo":Ljava/lang/String;
    :cond_3
    return-object v0

    .line 300
    .restart local v0    # "cpuInfo":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseCpuInfoByX86(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 9
    .param p0, "reader"    # Ljava/io/BufferedReader;

    .prologue
    const/4 v8, -0x1

    .line 258
    const-string v1, ""

    .line 261
    .local v1, "cpuInfo":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "cpuInfoStr":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 262
    const-string v5, "model name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 263
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 264
    .local v0, "beginIndex":I
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 266
    .local v4, "endIndex":I
    if-eq v4, v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 267
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_0
    const-string v5, "DeviceDetectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get cpuInfo by x86:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v0    # "beginIndex":I
    .end local v4    # "endIndex":I
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 280
    .end local v2    # "cpuInfoStr":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 281
    .end local v1    # "cpuInfo":Ljava/lang/String;
    :cond_4
    return-object v1

    .line 269
    .restart local v0    # "beginIndex":I
    .restart local v1    # "cpuInfo":Ljava/lang/String;
    .restart local v2    # "cpuInfoStr":Ljava/lang/String;
    .restart local v4    # "endIndex":I
    :cond_5
    :try_start_1
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 277
    .end local v0    # "beginIndex":I
    .end local v2    # "cpuInfoStr":Ljava/lang/String;
    .end local v4    # "endIndex":I
    :catch_0
    move-exception v3

    .line 278
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
