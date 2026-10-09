.class public Lcom/tencent/hawk/bridge/CC;
.super Ljava/lang/Object;
.source "CC.java"


# static fields
.field private static final MASK_SEG_LEN:I = 0xf

.field public static extEnabled:Z

.field public static isSECOREnabled:Z

.field public static isTApmEnabled:Z

.field private static isTickFrameEnabled:Z

.field private static sApmVersion:I

.field private static sArch:Ljava/lang/String;

.field private static sBlockMask:I

.field private static sCfgVersion:I

.field private static sCheckPermissionFlag:I

.field private static sCompressFileRand:I

.field private static sDeviceClsSwitch:I

.field private static sFBCheckFuncGray:I

.field private static sFileBuffer:I

.field private static sFlashExternalInfoRand:I

.field private static sFlashInternalInfoRandBlock:I

.field private static sGameVersion:I

.field private static sHardwareSwitch:I

.field private static sIpAddr:J

.field private static sJavaPssRand:I

.field private static sMacAddr:J

.field private static sManu:Ljava/lang/String;

.field private static sModel:Ljava/lang/String;

.field private static sOslevel:I

.field private static sPssAlgRand:I

.field private static sPssIntervals:I

.field private static sPssManualMode:I

.field private static sQemuHardwareRandBlock:I

.field private static sVmpStatusSwitch:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    sput-object v0, Lcom/tencent/hawk/bridge/CC;->sManu:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/tencent/hawk/bridge/CC;->sModel:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/tencent/hawk/bridge/CC;->sArch:Ljava/lang/String;

    .line 24
    sput-wide v4, Lcom/tencent/hawk/bridge/CC;->sMacAddr:J

    .line 25
    sput-wide v4, Lcom/tencent/hawk/bridge/CC;->sIpAddr:J

    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/tencent/hawk/bridge/CC;->sBlockMask:I

    .line 32
    sput v1, Lcom/tencent/hawk/bridge/CC;->sFBCheckFuncGray:I

    .line 33
    sput-boolean v1, Lcom/tencent/hawk/bridge/CC;->extEnabled:Z

    .line 34
    sput v1, Lcom/tencent/hawk/bridge/CC;->sCheckPermissionFlag:I

    .line 35
    sput v1, Lcom/tencent/hawk/bridge/CC;->sDeviceClsSwitch:I

    .line 36
    sput v1, Lcom/tencent/hawk/bridge/CC;->sPssManualMode:I

    .line 37
    sput v1, Lcom/tencent/hawk/bridge/CC;->sHardwareSwitch:I

    .line 38
    sput v2, Lcom/tencent/hawk/bridge/CC;->sVmpStatusSwitch:I

    .line 39
    sput v1, Lcom/tencent/hawk/bridge/CC;->sQemuHardwareRandBlock:I

    .line 41
    sput-boolean v2, Lcom/tencent/hawk/bridge/CC;->isTickFrameEnabled:Z

    .line 43
    sput v1, Lcom/tencent/hawk/bridge/CC;->sFileBuffer:I

    .line 44
    sput v1, Lcom/tencent/hawk/bridge/CC;->sPssIntervals:I

    .line 45
    sput v1, Lcom/tencent/hawk/bridge/CC;->sPssAlgRand:I

    .line 46
    sput v1, Lcom/tencent/hawk/bridge/CC;->sFlashInternalInfoRandBlock:I

    .line 47
    sput v1, Lcom/tencent/hawk/bridge/CC;->sFlashExternalInfoRand:I

    .line 48
    sput v1, Lcom/tencent/hawk/bridge/CC;->sJavaPssRand:I

    .line 49
    const/16 v0, 0x64

    sput v0, Lcom/tencent/hawk/bridge/CC;->sCompressFileRand:I

    .line 50
    sput-boolean v2, Lcom/tencent/hawk/bridge/CC;->isTApmEnabled:Z

    .line 52
    sput-boolean v2, Lcom/tencent/hawk/bridge/CC;->isSECOREnabled:Z

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlockMask()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/tencent/hawk/bridge/CC;->sBlockMask:I

    return v0
.end method

.method public static getCfgVersion()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/tencent/hawk/bridge/CC;->sCfgVersion:I

    return v0
.end method

.method public static getFBCheckGray()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/tencent/hawk/bridge/CC;->sFBCheckFuncGray:I

    return v0
