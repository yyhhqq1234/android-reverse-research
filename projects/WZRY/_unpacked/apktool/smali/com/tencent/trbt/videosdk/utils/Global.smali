.class public Lcom/tencent/trbt/videosdk/utils/Global;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;
    }
.end annotation


# static fields
.field public static BUILD_NO:Ljava/lang/String; = null

.field static final UN_DEFINED:Ljava/lang/String; = "NA"

.field public static channel:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

.field public static channelId:Ljava/lang/String;

.field public static mQUA:Ljava/lang/String;

.field public static tempRoot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, ""

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->mQUA:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->DEV:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->channel:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/tencent/trbt/videosdk/utils/Global;->tempRoot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .local v2, "result":Ljava/lang/StringBuffer;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, "NA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    return-object v2

    .line 164
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 165
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 166
    aget-char v3, v0, v1

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    aget-char v3, v0, v1

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    aget-char v3, v0, v1

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    aget-char v3, v0, v1

    const/16 v4, 0x26

    if-eq v3, v4, :cond_2

    aget-char v3, v0, v1

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_2

    aget-char v3, v0, v1

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .line 167
    aget-char v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v1, "sb":Ljava/lang/StringBuffer;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 90
    .local v0, "adrRelease":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string v3, "NA"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :goto_0
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .local v2, "sdk":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 93
    .end local v2    # "sdk":I
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getApkChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "NA"

    return-object v0
.end method

.method public static declared-synchronized getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    const-class v0, Lcom/tencent/trbt/videosdk/utils/Global;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "wzrysdk"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAppVersionCode()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public static getBuildNo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "0000"

    .line 82
    :goto_0
    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 69
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 70
    const-string v0, "0000"

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    .line 82
    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_2
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_3
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    goto :goto_1

    .line 75
    :cond_4
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_5
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    sget-object v1, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    sget-object v2, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->BUILD_NO:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->channelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getApkChannel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->channelId:Ljava/lang/String;

    .line 54
    :cond_0
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public static getLinuxCore_Ver()Ljava/lang/String;
    .locals 12

    .prologue
    .line 186
    const/4 v8, 0x0

    .line 187
    .local v8, "process":Ljava/lang/Process;
    const-string v5, ""

    .line 189
    .local v5, "kernelVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "cat /proc/version"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 193
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 194
    .local v7, "outs":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v4, "isrout":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v1, v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 196
    .local v1, "brout":Ljava/io/BufferedReader;
    const-string v9, ""

    .line 199
    .local v9, "result":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 200
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_1

    .line 190
    .end local v1    # "brout":Ljava/io/BufferedReader;
    .end local v4    # "isrout":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "outs":Ljava/io/InputStream;
    .end local v9    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "brout":Ljava/io/BufferedReader;
    .restart local v4    # "isrout":Ljava/io/InputStreamReader;
    .restart local v7    # "outs":Ljava/io/InputStream;
    .restart local v9    # "result":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 203
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 206
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    const-string v10, ""

    if-eq v9, v10, :cond_1

    .line 207
    const-string/jumbo v0, "version "

    .line 208
    .local v0, "Keyword":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, "index":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    .restart local v6    # "line":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 211
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 216
    .end local v0    # "Keyword":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v6    # "line":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v5

    .line 213
    :catch_2
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getQUA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/Global;->mQUA:Ljava/lang/String;

    return-object v0
.end method

.method public static getUA()Ljava/lang/String;
    .locals 6

    .prologue
    .line 124
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v0, ""

    .line 129
    .local v0, "brand":Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-static {v0}, Lcom/tencent/trbt/videosdk/utils/Global;->filter(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 135
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 139
    .local v2, "model":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/trbt/videosdk/utils/Global;->filter(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 140
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 143
    .local v1, "manufacturer":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/trbt/videosdk/utils/Global;->filter(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 144
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 147
    .local v3, "product":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/trbt/videosdk/utils/Global;->filter(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 130
    .end local v1    # "manufacturer":Ljava/lang/String;
    .end local v2    # "model":Ljava/lang/String;
    .end local v3    # "product":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "1.0"

    return-object v0
.end method
