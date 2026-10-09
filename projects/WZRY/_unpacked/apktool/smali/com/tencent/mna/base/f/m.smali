.class public final Lcom/tencent/mna/base/f/m;
.super Ljava/lang/Object;
.source "PerfUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 139
    const/4 v0, -0x1

    .line 140
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/m;->d(Landroid/content/Context;)[J

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 150
    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    mul-long/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemMemUsage exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()[J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/f/m;->d()[J

    move-result-object v1

    .line 30
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    .line 31
    const/4 v4, 0x1

    aget-wide v4, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const-wide/16 v6, 0x168

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/base/f/m;->d()[J

    move-result-object v1

    .line 39
    const/4 v6, 0x0

    aget-wide v6, v1, v6

    .line 40
    const/4 v8, 0x1

    aget-wide v8, v1, v8

    .line 42
    sub-long v2, v6, v2

    .line 43
    sub-long v4, v8, v4

    .line 45
    cmp-long v1, v2, v10

    if-lez v1, :cond_0

    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    .line 55
    :cond_0
    :goto_1
    return-object v0

    .line 48
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v10, 0x64

    mul-long/2addr v4, v10

    div-long v2, v4, v2

    aput-wide v2, v0, v1

    .line 49
    const/4 v1, 0x1

    aput-wide v6, v0, v1

    .line 50
    const/4 v1, 0x2

    aput-wide v8, v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemCpuUsage() exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :catch_1
    move-exception v1

    goto :goto_0

    .line 26
    nop

    :array_0
    .array-data 8
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public static a(JJ)[J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/f/m;->d()[J

    move-result-object v1

    .line 64
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    .line 65
    const/4 v4, 0x1

    aget-wide v4, v1, v4

    .line 67
    sub-long v6, v2, p0

    .line 68
    sub-long v8, v4, p2

    .line 70
    cmp-long v1, v6, v10

    if-lez v1, :cond_0

    cmp-long v1, v8, v10

    if-gez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v6, v8, v6

    aput-wide v6, v0, v1

    .line 74
    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 75
    const/4 v1, 0x2

    aput-wide v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemCpuUsage exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :array_0
    .array-data 8
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public static b(Landroid/content/Context;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, -0x1

    .line 159
    if-nez p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/m;->c(Landroid/content/Context;)J

    move-result-wide v2

    .line 165
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 168
    invoke-static {p0}, Lcom/tencent/mna/base/f/m;->e(Landroid/content/Context;)J

    move-result-wide v4

    .line 170
    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 174
    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    div-long v0, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessMemUsage exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()[J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/f/m;->e()J

    move-result-wide v2

    .line 88
    invoke-static {}, Lcom/tencent/mna/base/f/m;->f()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 90
    const-wide/16 v6, 0x168

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/base/f/m;->e()J

    move-result-wide v6

    .line 96
    invoke-static {}, Lcom/tencent/mna/base/f/m;->f()J

    move-result-wide v8

    .line 98
    sub-long v2, v6, v2

    .line 99
    sub-long v4, v8, v4

    .line 101
    cmp-long v1, v2, v10

    if-lez v1, :cond_0

    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    .line 111
    :cond_0
    :goto_1
    return-object v0

    .line 104
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v10, 0x64

    mul-long/2addr v4, v10

    div-long v2, v4, v2

    aput-wide v2, v0, v1

    .line 105
    const/4 v1, 0x1

    aput-wide v6, v0, v1

    .line 106
    const/4 v1, 0x2

    aput-wide v8, v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessCpuUsage() exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :catch_1
    move-exception v1

    goto :goto_0

    .line 85
    nop

    :array_0
    .array-data 8
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public static b(JJ)[J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 118
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/f/m;->e()J

    move-result-wide v2

    .line 119
    invoke-static {}, Lcom/tencent/mna/base/f/m;->f()J

    move-result-wide v4

    .line 121
    sub-long v6, v2, p0

    .line 122
    sub-long v8, v4, p2

    .line 124
    cmp-long v1, v6, v10

    if-lez v1, :cond_0

    cmp-long v1, v8, v10

    if-gez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    div-long v6, v8, v6

    aput-wide v6, v0, v1

    .line 128
    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 129
    const/4 v1, 0x2

    aput-wide v4, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessCpuUsage exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :array_0
    .array-data 8
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public static c()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 185
    const/4 v3, 0x0

    .line 188
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v4, "/sys/class/kgsl/kgsl-3d0"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/kgsl/kgsl-3d0/gpubusy"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_0

    .line 193
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 194
    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 195
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 196
    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    .line 198
    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_0

    .line 199
    long-to-double v4, v4

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 200
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    long-to-int v0, v0

    .line 224
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 225
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 231
    :cond_1
    :goto_1
    return v0

    .line 205
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v4, "/proc/mali/utilization"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 207
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/mali/utilization"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 215
    :cond_3
    const-string v0, "get gpu usage failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 221
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get gpu usage error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 224
    if-eqz v2, :cond_4

    .line 225
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move v0, v1

    .line 229
    goto :goto_1

    .line 227
    :catch_1
    move-exception v0

    move v0, v1

    .line 230
    goto :goto_1

    .line 223
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 224
    :goto_3
    if-eqz v2, :cond_5

    .line 225
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 229
    :cond_5
    :goto_4
    throw v0

    .line 227
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 223
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 219
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 425
    invoke-static {p0}, Lcom/tencent/mna/base/f/m;->d(Landroid/content/Context;)[J

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 427
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    .line 429
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static d()[J
    .locals 14

    .prologue
    const/4 v0, 0x2

    .line 237
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 239
    const/4 v2, 0x0

    .line 241
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/stat"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-gtz v3, :cond_2

    .line 291
    :cond_0
    if-eqz v1, :cond_1

    .line 292
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 298
    :cond_1
    :goto_0
    return-object v0

    .line 246
    :cond_2
    :try_start_3
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_3

    array-length v3, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v4, 0x8

    if-ge v3, v4, :cond_4

    .line 291
    :cond_3
    if-eqz v1, :cond_1

    .line 292
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    goto :goto_0

    .line 253
    :cond_4
    const/4 v3, 0x1

    :try_start_5
    aget-object v8, v2, v3

    .line 254
    const/4 v3, 0x2

    aget-object v7, v2, v3

    .line 255
    const/4 v3, 0x3

    aget-object v6, v2, v3

    .line 256
    const/4 v3, 0x4

    aget-object v5, v2, v3

    .line 257
    const/4 v3, 0x5

    aget-object v4, v2, v3

    .line 258
    const/4 v3, 0x6

    aget-object v3, v2, v3

    .line 259
    const/4 v9, 0x7

    aget-object v2, v2, v9

    .line 260
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_6

    .line 261
    :cond_5
    const-string v8, "0"

    .line 263
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_8

    .line 264
    :cond_7
    const-string v7, "0"

    .line 266
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_a

    .line 267
    :cond_9
    const-string v6, "0"

    .line 269
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_c

    .line 270
    :cond_b
    const-string v5, "0"

    .line 272
    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_e

    .line 273
    :cond_d
    const-string v4, "0"

    .line 275
    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_10

    .line 276
    :cond_f
    const-string v3, "0"

    .line 278
    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_12

    .line 279
    :cond_11
    const-string v2, "0"

    .line 283
    :cond_12
    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 284
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v6, v10

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, v6

    aput-wide v2, v0, v9

    .line 286
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v6, v0, v3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v6

    aput-wide v4, v0, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 291
    if-eqz v1, :cond_1

    .line 292
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 294
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 287
    :catch_2
    move-exception v1

    move-object v1, v2

    .line 291
    :goto_1
    if-eqz v1, :cond_1

    .line 292
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 294
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 290
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 291
    :goto_2
    if-eqz v1, :cond_13

    .line 292
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 296
    :cond_13
    :goto_3
    throw v0

    .line 294
    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_3

    .line 290
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 287
    :catch_6
    move-exception v2

    goto :goto_1

    .line 237
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static d(Landroid/content/Context;)[J
    .locals 10

    .prologue
    .line 361
    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    .line 362
    if-nez p0, :cond_0

    move-object v0, v1

    .line 420
    :goto_0
    return-object v0

    .line 365
    :cond_0
    const/4 v2, 0x0

    .line 367
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    .line 368
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    if-nez v0, :cond_2

    .line 413
    if-eqz v2, :cond_1

    .line 414
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    move-object v0, v1

    .line 370
    goto :goto_0

    .line 372
    :cond_2
    :try_start_2
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 373
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 377
    const/4 v0, 0x0

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 378
    const/4 v0, 0x1

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    aput-wide v4, v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :goto_2
    if-eqz v2, :cond_3

    .line 414
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    move-object v0, v1

    .line 420
    goto :goto_0

    .line 380
    :cond_4
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/meminfo"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .line 384
    if-eqz v0, :cond_5

    if-nez v2, :cond_7

    .line 413
    :cond_5
    if-eqz v3, :cond_6

    .line 414
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    move-object v0, v1

    .line 385
    goto :goto_0

    .line 388
    :cond_7
    :try_start_7
    const-string v4, "(\\d+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 389
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 390
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 391
    const-string v2, "0"

    .line 392
    const-string v0, "0"

    .line 393
    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 394
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 396
    :cond_8
    if-nez v2, :cond_9

    .line 397
    const-string v2, "0"

    .line 399
    :cond_9
    :goto_6
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 400
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 402
    :cond_a
    if-nez v0, :cond_b

    .line 403
    const-string v0, "0"

    .line 406
    :cond_b
    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    aput-wide v6, v1, v4

    .line 407
    const/4 v2, 0x1

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    aput-wide v4, v1, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v2, v3

    goto :goto_2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    :goto_7
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalAndUsedMemoryInMB exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 413
    if-eqz v2, :cond_3

    .line 414
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    .line 416
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 412
    :catchall_0
    move-exception v0

    .line 413
    :goto_8
    if-eqz v2, :cond_c

    .line 414
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 418
    :cond_c
    :goto_9
    throw v0

    .line 416
    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto :goto_9

    .line 412
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_8

    .line 409
    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_7

    .line 361
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method private static e()J
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/tencent/mna/base/f/m;->d()[J

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 305
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    .line 307
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)J
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    .line 434
    .line 435
    if-nez p0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-wide v2

    .line 439
    :cond_1
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 440
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 441
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    .line 442
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v6, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    .line 452
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x400

    div-long/2addr v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide v2, v0

    .line 456
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get process Memory error:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_1
.end method

.method private static f()J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 313
    const/4 v4, 0x0

    .line 315
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 316
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/stat"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-direct {v5, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-direct {v3, v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-gtz v4, :cond_2

    .line 348
    :cond_0
    if-eqz v3, :cond_1

    .line 349
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 355
    :cond_1
    :goto_0
    return-wide v0

    .line 321
    :cond_2
    :try_start_3
    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 322
    if-nez v2, :cond_3

    .line 348
    if-eqz v3, :cond_1

    .line 349
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v2

    goto :goto_0

    .line 327
    :cond_3
    const/16 v4, 0xd

    :try_start_5
    aget-object v6, v2, v4

    .line 328
    const/16 v4, 0xe

    aget-object v5, v2, v4

    .line 329
    const/16 v4, 0xf

    aget-object v4, v2, v4

    .line 330
    const/16 v7, 0x10

    aget-object v2, v2, v7

    .line 331
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    .line 332
    :cond_4
    const-string v6, "0"

    .line 334
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_7

    .line 335
    :cond_6
    const-string v5, "0"

    .line 337
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_9

    .line 338
    :cond_8
    const-string v4, "0"

    .line 340
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_b

    .line 341
    :cond_a
    const-string v2, "0"

    .line 343
    :cond_b
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v0

    add-long/2addr v0, v4

    .line 348
    if-eqz v3, :cond_1

    .line 349
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 351
    :catch_1
    move-exception v2

    goto :goto_0

    .line 344
    :catch_2
    move-exception v2

    move-object v3, v4

    .line 345
    :goto_1
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessCpuTime exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 348
    if-eqz v3, :cond_1

    .line 349
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 351
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 347
    :catchall_0
    move-exception v0

    move-object v3, v4

    .line 348
    :goto_2
    if-eqz v3, :cond_c

    .line 349
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 353
    :cond_c
    :goto_3
    throw v0

    .line 351
    :catch_4
    move-exception v2

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_3

    .line 347
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 344
    :catch_6
    move-exception v2

    goto :goto_1
.end method