.end method

.method public static getFileBufferSz()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/tencent/hawk/bridge/CC;->sFileBuffer:I

    return v0
.end method

.method public static getFileCompressNum()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/tencent/hawk/bridge/CC;->sCompressFileRand:I

    return v0
.end method

.method public static getJavaPssRand()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/tencent/hawk/bridge/CC;->sJavaPssRand:I

    return v0
.end method

.method public static getPermissionFlag()I
    .locals 1

    .prologue
    .line 226
    sget v0, Lcom/tencent/hawk/bridge/CC;->sCheckPermissionFlag:I

    return v0
.end method

.method public static getPssAlgRand()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/tencent/hawk/bridge/CC;->sPssAlgRand:I

    return v0
.end method

.method public static getPssIntervals()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/tencent/hawk/bridge/CC;->sPssIntervals:I

    return v0
.end method

.method public static initCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIII)V
    .locals 1
    .param p0, "manu"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "arch"    # Ljava/lang/String;
    .param p3, "macaddr"    # J
    .param p5, "ip"    # J
    .param p7, "gameversion"    # I
    .param p8, "apmversion"    # I
    .param p9, "oslevel"    # I

    .prologue
    .line 99
    sput-object p0, Lcom/tencent/hawk/bridge/CC;->sManu:Ljava/lang/String;

    .line 100
    sput-object p1, Lcom/tencent/hawk/bridge/CC;->sModel:Ljava/lang/String;

    .line 101
    sput-object p2, Lcom/tencent/hawk/bridge/CC;->sArch:Ljava/lang/String;

    .line 102
    sput-wide p3, Lcom/tencent/hawk/bridge/CC;->sMacAddr:J

    .line 103
    sput-wide p5, Lcom/tencent/hawk/bridge/CC;->sIpAddr:J

    .line 104
    sput p7, Lcom/tencent/hawk/bridge/CC;->sGameVersion:I

    .line 105
    sput p8, Lcom/tencent/hawk/bridge/CC;->sApmVersion:I

    .line 106
    sput p9, Lcom/tencent/hawk/bridge/CC;->sOslevel:I

    .line 107
    return-void
.end method

