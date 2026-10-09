.class public Lcom/tencent/hawk/bridge/QccConfig;
.super Ljava/lang/Object;
.source "QccConfig.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final OPT_CPUCORES:I = 0x9

.field private static final OPT_CPUFREQ:I = 0x8

.field private static final OPT_EMULATOR:I = 0x1

.field private static final OPT_FILTER_GPU:I = 0x3

.field private static final OPT_FILTER_MANU:I = 0x5

.field private static final OPT_FILTER_MODEL:I = 0x2

.field private static final OPT_FILTER_SOC:I = 0x4

.field private static final OPT_GPU:I = 0xa

.field private static final OPT_RAM:I = 0x7

.field private static final OPT_RESOLUTION:I = 0x6


# instance fields
.field private andOpts:I

.field private classLevelNum:I

.field private classValueDefInts:[I

.field private classValueDefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emulatorQuality:I

.field private enableRegex:Z

.field private gpuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

.field private gpuVendorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/hawk/bridge/GpuVendorBase;",
            ">;"
        }
    .end annotation
.end field

.field private initCtxFlag:Z

.field private intParamsCpuCore:[I

.field private intParamsCpuFreq:[I

.field private intParamsRam:[I

.field private intParamsResolution:[I

.field private manuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

.field private modelFilter:Lcom/tencent/hawk/bridge/QCCFilter;

.field private socFilter:Lcom/tencent/hawk/bridge/QCCFilter;

.field private switchOpts:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->modelFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 44
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 45
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->socFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 46
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->manuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 47
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    .line 48
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefList:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    .line 50
    iput-boolean v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    .line 51
    iput v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->switchOpts:I

    .line 52
    iput v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->andOpts:I

    .line 53
    iput v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->emulatorQuality:I

    .line 54
    iput v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    .line 56
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsRam:[I

    .line 57
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsResolution:[I

    .line 58
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuFreq:[I

    .line 59
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuCore:[I

    .line 60
    iput-boolean v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->enableRegex:Z

    .line 64
    return-void
.end method

.method private getAndValue([II[II)I
    .locals 8
    .param p1, "intParams"    # [I
    .param p2, "currentValue"    # I
    .param p3, "classDefVlues"    # [I
    .param p4, "defLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 423
    if-nez p1, :cond_1

    .line 424
    aget v2, p3, v4

    .line 442
    :cond_0
    return v2

    .line 425
    :cond_1
    aget v2, p3, v4

    .line 426
    .local v2, "tempLevel":I
    const/4 v1, 0x1

    .line 427
    .local v1, "defArrayPos":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .local v0, "buffer":Ljava/lang/StringBuffer;
    array-length v6, p1

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_2

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 432
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_0

    aget v3, p1, v4

    .line 433
    .local v3, "thrsd":I
    if-lt p2, v3, :cond_0

    .line 436
    if-ge v1, p4, :cond_0

    .line 438
    aget v2, p3, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    .line 432
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 428
    .end local v3    # "thrsd":I
    :cond_2
    aget v3, p1, v5

    .line 429
    .restart local v3    # "thrsd":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private getFilterMatch(Lcom/tencent/hawk/bridge/QCCFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "qccFilter"    # Lcom/tencent/hawk/bridge/QCCFilter;
    .param p2, "localDeviceValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/QCCFilter;->getFilterMap()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez p2, :cond_2

    .line 363
    :cond_0
    const-string v9, "filter is null"

    invoke-static {v9}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    move-object v1, v8

    .line 416
    :cond_1
    :goto_0
    return-object v1

    .line 367
    :cond_2
    const/4 v1, 0x0

    .line 368
    .local v1, "filterTargetLevel":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/QCCFilter;->getFilterMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 407
    :goto_1
    if-nez v1, :cond_1

    move-object v1, v8

    .line 416
    goto :goto_0

    .line 368
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 369
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 370
    .local v4, "targetLevel":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 371
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 373
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v5, "tbuffer":Ljava/lang/StringBuffer;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 401
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "fv: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 402
    if-eqz v1, :cond_3

    goto :goto_1

    .line 374
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 375
    .local v6, "tempValue":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 377
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    iget-boolean v11, p0, Lcom/tencent/hawk/bridge/QccConfig;->enableRegex:Z

    if-eqz v11, :cond_9

    .line 379
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 380
    .local v3, "pattern":Ljava/util/regex/Pattern;
    if-nez v3, :cond_7

    .line 381
    const-string v11, "Pattern is null"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 384
    :cond_7
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 385
    .local v2, "matcher":Ljava/util/regex/Matcher;
    if-nez v2, :cond_8

    .line 386
    const-string v11, "Matcher is null"

    invoke-static {v11}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 389
    :cond_8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 390
    move-object v1, v4

    .line 391
    const-string v10, "regex matches"

    invoke-static {v10}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 395
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 396
    move-object v1, v4

    .line 397
    goto :goto_3
.end method

.method private initContinerByClsSz(I)V
    .locals 4
    .param p1, "nums"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    .line 68
    new-instance v0, Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/QCCFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->modelFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 69
    new-instance v0, Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/QCCFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 70
    new-instance v0, Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/QCCFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->socFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 71
    new-instance v0, Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/QCCFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->manuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    .line 73
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsRam:[I

    .line 74
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsResolution:[I

    .line 75
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuFreq:[I

    .line 76
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuCore:[I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefList:Ljava/util/List;

    .line 79
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    .line 82
    iget-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v1, "adreno"

    new-instance v2, Lcom/tencent/hawk/bridge/GpuVendorAdreno;

    const-string v3, "adreno"

    invoke-direct {v2, v3, p1}, Lcom/tencent/hawk/bridge/GpuVendorAdreno;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v1, "mali"

    new-instance v2, Lcom/tencent/hawk/bridge/GpuVendorMali;

    const-string v3, "mali"

    invoke-direct {v2, v3, p1}, Lcom/tencent/hawk/bridge/GpuVendorMali;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v1, "powervr"

    new-instance v2, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;

    const-string v3, "powervr"

    invoke-direct {v2, v3, p1}, Lcom/tencent/hawk/bridge/GpuVendorPowerVR;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string/jumbo v1, "tegra"

    new-instance v2, Lcom/tencent/hawk/bridge/GpuVendorTegra;

    const-string/jumbo v3, "tegra"

    invoke-direct {v2, v3, p1}, Lcom/tencent/hawk/bridge/GpuVendorTegra;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method private isAndEnable(I)Z
    .locals 3
    .param p1, "targetOpt"    # I

    .prologue
    const/4 v0, 0x1

    .line 342
    iget v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->andOpts:I

    add-int/lit8 v2, p1, -0x1

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmulator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "vendor"    # Ljava/lang/String;
    .param p1, "renderer"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 358
    :cond_1
    :goto_0
    return v0

    .line 355
    :cond_2
    const-string v2, "NA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 356
    goto :goto_0

    .line 357
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vender : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " renderer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 358
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkNative;->checkEmulator(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gt v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private isOptEnable(I)Z
    .locals 3
    .param p1, "targetOpt"    # I

    .prologue
    const/4 v0, 0x1

    .line 333
    iget v1, p0, Lcom/tencent/hawk/bridge/QccConfig;->switchOpts:I

    add-int/lit8 v2, p1, -0x1

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private judgleGPU(Ljava/lang/String;)I
    .locals 7
    .param p1, "gpuRenderer"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 446
    if-nez p1, :cond_0

    .line 447
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    .line 500
    :goto_0
    return v3

    .line 448
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "gpuName":Ljava/lang/String;
    const-string v3, "\\s|-|\\.|\\+|\\t|:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "tokens":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    goto :goto_0

    .line 458
    :cond_2
    aget-object v3, v2, v5

    const-string/jumbo v4, "vivante"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 459
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    goto :goto_0

    .line 460
    :cond_3
    aget-object v3, v2, v5

    const-string v4, "adreno"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 461
    const-string v3, "in check adreno"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 462
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v4, "adreno"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 463
    const-string v3, "contains null, return"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    goto :goto_0

    .line 467
    :cond_4
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v4, "adreno"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/GpuVendorBase;

    .line 468
    .local v0, "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v4, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/hawk/bridge/GpuVendorBase;->checkDeviceClassByGpu([Ljava/lang/String;[II)I

    move-result v3

    goto :goto_0

    .line 470
    .end local v0    # "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    :cond_5
    aget-object v3, v2, v5

    const-string v4, "powervr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    aget-object v3, v2, v5

    const-string v4, "imagination"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    aget-object v3, v2, v5

    const-string v4, "sgx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 471
    :cond_6
    const-string v3, "in check powervr"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 472
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v4, "powervr"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 473
    const-string v3, "powervr null, return"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 474
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    goto/16 :goto_0

    .line 477
    :cond_7
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v4, "powervr"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/GpuVendorBase;

    .line 478
    .restart local v0    # "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v4, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/hawk/bridge/GpuVendorBase;->checkDeviceClassByGpu([Ljava/lang/String;[II)I

    move-result v3

    goto/16 :goto_0

    .line 479
    .end local v0    # "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    :cond_8
    aget-object v3, v2, v5

    const-string v4, "arm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    aget-object v3, v2, v5

    const-string v4, "mali"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 480
    array-length v3, v2

    if-le v3, v6, :cond_b

    aget-object v3, v2, v6

    const-string v4, "mali"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 481
    :cond_9
    const-string v3, "in check mali"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v4, "mali"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 483
    const-string v3, "mali null, return"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 484
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    goto/16 :goto_0

    .line 487
    :cond_a
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string v4, "mali"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/GpuVendorBase;

    .line 488
    .restart local v0    # "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v4, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/hawk/bridge/GpuVendorBase;->checkDeviceClassByGpu([Ljava/lang/String;[II)I

    move-result v3

    goto/16 :goto_0

    .line 489
    .end local v0    # "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    :cond_b
    aget-object v3, v2, v5

    const-string/jumbo v4, "tegra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    aget-object v3, v2, v5

    const-string v4, "nvidia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 490
    :cond_c
    const-string v3, "in check tegra"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string/jumbo v4, "tegra"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 492
    const-string/jumbo v3, "tegra null, return"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    goto/16 :goto_0

    .line 496
    :cond_d
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    const-string/jumbo v4, "tegra"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/hawk/bridge/GpuVendorBase;

    .line 497
    .restart local v0    # "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v4, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/hawk/bridge/GpuVendorBase;->checkDeviceClassByGpu([Ljava/lang/String;[II)I

    move-result v3

    goto/16 :goto_0

    .line 500
    .end local v0    # "gb":Lcom/tencent/hawk/bridge/GpuVendorBase;
    :cond_e
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    aget v3, v3, v5

    goto/16 :goto_0
.end method

.method private parseGPU(Landroid/util/JsonReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 230
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 241
    return-void

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "gpuVendorName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpu vendor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuVendorMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/hawk/bridge/GpuVendorBase;

    .line 235
    .local v1, "vendorbase":Lcom/tencent/hawk/bridge/GpuVendorBase;
    iget v2, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/hawk/bridge/QccConfig;->parseGPUSeriesParams(Landroid/util/JsonReader;Ljava/lang/String;Lcom/tencent/hawk/bridge/GpuVendorBase;I)V

    goto :goto_0

    .line 237
    .end local v1    # "vendorbase":Lcom/tencent/hawk/bridge/GpuVendorBase;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "gpuvendror not exists"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseGPUSeriesParams(Landroid/util/JsonReader;Ljava/lang/String;Lcom/tencent/hawk/bridge/GpuVendorBase;I)V
    .locals 5
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "gpuVendorName"    # Ljava/lang/String;
    .param p3, "gpuVendor"    # Lcom/tencent/hawk/bridge/GpuVendorBase;
    .param p4, "classLevelNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v1, "seriesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 266
    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "name":Ljava/lang/String;
    const-string v3, "series"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1

    .line 250
    const-string v3, "read series"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1, v1}, Lcom/tencent/hawk/bridge/QccConfig;->readStringArray(Landroid/util/JsonReader;Ljava/util/List;)V

    .line 252
    invoke-virtual {p3, v1, p4}, Lcom/tencent/hawk/bridge/GpuVendorBase;->initSeries(Ljava/util/List;I)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_3

    .line 254
    iget-object v3, p3, Lcom/tencent/hawk/bridge/GpuVendorBase;->seriesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p3, Lcom/tencent/hawk/bridge/GpuVendorBase;->seriesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;

    .line 256
    .local v2, "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    invoke-virtual {v2}, Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;->getParamValue()[I

    move-result-object v3

    add-int/lit8 v4, p4, -0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/tencent/hawk/bridge/QccConfig;->readIntArray(Landroid/util/JsonReader;[II)V

    goto :goto_0

    .line 258
    .end local v2    # "sp":Lcom/tencent/hawk/bridge/GpuVendorBase$SeriesParam;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "bad series"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gpu skip values: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0
.end method

.method private readFilterInfo(Landroid/util/JsonReader;Lcom/tencent/hawk/bridge/QCCFilter;)V
    .locals 6
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "sccFilter"    # Lcom/tencent/hawk/bridge/QCCFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 319
    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "keyName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filter-key-name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2, v1}, Lcom/tencent/hawk/bridge/QCCFilter;->getTargetCategoryFilter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 310
    .local v2, "sccList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 311
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bad category :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, "clssdef":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_3

    .line 314
    invoke-direct {p0, p1, v2}, Lcom/tencent/hawk/bridge/QccConfig;->readStringArray(Landroid/util/JsonReader;Ljava/util/List;)V

    goto :goto_0
.end method

.method private readIntArray(Landroid/util/JsonReader;[II)V
    .locals 8
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "intArray"    # [I
    .param p3, "nums"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "pos":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "intarray: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    array-length v5, p2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_2

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 287
    return-void

    .line 272
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    if-ge v1, p3, :cond_1

    .line 273
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    aput v4, p2, v1

    move v1, v2

    .line 274
    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    goto :goto_0

    .line 282
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    aget v3, p2, v4

    .line 283
    .local v3, "temp":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static readLocalGpuName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 640
    const/4 v4, 0x0

    .line 641
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 643
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/local/tmp/__apm_gpu"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 645
    const-string v7, "===========FOUND local gpu in TMP=========="

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 647
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "fis":Ljava/io/FileInputStream;
    const-string v7, "/data/local/tmp/__apm_gpu"

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0    # "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 656
    .restart local v0    # "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 657
    .local v5, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-nez v5, :cond_2

    .line 667
    if-eqz v0, :cond_0

    .line 669
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 675
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 677
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v6

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 650
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 660
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 662
    :catch_1
    move-exception v2

    .line 663
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 664
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 667
    if-eqz v0, :cond_1

    .line 669
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 670
    :catch_2
    move-exception v2

    .line 671
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 672
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 666
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 667
    if-eqz v0, :cond_3

    .line 669
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 674
    :cond_3
    :goto_3
    throw v6

    .line 670
    :catch_3
    move-exception v2

    .line 671
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 672
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 670
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 671
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 672
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 677
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "line":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/String;

    const-string v7, "adreno (tm) 403"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private readStringArray(Landroid/util/JsonReader;Ljava/util/List;)V
    .locals 4
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "filterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "strarray: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 302
    return-void

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public judgeDcls(Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;)I
    .locals 11
    .param p1, "param"    # Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    .prologue
    .line 505
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_1

    .line 506
    const-string v6, "ctx not initialized, return"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x0

    .line 635
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_2

    .line 511
    const-string v6, "current sdk level under honeyComb, return"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    goto :goto_0

    .line 514
    :cond_2
    iget v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->switchOpts:I

    if-nez v6, :cond_3

    .line 515
    const-string/jumbo v6, "switch opts is 0, return"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :cond_3
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->isEmulator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 521
    const-string v6, "emulator, return default"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 522
    iget v0, p0, Lcom/tencent/hawk/bridge/QccConfig;->emulatorQuality:I

    goto :goto_0

    .line 525
    :cond_4
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    if-nez v6, :cond_5

    .line 526
    const-string v6, "default class value is null"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    :cond_5
    const/4 v3, 0x0

    .line 531
    .local v3, "filterTargetLevel":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 532
    const-string/jumbo v6, "try to match filter model"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 533
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->modelFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    iget-object v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->model:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->getFilterMatch(Lcom/tencent/hawk/bridge/QCCFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    if-eqz v3, :cond_6

    .line 536
    :try_start_0
    const-string v6, "filter model match"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 537
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 544
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 545
    const-string/jumbo v6, "try to match filter gpu"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 546
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    iget-object v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->getFilterMatch(Lcom/tencent/hawk/bridge/QCCFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    if-eqz v3, :cond_7

    .line 549
    :try_start_1
    const-string v6, "filter gpu match"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 550
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 551
    :catch_1
    move-exception v2

    .line 552
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 557
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 558
    const-string/jumbo v6, "try to match filter soc"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 559
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->socFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    iget-object v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->getFilterMatch(Lcom/tencent/hawk/bridge/QCCFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    if-eqz v3, :cond_8

    .line 562
    :try_start_2
    const-string v6, "filter soc match"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto/16 :goto_0

    .line 564
    :catch_2
    move-exception v2

    .line 565
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 570
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 571
    const-string/jumbo v6, "try to match filter manu"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 572
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->manuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    iget-object v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->manu:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->getFilterMatch(Lcom/tencent/hawk/bridge/QCCFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 573
    if-eqz v3, :cond_9

    .line 575
    :try_start_3
    const-string v6, "filter manu match"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 576
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    goto/16 :goto_0

    .line 577
    :catch_3
    move-exception v2

    .line 578
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 583
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "begin and values calculation, levelnums: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 584
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 585
    .local v1, "defsbuffer":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v8, :cond_f

    .line 589
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "def values : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 590
    const/16 v0, 0x63

    .line 591
    .local v0, "calTargetLevel":I
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isAndEnable(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 592
    const-string v6, "in OPT_RESOLUTION"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 593
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsResolution:[I

    iget v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->resolution:I

    iget-object v8, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/tencent/hawk/bridge/QccConfig;->getAndValue([II[II)I

    move-result v5

    .line 594
    .local v5, "tempCal":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRE OPT_RESOLUTION: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 595
    if-ge v0, v5, :cond_10

    .line 596
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OPT_RESOLUTION: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 599
    .end local v5    # "tempCal":I
    :cond_a
    const/4 v6, 0x7

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x7

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isAndEnable(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 600
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "in OPT_RAM "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->ram:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 601
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsRam:[I

    iget v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->ram:I

    iget-object v8, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/tencent/hawk/bridge/QccConfig;->getAndValue([II[II)I

    move-result v5

    .line 602
    .restart local v5    # "tempCal":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRE OPT_RAM: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 603
    if-ge v0, v5, :cond_11

    .line 604
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OPT_RAM: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 607
    .end local v5    # "tempCal":I
    :cond_b
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isAndEnable(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 608
    const-string v6, "in OPT_CPUFREQ"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 609
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuFreq:[I

    iget v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuFreq:I

    iget-object v8, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/tencent/hawk/bridge/QccConfig;->getAndValue([II[II)I

    move-result v5

    .line 610
    .restart local v5    # "tempCal":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRE OPT_CPUFREQ: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 611
    if-ge v0, v5, :cond_12

    .line 612
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OPT_CPUFREQ: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 615
    .end local v5    # "tempCal":I
    :cond_c
    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isAndEnable(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 616
    const-string v6, "in OPT_CPUCORES"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 617
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuCore:[I

    iget v7, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuCore:I

    iget-object v8, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/tencent/hawk/bridge/QccConfig;->getAndValue([II[II)I

    move-result v5

    .line 618
    .restart local v5    # "tempCal":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRE OPT_CPUCORES: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 619
    if-ge v0, v5, :cond_13

    .line 620
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OPT_CPUCORES: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 623
    .end local v5    # "tempCal":I
    :cond_d
    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isOptEnable(I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->isAndEnable(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 624
    const-string v6, "in OPT_GPU"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 625
    iget-object v6, p1, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->judgleGPU(Ljava/lang/String;)I

    move-result v5

    .line 626
    .restart local v5    # "tempCal":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRE OPT_GPU: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 627
    if-ge v0, v5, :cond_14

    .line 628
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OPT_GPU: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 631
    .end local v5    # "tempCal":I
    :cond_e
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-le v0, v6, :cond_0

    .line 632
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    const/4 v7, 0x0

    aget v0, v6, v7

    goto/16 :goto_0

    .line 585
    .end local v0    # "calTargetLevel":I
    :cond_f
    aget v4, v7, v6

    .line 586
    .local v4, "temp":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .end local v4    # "temp":I
    .restart local v0    # "calTargetLevel":I
    .restart local v5    # "tempCal":I
    :cond_10
    move v0, v5

    .line 595
    goto/16 :goto_2

    :cond_11
    move v0, v5

    .line 603
    goto/16 :goto_3

    :cond_12
    move v0, v5

    .line 611
    goto/16 :goto_4

    :cond_13
    move v0, v5

    .line 619
    goto/16 :goto_5

    :cond_14
    move v0, v5

    .line 627
    goto :goto_6
.end method

.method public parseQccConfig(Landroid/util/JsonReader;)Z
    .locals 13
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3f5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 92
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 203
    const-string v6, "parse qcc finished"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-eqz v6, :cond_1

    move v4, v5

    .line 224
    :cond_1
    :goto_1
    return v4

    .line 93
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "keyName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parse: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 95
    const-string v6, "classLevelNum"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    .line 97
    iget v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-direct {p0, v6}, Lcom/tencent/hawk/bridge/QccConfig;->initContinerByClsSz(I)V

    .line 98
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    .end local v3    # "keyName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception occured: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "errorMsg":Ljava/lang/String;
    if-nez v1, :cond_22

    .line 210
    const-string v5, "NA"

    invoke-static {v12, v5}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    goto :goto_1

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .restart local v3    # "keyName":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v6, "classLevelValues"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v6, v7, :cond_6

    .line 101
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_4

    .line 102
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_4
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 107
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 109
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    .line 110
    iget v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    .line 111
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    iget v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    invoke-direct {p0, p1, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->readIntArray(Landroid/util/JsonReader;[II)V

    .line 112
    iget-object v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefInts:[I

    array-length v8, v7

    move v6, v4

    :goto_2
    if-ge v6, v8, :cond_0

    aget v2, v7, v6

    .line 113
    .local v2, "k":I
    iget-object v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->classValueDefList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->modelFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-virtual {v9}, Lcom/tencent/hawk/bridge/QCCFilter;->getFilterMap()Ljava/util/Map;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-virtual {v9}, Lcom/tencent/hawk/bridge/QCCFilter;->getFilterMap()Ljava/util/Map;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->socFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-virtual {v9}, Lcom/tencent/hawk/bridge/QCCFilter;->getFilterMap()Ljava/util/Map;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v9, p0, Lcom/tencent/hawk/bridge/QccConfig;->manuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-virtual {v9}, Lcom/tencent/hawk/bridge/QCCFilter;->getFilterMap()Ljava/util/Map;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 119
    .end local v2    # "k":I
    :cond_6
    const-string/jumbo v6, "switchops"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 120
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_7

    .line 121
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->switchOpts:I

    goto/16 :goto_0

    .line 126
    :cond_8
    const-string v6, "andopts"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 127
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_9

    .line 128
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 131
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->andOpts:I

    goto/16 :goto_0

    .line 132
    :cond_a
    const-string v6, "emulator"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 133
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_b

    .line 134
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->emulatorQuality:I

    goto/16 :goto_0

    .line 138
    :cond_c
    const-string v6, "regex"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 139
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_d

    .line 140
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :cond_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    if-ne v6, v5, :cond_e

    move v6, v5

    :goto_3
    iput-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->enableRegex:Z

    goto/16 :goto_0

    :cond_e
    move v6, v4

    goto :goto_3

    .line 144
    :cond_f
    const-string v6, "filter-model"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 145
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_10

    .line 146
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :cond_10
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->modelFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {p0, p1, v6}, Lcom/tencent/hawk/bridge/QccConfig;->readFilterInfo(Landroid/util/JsonReader;Lcom/tencent/hawk/bridge/QCCFilter;)V

    goto/16 :goto_0

    .line 150
    :cond_11
    const-string v6, "filter-gpu"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 151
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_12

    .line 152
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    :cond_12
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->gpuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {p0, p1, v6}, Lcom/tencent/hawk/bridge/QccConfig;->readFilterInfo(Landroid/util/JsonReader;Lcom/tencent/hawk/bridge/QCCFilter;)V

    goto/16 :goto_0

    .line 156
    :cond_13
    const-string v6, "filter-soc"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 157
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_14

    .line 158
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 161
    :cond_14
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->socFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {p0, p1, v6}, Lcom/tencent/hawk/bridge/QccConfig;->readFilterInfo(Landroid/util/JsonReader;Lcom/tencent/hawk/bridge/QCCFilter;)V

    goto/16 :goto_0

    .line 162
    :cond_15
    const-string v6, "filter-manu"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 163
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_16

    .line 164
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    :cond_16
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->manuFilter:Lcom/tencent/hawk/bridge/QCCFilter;

    invoke-direct {p0, p1, v6}, Lcom/tencent/hawk/bridge/QccConfig;->readFilterInfo(Landroid/util/JsonReader;Lcom/tencent/hawk/bridge/QCCFilter;)V

    goto/16 :goto_0

    .line 168
    :cond_17
    const-string v6, "resolution"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v6, v7, :cond_19

    .line 169
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_18

    .line 170
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :cond_18
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsResolution:[I

    iget v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->readIntArray(Landroid/util/JsonReader;[II)V

    goto/16 :goto_0

    .line 174
    :cond_19
    const-string v6, "ram"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v6, v7, :cond_1b

    .line 175
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_1a

    .line 176
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    :cond_1a
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsRam:[I

    iget v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->readIntArray(Landroid/util/JsonReader;[II)V

    goto/16 :goto_0

    .line 180
    :cond_1b
    const-string v6, "cpufreq"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v6, v7, :cond_1d

    .line 181
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_1c

    .line 182
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    :cond_1c
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuFreq:[I

    iget v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->readIntArray(Landroid/util/JsonReader;[II)V

    goto/16 :goto_0

    .line 186
    :cond_1d
    const-string v6, "cpucores"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v6, v7, :cond_1f

    .line 187
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_1e

    .line 188
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :cond_1e
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->intParamsCpuCore:[I

    iget v7, p0, Lcom/tencent/hawk/bridge/QccConfig;->classLevelNum:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/tencent/hawk/bridge/QccConfig;->readIntArray(Landroid/util/JsonReader;[II)V

    goto/16 :goto_0

    .line 192
    :cond_1f
    const-string v6, "gpu_vendor"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 193
    iget-boolean v6, p0, Lcom/tencent/hawk/bridge/QccConfig;->initCtxFlag:Z

    if-nez v6, :cond_20

    .line 194
    const-string v5, "ctx not initialized,return"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :cond_20
    invoke-direct {p0, p1}, Lcom/tencent/hawk/bridge/QccConfig;->parseGPU(Landroid/util/JsonReader;)V

    goto/16 :goto_0

    .line 199
    :cond_21
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "skip value : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 212
    .end local v3    # "keyName":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "errorMsg":Ljava/lang/String;
    :cond_22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_23

    .line 213
    const/16 v5, 0x1f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 215
    :cond_23
    invoke-static {v12, v1}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    goto/16 :goto_1
.end method
