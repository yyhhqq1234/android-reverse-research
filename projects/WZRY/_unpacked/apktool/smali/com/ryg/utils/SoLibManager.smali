.class public final Lcom/ryg/utils/SoLibManager;
.super Ljava/lang/Object;
.source "SoLibManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/ryg/utils/SoLibManager;

.field private static sNativeLibDir:Ljava/lang/String;


# instance fields
.field private mSoExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/ryg/utils/SoLibManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/ryg/utils/SoLibManager;

    invoke-direct {v0}, Lcom/ryg/utils/SoLibManager;-><init>()V

    sput-object v0, Lcom/ryg/utils/SoLibManager;->sInstance:Lcom/ryg/utils/SoLibManager;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/ryg/utils/SoLibManager;->sNativeLibDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/utils/SoLibManager;->mSoExecutor:Ljava/util/concurrent/ExecutorService;

    .line 55
    return-void
.end method

.method private getCpuArch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cpuName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "armeabi"

    .line 93
    .local v0, "cpuArchitect":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v0, "armeabi"

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string/jumbo v0, "x86"

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mips"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v0, "mips"

    goto :goto_0
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 71
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 75
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    const-string v5, ":\\s+"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    if-lt v5, v7, :cond_0

    .line 78
    const/4 v5, 0x1

    aget-object v5, v0, v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 87
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const-string v5, ""

    goto :goto_0

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSoLoader()Lcom/ryg/utils/SoLibManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/ryg/utils/SoLibManager;->sInstance:Lcom/ryg/utils/SoLibManager;

    return-object v0
.end method

.method private final parseSoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "zipEntryName"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyPluginSoLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "nativeLibDir"    # Ljava/lang/String;
    .param p4, "pluginVersion"    # I

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/ryg/utils/SoLibManager;->getCpuName()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "cpuName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ryg/utils/SoLibManager;->getCpuArch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "cpuArchitect":Ljava/lang/String;
    sput-object p3, Lcom/ryg/utils/SoLibManager;->sNativeLibDir:Ljava/lang/String;

    .line 115
    sget-object v16, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cpuArchitect: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 121
    .local v4, "buffer":[B
    const/4 v14, 0x0

    .line 123
    .local v14, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v15, Ljava/util/zip/ZipInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v15 .. v16}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 125
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .local v15, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual {v15}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    .local v12, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v12, :cond_7

    .line 126
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 125
    :cond_0
    :goto_1
    invoke-virtual {v15}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, "zipEntryName":Ljava/lang/String;
    const-string v16, "../"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 133
    const-string v16, ".so"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 135
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/ryg/utils/DLConfigs;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-nez v16, :cond_3

    .line 137
    sget-object v16, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "skip copying, the so lib is exist and not change: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 163
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipEntryName":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v14, v15

    .line 164
    .end local v15    # "zis":Ljava/util/zip/ZipInputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 166
    if-eqz v14, :cond_2

    .line 169
    :try_start_3
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 175
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 141
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zipEntryName":Ljava/lang/String;
    .restart local v15    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_4
    sget-object v16, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "lastModify == : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    const/4 v8, 0x0

    .line 144
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/ryg/utils/SoLibManager;->parseSoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, "mSoFileName":Ljava/lang/String;
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/io/File;

    sget-object v17, Lcom/ryg/utils/SoLibManager;->sNativeLibDir:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v15, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    if-lez v10, :cond_5

    .line 148
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v4, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    .line 152
    .end local v10    # "len":I
    :catch_1
    move-exception v7

    move-object v8, v9

    .line 153
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "mSoFileName":Ljava/lang/String;
    .restart local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_7
    sget-object v16, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "copy so lib failed: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 156
    if-eqz v8, :cond_0

    .line 158
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 166
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipEntryName":Ljava/lang/String;
    :catchall_0
    move-exception v16

    move-object v14, v15

    .end local v15    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_6
    if-eqz v14, :cond_4

    .line 169
    :try_start_9
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 172
    :cond_4
    :goto_7
    throw v16

    .line 150
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "len":I
    .restart local v11    # "mSoFileName":Ljava/lang/String;
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zipEntryName":Ljava/lang/String;
    .restart local v15    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/ryg/utils/DLConfigs;->setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 151
    sget-object v16, Lcom/ryg/utils/SoLibManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "copy so lib success: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 156
    if-eqz v9, :cond_0

    .line 158
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1

    .line 156
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "len":I
    .end local v11    # "mSoFileName":Ljava/lang/String;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v16

    :goto_8
    if-eqz v8, :cond_6

    .line 158
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v16
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 166
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "zipEntryName":Ljava/lang/String;
    :cond_7
    if-eqz v15, :cond_8

    .line 169
    :try_start_c
    invoke-virtual {v15}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object v14, v15

    .line 172
    .end local v15    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_3

    .line 170
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v15    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v7

    .line 171
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v14, v15

    .line 172
    .end local v15    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_3

    .line 170
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v7

    .line 171
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 170
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 171
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 166
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v16

    goto :goto_6

    .line 163
    :catch_5
    move-exception v7

    goto/16 :goto_2

    .line 156
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "mSoFileName":Ljava/lang/String;
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zipEntryName":Ljava/lang/String;
    .restart local v15    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v16

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 152
    .end local v11    # "mSoFileName":Ljava/lang/String;
    :catch_6
    move-exception v7

    goto/16 :goto_5

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "zipEntryName":Ljava/lang/String;
    :cond_8
    move-object v14, v15

    .end local v15    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_3
.end method