.method public static isCCfileExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "projCtx"    # Landroid/content/Context;
    .param p1, "projIden"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 110
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    const-string v2, "apm_cc"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDeviceCLsEnabled()Z
    .locals 1

    .prologue
    .line 230
    sget v0, Lcom/tencent/hawk/bridge/CC;->sDeviceClsSwitch:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalFlashInfoEnabled()Z
    .locals 6

    .prologue
    .line 241
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 242
    .local v0, "rand":D
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 243
    .local v2, "seed":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "External Flash Seed is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tencent/hawk/bridge/CC;->sFlashExternalInfoRand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 244
    sget v3, Lcom/tencent/hawk/bridge/CC;->sFlashExternalInfoRand:I

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isFirstLaunch(Landroid/content/Context;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 265
    const-string v5, "APMCfg"

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 266
    .local v2, "settings":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_2

    .line 267
    const-string v5, "apm_initial_launch"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 268
    .local v1, "launchflag":I
    if-nez v1, :cond_1

    .line 269
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 271
    const-string v4, "apm_initial_launch"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "launchflag":I
    :goto_0
    return v3

    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "launchflag":I
    :cond_0
    move v3, v4

    .line 275
    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v3, v4

    .line 278
    goto :goto_0

    .end local v1    # "launchflag":I
    :cond_2
    move v3, v4

    .line 281
    goto :goto_0
.end method

.method public static isHardwareEnabled()Z
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/tencent/hawk/bridge/CC;->sHardwareSwitch:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHawkEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 46
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "projIden"    # Ljava/lang/String;
    .param p2, "gpuVendor"    # Ljava/lang/String;
    .param p3, "gpuRenderer"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 288
    const/16 v44, 0x0

    .line 569
    :goto_0
    return v44

    .line 290
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/tencent/hawk/bridge/CC;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v44

    if-eqz v44, :cond_4

    invoke-static/range {p0 .. p1}, Lcom/tencent/hawk/bridge/CC;->isCCfileExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_4

    .line 292
    const-string v44, "=====first luanch===="

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 295
    const/16 v44, 0x1

    sput v44, Lcom/tencent/hawk/bridge/CC;->sCheckPermissionFlag:I

    .line 296
    const/16 v44, 0x70

    sput v44, Lcom/tencent/hawk/bridge/CC;->sBlockMask:I

    .line 297
    const/16 v44, 0x7f00

    sput v44, Lcom/tencent/hawk/bridge/CC;->sFBCheckFuncGray:I

    .line 298
    sget-object v27, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 299
    .local v27, "model":Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 300
    const-string v44, "goodgrades"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_1

    const-string v44, "Le X820"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_1

    const-string v44, "MuMu"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_2

    .line 301
    :cond_1
    const/16 v44, 0x0

    goto :goto_0

    .line 305
    :cond_2
    sget-object v25, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 306
    .local v25, "manu":Ljava/lang/String;
    if-eqz v25, :cond_3

    const-string v44, "netease"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 307
    const/16 v44, 0x0

    goto :goto_0

    .line 310
    :cond_3
    const/16 v44, 0x1

    goto :goto_0

    .line 313
    .end local v25    # "manu":Ljava/lang/String;
    .end local v27    # "model":Ljava/lang/String;
    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/tencent/hawk/bridge/CC;->isCCfileExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_5

    .line 314
    const-string v44, "cc file not found"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 315
    const/16 v44, 0x0

    goto :goto_0

    .line 318
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/tencent/hawk/bridge/CC;->readCCIden(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, "ccIden":Ljava/lang/String;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v44

    if-nez v44, :cond_7

    .line 320
    :cond_6
    const-string v44, "ccIden is null or length is 0"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 321
    const/16 v44, 0x0

    goto :goto_0

    .line 324
    :cond_7
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "CCIden : "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V

    .line 326
    invoke-static {v10}, Lcom/tencent/hawk/bridge/CC;->isMaskValid(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_8

    .line 327
    const-string v44, "mask invalid"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 328
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 330
    :cond_8
    const-string v44, "apm_cc"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 332
    const-string v44, ";"

    move-object/from16 v0, v44

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 333
    .local v26, "mask":[Ljava/lang/String;
    if-nez v26, :cond_9

    .line 334
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 346
    :cond_9
    const/4 v13, -0x1

    .line 347
    .local v13, "cfgVersion":I
    const/4 v7, -0x1

    .line 348
    .local v7, "blockMask":I
    const/16 v28, -0x1

    .line 349
    .local v28, "pbValue":I
    const/4 v11, -0x1

    .line 350
    .local v11, "ccMask":I
    const/16 v40, 0x0

    .line 351
    .local v40, "x86Gray":I
    const/16 v16, 0x0

    .line 352
    .local v16, "emulatorBlock":I
    const/16 v17, 0x64

    .line 355
    .local v17, "emulatorGray":I
    const/16 v44, 0x0

    :try_start_0
    aget-object v44, v26, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 356
    const/16 v44, 0x1

    aget-object v44, v26, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 357
    .local v36, "temp":I
    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    .line 358
    shr-int/lit8 v44, v36, 0x8

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    rsub-int/lit8 v44, v44, 0x64

    sput v44, Lcom/tencent/hawk/bridge/CC;->sCompressFileRand:I

    .line 360
    shr-int/lit8 v44, v36, 0x10

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    .line 361
    .local v29, "pdf":I
    and-int/lit8 v44, v29, 0x3

    sput v44, Lcom/tencent/hawk/bridge/CC;->sCheckPermissionFlag:I

    .line 362
    shr-int/lit8 v44, v29, 0x2

    and-int/lit8 v44, v44, 0x1

    sput v44, Lcom/tencent/hawk/bridge/CC;->sDeviceClsSwitch:I

    .line 363
    shr-int/lit8 v44, v29, 0x3

    and-int/lit8 v44, v44, 0x1

    sput v44, Lcom/tencent/hawk/bridge/CC;->sPssManualMode:I

    .line 364
    shr-int/lit8 v44, v29, 0x4

    and-int/lit8 v44, v44, 0x1

    sput v44, Lcom/tencent/hawk/bridge/CC;->sVmpStatusSwitch:I

    .line 366
    shr-int/lit8 v44, v36, 0x18

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sHardwareSwitch:I

    .line 368
    const/16 v44, 0x2

    aget-object v44, v26, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 369
    const/16 v44, 0xc

    aget-object v44, v26, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 370
    const/16 v44, 0xd

    aget-object v44, v26, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 379
    sput v13, Lcom/tencent/hawk/bridge/CC;->sFBCheckFuncGray:I

    .line 381
    sget v44, Lcom/tencent/hawk/bridge/CC;->sFBCheckFuncGray:I

    shr-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    .line 382
    .local v31, "qcchecker":I
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "qcc blocker value: "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 383
    if-eqz v31, :cond_a

    if-eqz p0, :cond_a

    .line 384
    const-string v44, "APMCfg"

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v33

    .line 385
    .local v33, "settings":Landroid/content/SharedPreferences;
    if-eqz v33, :cond_a

    .line 386
    invoke-interface/range {v33 .. v33}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 387
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v15, :cond_a

    .line 388
    const-string v44, "qcc_gray"

    move-object/from16 v0, v44

    move/from16 v1, v31

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v33    # "settings":Landroid/content/SharedPreferences;
    :cond_a
    sget v44, Lcom/tencent/hawk/bridge/CC;->sFBCheckFuncGray:I

    shr-int/lit8 v44, v44, 0x18

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 395
    rsub-int/lit8 v17, v16, 0x64

    .line 396
    if-gez v17, :cond_b

    .line 397
    const/16 v17, 0x0

    .line 398
    :cond_b
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "Emulator gray : "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 400
    const/16 v44, 0x3

    aget-object v5, v26, v44

    .line 401
    .local v5, "blockGameVersionList":Ljava/lang/String;
    const/16 v44, 0x4

    aget-object v9, v26, v44

    .line 402
    .local v9, "blockOsVersionList":Ljava/lang/String;
    const/16 v44, 0x5

    aget-object v6, v26, v44

    .line 403
    .local v6, "blockManuList":Ljava/lang/String;
    const/16 v44, 0x6

    aget-object v8, v26, v44

    .line 404
    .local v8, "blockModelList":Ljava/lang/String;
    const/16 v44, 0x7

    aget-object v4, v26, v44

    .line 405
    .local v4, "blockArchList":Ljava/lang/String;
    const/16 v44, 0x8

    aget-object v19, v26, v44

    .line 406
    .local v19, "grayIPList":Ljava/lang/String;
    const/16 v44, 0x9

    aget-object v22, v26, v44

    .line 407
    .local v22, "grayMacList":Ljava/lang/String;
    const/16 v44, 0xa

    aget-object v23, v26, v44

    .line 408
    .local v23, "grayManuList":Ljava/lang/String;
    const/16 v44, 0xb

    aget-object v24, v26, v44

    .line 410
    .local v24, "grayModelList":Ljava/lang/String;
    if-eqz v22, :cond_c

    .line 411
    const/16 v37, 0x0

    .line 413
    .local v37, "varCfgValue":I
    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    .line 419
    :goto_1
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sFileBuffer:I

    .line 420
    shr-int/lit8 v44, v37, 0x8

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sPssIntervals:I

    .line 421
    shr-int/lit8 v44, v37, 0x10

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sPssAlgRand:I

    .line 422
    shr-int/lit8 v44, v37, 0x18

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sJavaPssRand:I

    .line 423
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "Flash : "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sget v45, Lcom/tencent/hawk/bridge/CC;->sFlashInternalInfoRandBlock:I

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 426
    .end local v37    # "varCfgValue":I
    :cond_c
    if-eqz v19, :cond_d

    .line 427
    const/16 v30, 0x0

    .line 429
    .local v30, "pssVarCfgValue":I
    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v30

    .line 433
    :goto_2
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sFlashInternalInfoRandBlock:I

    .line 434
    shr-int/lit8 v44, v30, 0x8

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sFlashExternalInfoRand:I

    .line 435
    shr-int/lit8 v44, v30, 0x10

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    sput v44, Lcom/tencent/hawk/bridge/CC;->sQemuHardwareRandBlock:I

    .line 436
    shr-int/lit8 v44, v30, 0x18

    move/from16 v0, v44

    and-int/lit16 v12, v0, 0xff

    .line 438
    .local v12, "cfgTickFrameSeed":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v38

    .line 439
    .local v38, "tickseed":D
    const-wide/high16 v44, 0x4059000000000000L    # 100.0

    mul-double v44, v44, v38

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v32, v0

    .line 440
    .local v32, "seed":I
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "Tick Frame Seed: "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 441
    rsub-int/lit8 v44, v12, 0x64

    move/from16 v0, v32

    move/from16 v1, v44

    if-ge v0, v1, :cond_f

    const/16 v44, 0x1

    :goto_3
    sput-boolean v44, Lcom/tencent/hawk/bridge/CC;->isTickFrameEnabled:Z

    .line 444
    .end local v12    # "cfgTickFrameSeed":I
    .end local v30    # "pssVarCfgValue":I
    .end local v32    # "seed":I
    .end local v38    # "tickseed":D
    :cond_d
    new-instance v44, Ljava/lang/StringBuilder;

    const-string/jumbo v45, "x86Gray : "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " checkpermission: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sget v45, Lcom/tencent/hawk/bridge/CC;->sCheckPermissionFlag:I

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 448
    if-ltz v7, :cond_e

    const/16 v44, 0x200

    move/from16 v0, v44

    if-lt v7, v0, :cond_10

    .line 449
    :cond_e
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 372
    .end local v4    # "blockArchList":Ljava/lang/String;
    .end local v5    # "blockGameVersionList":Ljava/lang/String;
    .end local v6    # "blockManuList":Ljava/lang/String;
    .end local v8    # "blockModelList":Ljava/lang/String;
    .end local v9    # "blockOsVersionList":Ljava/lang/String;
    .end local v19    # "grayIPList":Ljava/lang/String;
    .end local v22    # "grayMacList":Ljava/lang/String;
    .end local v23    # "grayManuList":Ljava/lang/String;
    .end local v24    # "grayModelList":Ljava/lang/String;
    .end local v29    # "pdf":I
    .end local v31    # "qcchecker":I
    .end local v36    # "temp":I
    :catch_0
    move-exception v14

    .line 373
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const-string v44, "number pasre exception"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 375
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 414
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "blockArchList":Ljava/lang/String;
    .restart local v5    # "blockGameVersionList":Ljava/lang/String;
    .restart local v6    # "blockManuList":Ljava/lang/String;
    .restart local v8    # "blockModelList":Ljava/lang/String;
    .restart local v9    # "blockOsVersionList":Ljava/lang/String;
    .restart local v19    # "grayIPList":Ljava/lang/String;
    .restart local v22    # "grayMacList":Ljava/lang/String;
    .restart local v23    # "grayManuList":Ljava/lang/String;
    .restart local v24    # "grayModelList":Ljava/lang/String;
    .restart local v29    # "pdf":I
    .restart local v31    # "qcchecker":I
    .restart local v36    # "temp":I
    .restart local v37    # "varCfgValue":I
    :catch_1
    move-exception v14

    .line 415
    .restart local v14    # "e":Ljava/lang/Exception;
    const/16 v37, 0x0

    .line 416
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "Mac Seed Parse Error "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 430
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v37    # "varCfgValue":I
    .restart local v30    # "pssVarCfgValue":I
    :catch_2
    move-exception v14

    .line 431
    .restart local v14    # "e":Ljava/lang/Exception;
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 441
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v12    # "cfgTickFrameSeed":I
    .restart local v32    # "seed":I
    .restart local v38    # "tickseed":D
    :cond_f
    const/16 v44, 0x0

    goto :goto_3

    .line 451
    .end local v12    # "cfgTickFrameSeed":I
    .end local v30    # "pssVarCfgValue":I
    .end local v32    # "seed":I
    .end local v38    # "tickseed":D
    :cond_10
    sput v7, Lcom/tencent/hawk/bridge/CC;->sBlockMask:I

    .line 452
    invoke-static {v11}, Lcom/tencent/hawk/bridge/CCMask;->initCCMask(I)V

    .line 454
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isGrayEnabled()Z

    move-result v44

    if-nez v44, :cond_11

    .line 455
    const-string v44, "gray disabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 456
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 465
    :cond_11
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isArchEnabled()Z

    move-result v44

    if-eqz v44, :cond_13

    .line 467
    const/16 v44, 0x0

    sput-boolean v44, Lcom/tencent/hawk/bridge/CC;->isSECOREnabled:Z

    .line 468
    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sManu:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lcom/tencent/hawk/bridge/ActionCtrl;->isGrayManu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_12

    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sModel:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Lcom/tencent/hawk/bridge/ActionCtrl;->isGrayModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_13

    .line 470
    :cond_12
    const/16 v44, 0x1

    sput-boolean v44, Lcom/tencent/hawk/bridge/CC;->isSECOREnabled:Z

    .line 474
    :cond_13
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isGameVersionEnabled()Z

    move-result v44

    if-eqz v44, :cond_15

    .line 475
    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sManu:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Lcom/tencent/hawk/bridge/ActionCtrl;->isManuBlk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_14

    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sModel:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v5, v0}, Lcom/tencent/hawk/bridge/ActionCtrl;->isManuBlk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_14

    .line 476
    const-string v44, "A"

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_15

    .line 481
    :cond_14
    const/16 v44, 0x0

    sput-boolean v44, Lcom/tencent/hawk/bridge/CC;->isSECOREnabled:Z

    .line 485
    :cond_15
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isOsVersionEnabled()Z

    move-result v44

    if-eqz v44, :cond_16

    sget v44, Lcom/tencent/hawk/bridge/CC;->sOslevel:I

    move/from16 v0, v44

    invoke-static {v9, v0}, Lcom/tencent/hawk/bridge/ActionCtrl;->isOSVersionBlk(Ljava/lang/String;I)Z

    move-result v44

    if-eqz v44, :cond_16

    .line 486
    const-string v44, "os Version disabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 487
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 489
    :cond_16
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isManuEnabled()Z

    move-result v44

    if-eqz v44, :cond_17

    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sManu:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v6, v0}, Lcom/tencent/hawk/bridge/ActionCtrl;->isManuBlk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_17

    .line 490
    const-string v44, "manu disabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 491
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 493
    :cond_17
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isModelEnabled()Z

    move-result v44

    if-eqz v44, :cond_18

    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sModel:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v8, v0}, Lcom/tencent/hawk/bridge/ActionCtrl;->isModelBlk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_18

    .line 494
    const-string v44, "model disabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 495
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 516
    :cond_18
    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sArch:Ljava/lang/String;

    if-eqz v44, :cond_1a

    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sArch:Ljava/lang/String;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v45, "x86"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_1a

    .line 517
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v42

    .line 518
    .local v42, "x86seed01":D
    const-wide/high16 v44, 0x4059000000000000L    # 100.0

    mul-double v44, v44, v42

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v41, v0

    .line 519
    .local v41, "x86seed":I
    new-instance v44, Ljava/lang/StringBuilder;

    const-string/jumbo v45, "x86 seed is "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", x86 pb set is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 520
    move/from16 v0, v41

    move/from16 v1, v40

    if-ge v0, v1, :cond_19

    .line 521
    const-string/jumbo v44, "x86 rand enabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 522
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 524
    :cond_19
    const-string/jumbo v44, "x86 rand disabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 526
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 529
    .end local v41    # "x86seed":I
    .end local v42    # "x86seed01":D
    :cond_1a
    const/16 v44, 0x64

    move/from16 v0, v17

    move/from16 v1, v44

    if-ge v0, v1, :cond_1b

    invoke-static/range {p2 .. p3}, Lcom/tencent/hawk/bridge/QccHandler;->isEmulator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1b

    .line 530
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    .line 531
    .local v20, "enulatorTemp":D
    const-wide/high16 v44, 0x4059000000000000L    # 100.0

    mul-double v44, v44, v20

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v18, v0

    .line 532
    .local v18, "emulatorSeed":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    .line 533
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "Emulator blocked "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 534
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 538
    .end local v18    # "emulatorSeed":I
    .end local v20    # "enulatorTemp":D
    :cond_1b
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isRandPbEnabled()Z

    move-result v44

    if-eqz v44, :cond_1c

    .line 539
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v34

    .line 540
    .local v34, "seed01":D
    const-wide/high16 v44, 0x4059000000000000L    # 100.0

    mul-double v44, v44, v34

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v32, v0

    .line 541
    .restart local v32    # "seed":I
    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "seed is "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", pb set is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 542
    move/from16 v0, v32

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    .line 543
    const-string v44, "rand enabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 544
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 558
    .end local v32    # "seed":I
    .end local v34    # "seed01":D
    :cond_1c
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isGrayManuEnabled()Z

    move-result v44

    if-eqz v44, :cond_1d

    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sManu:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/ActionCtrl;->isGrayManu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1d

    .line 559
    const-string v44, "manu enabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 560
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 562
    :cond_1d
    invoke-static {}, Lcom/tencent/hawk/bridge/CCMask;->isGrayModelEnabled()Z

    move-result v44

    if-eqz v44, :cond_1e

    sget-object v44, Lcom/tencent/hawk/bridge/CC;->sModel:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/ActionCtrl;->isGrayModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_1e

    .line 563
    const-string v44, "model enabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 564
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 567
    :cond_1e
    const-string v44, "AB disabled"

    invoke-static/range {v44 .. v44}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 569
    const/16 v44, 0x0

    goto/16 :goto_0
.end method

.method public static isInternalFlashInfoEnabled()Z
    .locals 6

    .prologue
    .line 234
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 235
    .local v0, "rand":D
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 236
    .local v2, "seed":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Internal Flash Seed is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tencent/hawk/bridge/CC;->sFlashInternalInfoRandBlock:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 237
    sget v3, Lcom/tencent/hawk/bridge/CC;->sFlashInternalInfoRandBlock:I

    rsub-int/lit8 v3, v3, 0x64

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMaskValid(Ljava/lang/String;)Z
    .locals 10
    .param p0, "idencc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 198
    if-nez p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v6

    .line 200
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "dataArr":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v7, v0

    const/16 v8, 0xf

    if-ne v7, v8, :cond_0

    .line 205
    const-wide/16 v4, 0x0

    .line 207
    .local v4, "hashValue":J
    const/16 v7, 0xe

    :try_start_0
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 213
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, "lastSemi":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_0

    .line 217
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "hashSrc":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-static {v2, v7}, Lcom/tencent/hawk/bridge/HashGen;->oneWayHash(Ljava/lang/String;I)J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_0

    .line 222
    const/4 v6, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "hashSrc":Ljava/lang/String;
    .end local v3    # "lastSemi":I
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPssManualModeEnabled()Z
    .locals 1

    .prologue
    .line 256
    sget v0, Lcom/tencent/hawk/bridge/CC;->sPssManualMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQemuHardwareBlocked()Z
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 93
    .local v0, "rand":D
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 94
    .local v2, "seed":I
    sget v3, Lcom/tencent/hawk/bridge/CC;->sQemuHardwareRandBlock:I

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isTickFrameEnabled()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/tencent/hawk/bridge/CC;->isTickFrameEnabled:Z

    return v0
.end method

.method public static isVmpStatusPostEnabled()Z
    .locals 1

    .prologue
    .line 248
    sget v0, Lcom/tencent/hawk/bridge/CC;->sVmpStatusSwitch:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readCCIden(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 126
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/local/tmp/__apm_cc"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 128
    const-string v8, "===========FOUND APM_CC in TMP=========="

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 130
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v8, "/data/local/tmp/__apm_cc"

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0    # "br":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .restart local v0    # "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 140
    .local v6, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-nez v6, :cond_2

    .line 150
    if-eqz v0, :cond_0

    .line 152
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v5

    .line 193
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    return-object v7

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 133
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 145
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-eqz v0, :cond_3

    .line 152
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    move-object v4, v5

    .line 148
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 153
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 154
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 150
    if-eqz v0, :cond_4

    .line 152
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 157
    :cond_4
    :goto_4
    throw v7

    .line 153
    :catch_3
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_5
    :try_start_7
    const-string v8, "apm_cc"

    invoke-virtual {p0, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v4

    .line 169
    if-eqz v4, :cond_1

    .line 171
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0    # "br":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    .restart local v0    # "br":Ljava/io/BufferedReader;
    if-eqz v0, :cond_1

    .line 174
    const/4 v6, 0x0

    .line 175
    .restart local v6    # "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v6

    if-nez v6, :cond_7

    .line 185
    if-eqz v0, :cond_6

    .line 187
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 193
    :cond_6
    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 164
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 166
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 178
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_7
    :try_start_a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 180
    :catch_6
    move-exception v2

    .line 181
    .local v2, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 185
    if-eqz v0, :cond_1

    .line 187
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_2

    .line 188
    :catch_7
    move-exception v2

    .line 189
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 184
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    .line 185
    if-eqz v0, :cond_8

    .line 187
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 192
    :cond_8
    :goto_7
    throw v7

    .line 188
    :catch_8
    move-exception v2

    .line 189
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 188
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 189
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_6
.end method
