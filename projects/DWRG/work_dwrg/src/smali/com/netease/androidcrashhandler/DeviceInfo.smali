.class public Lcom/netease/androidcrashhandler/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/DeviceInfo$DeviceInfoHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private ctx:Landroid/content/Context;

.field private info:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mGL:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "DeviceInfo"

    sput-object v0, Lcom/netease/androidcrashhandler/DeviceInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    .line 65
    iput-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/androidcrashhandler/DeviceInfo;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;-><init>()V

    return-void
.end method

.method private chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 213
    const/16 v0, 0xd

    new-array v2, v0, [I

    .line 214
    const/16 v0, 0x3025

    aput v0, v2, v4

    const/4 v0, 0x2

    .line 215
    const/16 v1, 0x3026

    aput v1, v2, v0

    const/4 v0, 0x4

    .line 216
    const/16 v1, 0x3024

    aput v1, v2, v0

    const/4 v0, 0x5

    aput v3, v2, v0

    const/4 v0, 0x6

    .line 217
    const/16 v1, 0x3023

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v3, v2, v0

    .line 218
    const/16 v0, 0x3022

    aput v0, v2, v3

    const/16 v0, 0x9

    aput v3, v2, v0

    const/16 v0, 0xa

    .line 219
    const/16 v1, 0x3021

    aput v1, v2, v0

    const/16 v0, 0xb

    aput v3, v2, v0

    const/16 v0, 0xc

    .line 220
    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 225
    .local v2, "attribList":[I
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 226
    .local v5, "numConfig":[I
    iget-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 227
    aget v10, v5, v4

    .line 228
    .local v10, "configSize":I
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chooseConfig configSize:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-array v0, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 230
    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 231
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chooseConfig mEGLConfigs size :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v4

    return-object v0
.end method

.method private getBundleVersion()V
    .locals 8

    .prologue
    .line 242
    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "bundleID":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 245
    :goto_0
    const/4 v5, 0x0

    .line 247
    .local v5, "version":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 248
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 249
    const/4 v7, 0x1

    .line 248
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 250
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 251
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v5, "unknown"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "bundle_version":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v7, "bundle_version"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void

    .line 243
    .end local v1    # "bundle_version":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :cond_1
    const-string v0, "unknown"

    goto :goto_0

    .line 251
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 252
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "unknown"

    goto :goto_1
.end method

.method private getDeviceBasicInfo()Z
    .locals 30

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "model"

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "brand"

    sget-object v26, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "mfr"

    sget-object v26, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "board"

    sget-object v26, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "CPU_ABI"

    sget-object v26, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "CPU_ABI2"

    sget-object v26, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "activity"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 331
    .local v4, "activityManager":Landroid/app/ActivityManager;
    new-instance v14, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v14}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 332
    .local v14, "menInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "total_mem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getTotalMemory()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v21, "unknow"

    .line 336
    .local v21, "totalSize":Ljava/lang/String;
    const-string v10, "unknow"

    .line 339
    .local v10, "eTotalSize":Ljava/lang/String;
    new-instance v18, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 340
    .local v18, "statFs":Landroid/os/StatFs;
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v6, v0

    .line 341
    .local v6, "blockSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockCount()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v26, v26, v6

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "in_size"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 346
    .local v19, "state":Ljava/lang/String;
    const-string v24, "mounted"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 347
    new-instance v11, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 348
    .local v11, "estatFs":Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v8, v0

    .line 349
    .local v8, "eBlockSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v26, v26, v8

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "ex_size"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "with_sd_card"

    const-string v26, "true"

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .end local v8    # "eBlockSize":J
    .end local v11    # "estatFs":Landroid/os/StatFs;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->isRooted()Z

    move-result v17

    .line 358
    .local v17, "rooted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "is_rooted"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getCpuInfo()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 362
    .local v5, "cpuInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_3

    .line 371
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1

    .line 372
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 373
    .local v16, "processors":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "CPU"

    const/16 v26, 0x1

    aget-object v26, v16, v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v16    # "processors":[Ljava/lang/String;
    :cond_1
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 381
    .local v15, "metric":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 382
    .local v23, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 383
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .line 384
    .local v22, "width":I
    iget v12, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 385
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "screen_width"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "screen_height"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const/16 v24, 0x1

    return v24

    .line 353
    .end local v5    # "cpuInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "height":I
    .end local v15    # "metric":Landroid/util/DisplayMetrics;
    .end local v17    # "rooted":Z
    .end local v22    # "width":I
    .end local v23    # "wm":Landroid/view/WindowManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string v25, "with_sd_card"

    const-string v26, "false"

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 362
    .restart local v5    # "cpuInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "rooted":Z
    :cond_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 363
    .local v20, "string":Ljava/lang/String;
    const-string v25, "Hardware"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 364
    const-string v25, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 365
    .local v13, "infos":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v25, v0

    const-string v26, "Hardware"

    const/16 v27, 0x1

    aget-object v27, v13, v27

    invoke-interface/range {v25 .. v27}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private getDeviceCrashInfo()Z
    .locals 38

    .prologue
    .line 445
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "rls_version"

    sget-object v34, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "sdk_version"

    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "activity"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 450
    .local v7, "activityManager":Landroid/app/ActivityManager;
    new-instance v19, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v19 .. v19}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 451
    .local v19, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "avl_mem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "threshold_mem"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "is_low_mem"

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v8, "unknow"

    .line 458
    .local v8, "availableSize":Ljava/lang/String;
    const-string v13, "unknow"

    .line 461
    .local v13, "eAvailableSize":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v32

    if-eqz v32, :cond_0

    .line 462
    new-instance v27, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 463
    .local v27, "statFs":Landroid/os/StatFs;
    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getBlockSize()I

    move-result v32

    move/from16 v0, v32

    int-to-long v10, v0

    .line 464
    .local v10, "blockSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    mul-long v34, v34, v10

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "in_avl_size"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v10    # "blockSize":J
    .end local v27    # "statFs":Landroid/os/StatFs;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v28

    .line 470
    .local v28, "state":Ljava/lang/String;
    const-string v32, "mounted"

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 471
    new-instance v16, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 472
    .local v16, "estatFs":Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v32

    move/from16 v0, v32

    int-to-long v14, v0

    .line 473
    .local v14, "eBlockSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    mul-long v34, v34, v14

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "ex_avl_size"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .end local v14    # "eBlockSize":J
    .end local v16    # "estatFs":Landroid/os/StatFs;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 479
    .local v18, "mConfiguration":Landroid/content/res/Configuration;
    const-string v24, "unknow"

    .line 480
    .local v24, "orientation":Ljava/lang/String;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    .line 481
    .local v23, "ori":I
    const/16 v32, 0x2

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 482
    const-string v24, "LANDSCAPE"

    .line 485
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "ori"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Landroid/content/IntentFilter;

    .line 489
    const-string v35, "android.intent.action.BATTERY_CHANGED"

    invoke-direct/range {v34 .. v35}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    .line 490
    .local v9, "batteryInfoIntent":Landroid/content/Intent;
    const-string v32, "status"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 491
    .local v29, "status":I
    const-string v32, "health"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 492
    .local v17, "health":I
    const-string v32, "present"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 493
    .local v26, "present":Z
    const-string v32, "plugged"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 494
    .local v25, "plugged":I
    const-string v32, "temperature"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4024000000000000L    # 10.0

    div-double v30, v32, v34

    .line 496
    .local v30, "temperature":D
    const/16 v32, 0x8

    move/from16 v0, v32

    new-array v4, v0, [Ljava/lang/String;

    const/16 v32, 0x0

    const-string v33, "NULL"

    aput-object v33, v4, v32

    const/16 v32, 0x1

    const-string v33, "UNKNOWN"

    aput-object v33, v4, v32

    const/16 v32, 0x2

    const-string v33, "GOOD"

    aput-object v33, v4, v32

    const/16 v32, 0x3

    .line 497
    const-string v33, "OVERHEAT"

    aput-object v33, v4, v32

    const/16 v32, 0x4

    const-string v33, "DEAD"

    aput-object v33, v4, v32

    const/16 v32, 0x5

    const-string v33, "OVER_VOLTAGE"

    aput-object v33, v4, v32

    const/16 v32, 0x6

    const-string v33, "UNSPECIFIED_FAILURE"

    aput-object v33, v4, v32

    const/16 v32, 0x7

    .line 498
    const-string v33, "COLD"

    aput-object v33, v4, v32

    .line 499
    .local v4, "BATTERY_HEALTH":[Ljava/lang/String;
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v6, v0, [Ljava/lang/String;

    const/16 v32, 0x0

    const-string v33, "NULL"

    aput-object v33, v6, v32

    const/16 v32, 0x1

    const-string v33, "UNKNOWN"

    aput-object v33, v6, v32

    const/16 v32, 0x2

    const-string v33, "CHARGING"

    aput-object v33, v6, v32

    const/16 v32, 0x3

    .line 500
    const-string v33, "DISCHARGING"

    aput-object v33, v6, v32

    const/16 v32, 0x4

    const-string v33, "NOT_CHARGING"

    aput-object v33, v6, v32

    const/16 v32, 0x5

    const-string v33, "FULL"

    aput-object v33, v6, v32

    .line 501
    .local v6, "BATTERY_STATUS":[Ljava/lang/String;
    const/16 v32, 0x5

    move/from16 v0, v32

    new-array v5, v0, [Ljava/lang/String;

    const/16 v32, 0x0

    const-string v33, "NULL"

    aput-object v33, v5, v32

    const/16 v32, 0x1

    const-string v33, "AC CHARGER"

    aput-object v33, v5, v32

    const/16 v32, 0x2

    const-string v33, "USB PORT"

    aput-object v33, v5, v32

    const/16 v32, 0x3

    .line 502
    const-string v33, "NULL"

    aput-object v33, v5, v32

    const/16 v32, 0x4

    const-string v33, "WIRELESS"

    aput-object v33, v5, v32

    .line 503
    .local v5, "BATTERY_PLUGGED":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v32, v0

    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    if-ltz v29, :cond_3

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "Battery_State"

    aget-object v34, v6, v29

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_3
    array-length v0, v4

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    if-ltz v17, :cond_4

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "Battery_Health"

    aget-object v34, v4, v17

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "Is_Battery_Present"

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "Battery_Temperature"

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    move-object/from16 v32, v0

    .line 516
    const-string v33, "connectivity"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 515
    check-cast v12, Landroid/net/ConnectivityManager;

    .line 517
    .local v12, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v22

    .line 518
    .local v22, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v22, :cond_8

    .line 519
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 520
    .local v20, "netState":Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v21

    .line 522
    .local v21, "netType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "net_state"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "net_type"

    const-string v34, "WIFI"

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v4    # "BATTERY_HEALTH":[Ljava/lang/String;
    .end local v5    # "BATTERY_PLUGGED":[Ljava/lang/String;
    .end local v6    # "BATTERY_STATUS":[Ljava/lang/String;
    .end local v7    # "activityManager":Landroid/app/ActivityManager;
    .end local v8    # "availableSize":Ljava/lang/String;
    .end local v9    # "batteryInfoIntent":Landroid/content/Intent;
    .end local v12    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v13    # "eAvailableSize":Ljava/lang/String;
    .end local v17    # "health":I
    .end local v18    # "mConfiguration":Landroid/content/res/Configuration;
    .end local v19    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v20    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v21    # "netType":Ljava/lang/String;
    .end local v22    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v23    # "ori":I
    .end local v24    # "orientation":Ljava/lang/String;
    .end local v25    # "plugged":I
    .end local v26    # "present":Z
    .end local v28    # "state":Ljava/lang/String;
    .end local v29    # "status":I
    .end local v30    # "temperature":D
    :goto_1
    const/16 v32, 0x1

    return v32

    .line 483
    .restart local v7    # "activityManager":Landroid/app/ActivityManager;
    .restart local v8    # "availableSize":Ljava/lang/String;
    .restart local v13    # "eAvailableSize":Ljava/lang/String;
    .restart local v18    # "mConfiguration":Landroid/content/res/Configuration;
    .restart local v19    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v23    # "ori":I
    .restart local v24    # "orientation":Ljava/lang/String;
    .restart local v28    # "state":Ljava/lang/String;
    :cond_5
    const/16 v32, 0x1

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 484
    const-string v24, "PORTRAIT"

    goto/16 :goto_0

    .line 528
    .restart local v4    # "BATTERY_HEALTH":[Ljava/lang/String;
    .restart local v5    # "BATTERY_PLUGGED":[Ljava/lang/String;
    .restart local v6    # "BATTERY_STATUS":[Ljava/lang/String;
    .restart local v9    # "batteryInfoIntent":Landroid/content/Intent;
    .restart local v12    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v17    # "health":I
    .restart local v20    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .restart local v21    # "netType":Ljava/lang/String;
    .restart local v22    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v25    # "plugged":I
    .restart local v26    # "present":Z
    .restart local v29    # "status":I
    .restart local v30    # "temperature":D
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getType()I

    move-result v32

    if-nez v32, :cond_7

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "net_type"

    const-string v34, "radio"

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "net_pto"

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    .end local v4    # "BATTERY_HEALTH":[Ljava/lang/String;
    .end local v5    # "BATTERY_PLUGGED":[Ljava/lang/String;
    .end local v6    # "BATTERY_STATUS":[Ljava/lang/String;
    .end local v7    # "activityManager":Landroid/app/ActivityManager;
    .end local v8    # "availableSize":Ljava/lang/String;
    .end local v9    # "batteryInfoIntent":Landroid/content/Intent;
    .end local v12    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v13    # "eAvailableSize":Ljava/lang/String;
    .end local v17    # "health":I
    .end local v18    # "mConfiguration":Landroid/content/res/Configuration;
    .end local v19    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v20    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v21    # "netType":Ljava/lang/String;
    .end local v22    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v23    # "ori":I
    .end local v24    # "orientation":Ljava/lang/String;
    .end local v25    # "plugged":I
    .end local v26    # "present":Z
    .end local v28    # "state":Ljava/lang/String;
    .end local v29    # "status":I
    .end local v30    # "temperature":D
    :catch_0
    move-exception v32

    goto :goto_1

    .line 535
    .restart local v4    # "BATTERY_HEALTH":[Ljava/lang/String;
    .restart local v5    # "BATTERY_PLUGGED":[Ljava/lang/String;
    .restart local v6    # "BATTERY_STATUS":[Ljava/lang/String;
    .restart local v7    # "activityManager":Landroid/app/ActivityManager;
    .restart local v8    # "availableSize":Ljava/lang/String;
    .restart local v9    # "batteryInfoIntent":Landroid/content/Intent;
    .restart local v12    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v13    # "eAvailableSize":Ljava/lang/String;
    .restart local v17    # "health":I
    .restart local v18    # "mConfiguration":Landroid/content/res/Configuration;
    .restart local v19    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v20    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .restart local v21    # "netType":Ljava/lang/String;
    .restart local v22    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v23    # "ori":I
    .restart local v24    # "orientation":Ljava/lang/String;
    .restart local v25    # "plugged":I
    .restart local v26    # "present":Z
    .restart local v28    # "state":Ljava/lang/String;
    .restart local v29    # "status":I
    .restart local v30    # "temperature":D
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "net_type"

    const-string v34, "Unknown"

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 538
    .end local v20    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v21    # "netType":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "net_state"

    const-string v34, "Not_Available"

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "net_type"

    const-string v34, "Disconnected"

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private getDeviceMD5()V
    .locals 12

    .prologue
    .line 266
    :try_start_0
    iget-object v9, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    .line 267
    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 266
    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 268
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    .local v1, "deviceID":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 276
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "simSerialNumber":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 278
    .local v6, "serialNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 279
    const-string v10, "android_id"

    .line 278
    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "ANDROID_ID":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_0

    move-object v9, v1

    :goto_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    if-eqz v7, :cond_1

    move-object v9, v1

    :goto_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    if-eqz v6, :cond_2

    move-object v9, v1

    :goto_3
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    if-eqz v0, :cond_3

    .end local v1    # "deviceID":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getFileUtils()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/netease/androidcrashhandler/MyFileUtils;->str2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "md5":Ljava/lang/String;
    iget-object v9, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v10, "d_md5"

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v0    # "ANDROID_ID":Ljava/lang/String;
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "serialNumber":Ljava/lang/String;
    .end local v7    # "simSerialNumber":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :goto_5
    return-void

    .line 271
    .restart local v1    # "deviceID":Ljava/lang/String;
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/netease/androidcrashhandler/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 289
    .end local v1    # "deviceID":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v2

    .line 290
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v10, "d_md5"

    const-string v11, "unknown"

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 281
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ANDROID_ID":Ljava/lang/String;
    .restart local v1    # "deviceID":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "serialNumber":Ljava/lang/String;
    .restart local v7    # "simSerialNumber":Ljava/lang/String;
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :try_start_3
    const-string v9, "null"

    goto :goto_1

    .line 282
    :cond_1
    const-string v9, "null"

    goto :goto_2

    .line 283
    :cond_2
    const-string v9, "null"

    goto :goto_3

    .line 284
    :cond_3
    const-string v1, "null"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method

.method private getGPUInfo()V
    .locals 8

    .prologue
    .line 183
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 184
    .local v2, "version":[I
    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 191
    .local v0, "attribList":[I
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 192
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 193
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 194
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 195
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 196
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 197
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 198
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 200
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GL_RENDERER"

    iget-object v5, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x1f01

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GL_VENDOR"

    iget-object v5, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x1f00

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GL_VERSION"

    iget-object v5, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x1f02

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GPU"

    iget-object v5, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v6, 0x1f01

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GL_RENDERER"

    const-string v5, "unknow"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GL_VENDOR"

    const-string v5, "unknow"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GL_VERSION"

    const-string v5, "unknow"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v4, "GPU"

    const-string v5, "unknow"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    nop

    :array_0
    .array-data 4
        0x3057
        0x64
        0x3056
        0x64
        0x3038
    .end array-data
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/netease/androidcrashhandler/DeviceInfo$DeviceInfoHolder;->INSTANCE:Lcom/netease/androidcrashhandler/DeviceInfo;

    return-object v0
.end method

.method private getTime()V
    .locals 9

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 170
    .local v4, "timeMillis":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "timestamp":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v7, "timestamp"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 174
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v7, "time"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private getTotalMemory()J
    .locals 12

    .prologue
    .line 396
    const-string v6, "/proc/meminfo"

    .line 399
    .local v6, "memPath":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 402
    .local v2, "initial_memory":J
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 403
    .local v5, "localFileReader":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v4, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 404
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "str":Ljava/lang/String;
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    mul-long v2, v8, v10

    .line 407
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "str":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/io/IOException;
    sget-object v8, Lcom/netease/androidcrashhandler/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isRooted()Z
    .locals 4

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 427
    .local v1, "root":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    :cond_0
    const/4 v1, 0x1

    .line 434
    :cond_1
    :goto_0
    return v1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/androidcrashhandler/DeviceInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public collectDeviceInfo()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    .line 148
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getBundleVersion()V

    .line 149
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceMD5()V

    .line 150
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceBasicInfo()Z

    .line 151
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getGPUInfo()V

    .line 152
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getUdid()V

    .line 154
    :cond_0
    return-void
.end method

.method public getCpuInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    const-string v4, "/proc/cpuinfo"

    .line 296
    .local v4, "str1":Ljava/lang/String;
    const-string v5, ""

    .line 298
    .local v5, "str2":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "cpuInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v3, v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 304
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 305
    .local v2, "lineTxt":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 309
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 312
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "lineTxt":Ljava/lang/String;
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :goto_1
    return-object v0

    .line 307
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "lineTxt":Ljava/lang/String;
    .restart local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "lineTxt":Ljava/lang/String;
    .end local v3    # "localBufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getCtx()Landroid/content/Context;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getTime()V

    .line 98
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceCrashInfo()Z

    .line 99
    iget-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceInfoStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 118
    .local v0, "allInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 119
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    sget-object v3, Lcom/netease/androidcrashhandler/MyFileUtils;->CRLF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    return-object v0
.end method

.method public getUdid()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    const-string v2, "android_id"

    .line 157
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "udid":Ljava/lang/String;
    const-string v1, "wuln"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "udid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->info:Ljava/util/Map;

    const-string v2, "udid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public setCtx(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/netease/androidcrashhandler/DeviceInfo;->ctx:Landroid/content/Context;

    .line 574
    return-void
.end method
