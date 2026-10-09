.class public Lcom/netease/dwrg/MagtMgr;
.super Ljava/lang/Object;
.source "MagtMgr.java"


# static fields
.field private static final MAGT_APPCODE:I = 0x272e

.field private static final MAGT_LICENSE_B64:Ljava/lang/String; = "QUxAewEAAAAUAQAAur0CGAwBAAAAACcuAAAAAAAA//+qIa7ts2Kez1o9UqXpzcYaIE1DWZD/fcm3F8Kq91C2197XbBDexPF+CVvxAs8ZJy4Ol/7j8B21JfWiXjFHRRm4lwZy5+HmvP7Ged2S9ixb7RE0rmtr/R7hh3Yzb2/sl9xT7UK83ILiYG9hNZpwSx1FKslHqJ1cFmU9UHzdvYlGriSFwBXt+naCGgDs5g1OZ3pxdkxxong7VqrwQ/UmG4wboz9RbC4eLN1fZHqHV+gF386Mj/moz7BVsMrc2nCpGpT6i1ScvnQ7ZBo9uiq+dxDMxCW6ilurvRWQX6pJJ1xezftCY7zUCNsNpReGt5TsCSrN8KsGSK+MpBhgmEMNrxt+4BPkvmlmhmFRnY2LHz+ukw=="

.field private static final MAGT_LICENSE_BYTES:[B

.field private static final NEOX_MAGT_LOG_TAG:Ljava/lang/String; = "NEOX-MAGT"


# instance fields
.field private m_init_ret_code:I

.field private final m_method_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "QUxAewEAAAAUAQAAur0CGAwBAAAAACcuAAAAAAAA//+qIa7ts2Kez1o9UqXpzcYaIE1DWZD/fcm3F8Kq91C2197XbBDexPF+CVvxAs8ZJy4Ol/7j8B21JfWiXjFHRRm4lwZy5+HmvP7Ged2S9ixb7RE0rmtr/R7hh3Yzb2/sl9xT7UK83ILiYG9hNZpwSx1FKslHqJ1cFmU9UHzdvYlGriSFwBXt+naCGgDs5g1OZ3pxdkxxong7VqrwQ/UmG4wboz9RbC4eLN1fZHqHV+gF386Mj/moz7BVsMrc2nCpGpT6i1ScvnQ7ZBo9uiq+dxDMxCW6ilurvRWQX6pJJ1xezftCY7zUCNsNpReGt5TsCSrN8KsGSK+MpBhgmEMNrxt+4BPkvmlmhmFRnY2LHz+ukw=="

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lcom/netease/dwrg/MagtMgr;->MAGT_LICENSE_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/netease/dwrg/MagtMgr;->m_init_ret_code:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/MagtMgr;->m_method_cache:Ljava/util/HashMap;

    return-void
.end method

.method private createJsonObjFromReport(Lcom/mediatek/magt/PerfReport;)Lorg/json/JSONObject;
    .locals 17

    move-object/from16 v0, p1

    .line 388
    iget v1, v0, Lcom/mediatek/magt/PerfReport;->cpuFrameTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/mediatek/magt/PerfReport;->cpuLoadIndex:I

    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/magt/PerfReport;->cpuPerfIndex:I

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/magt/PerfReport;->cpuStatus:I

    .line 391
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/mediatek/magt/PerfReport;->curTemperature:I

    .line 392
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/magt/PerfReport;->frameId:I

    .line 393
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Lcom/mediatek/magt/PerfReport;->gpuFrameTime:I

    .line 394
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Lcom/mediatek/magt/PerfReport;->gpuLoadIndex:I

    .line 395
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lcom/mediatek/magt/PerfReport;->gpuPerfIndex:I

    .line 396
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/mediatek/magt/PerfReport;->gpuStatus:I

    .line 397
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Lcom/mediatek/magt/PerfReport;->platformSupport:I

    .line 398
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lcom/mediatek/magt/PerfReport;->targetFps:I

    .line 399
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, v0, Lcom/mediatek/magt/PerfReport;->thermalStatus:I

    .line 400
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v0, v0, Lcom/mediatek/magt/PerfReport;->thermalTempBudget:I

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v14, 0x1c

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "cpuFrameTime"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const-string v1, "cpuLoadIndex"

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v1, 0x3

    aput-object v2, v14, v1

    const-string v1, "cpuPerfIndex"

    const/4 v2, 0x4

    aput-object v1, v14, v2

    const/4 v1, 0x5

    aput-object v3, v14, v1

    const-string v1, "cpuStatus"

    const/4 v2, 0x6

    aput-object v1, v14, v2

    const/4 v1, 0x7

    aput-object v4, v14, v1

    const-string v1, "curTemperature"

    const/16 v2, 0x8

    aput-object v1, v14, v2

    const/16 v1, 0x9

    aput-object v5, v14, v1

    const-string v1, "frameId"

    const/16 v2, 0xa

    aput-object v1, v14, v2

    const/16 v1, 0xb

    aput-object v6, v14, v1

    const-string v1, "gpuFrameTime"

    const/16 v2, 0xc

    aput-object v1, v14, v2

    const/16 v1, 0xd

    aput-object v7, v14, v1

    const-string v1, "gpuLoadIndex"

    const/16 v2, 0xe

    aput-object v1, v14, v2

    const/16 v1, 0xf

    aput-object v8, v14, v1

    const-string v1, "gpuPerfIndex"

    const/16 v2, 0x10

    aput-object v1, v14, v2

    const/16 v1, 0x11

    aput-object v9, v14, v1

    const-string v1, "gpuStatus"

    const/16 v2, 0x12

    aput-object v1, v14, v2

    const/16 v1, 0x13

    aput-object v10, v14, v1

    const-string v1, "platformSupport"

    const/16 v2, 0x14

    aput-object v1, v14, v2

    const/16 v1, 0x15

    aput-object v11, v14, v1

    const-string v1, "targetFps"

    const/16 v2, 0x16

    aput-object v1, v14, v2

    const/16 v1, 0x17

    aput-object v12, v14, v1

    const-string v1, "thermalStatus"

    const/16 v2, 0x18

    aput-object v1, v14, v2

    const/16 v1, 0x19

    aput-object v13, v14, v1

    const-string v1, "thermalTempBudget"

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    const/16 v1, 0x1b

    aput-object v0, v14, v1

    .line 388
    invoke-static {v14}, Lcom/netease/neox/JSONUtils;->createJsonObj([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private createJsonObjFromSystemIndex(Lcom/mediatek/magt/SystemIndex;)Lorg/json/JSONObject;
    .locals 5

    .line 353
    iget v0, p1, Lcom/mediatek/magt/SystemIndex;->indexId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/magt/SystemIndex;->value0:I

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/mediatek/magt/SystemIndex;->value1:I

    .line 355
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "indexId"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "value0"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v0, "value1"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const/4 v0, 0x5

    aput-object p1, v2, v0

    .line 353
    invoke-static {v2}, Lcom/netease/neox/JSONUtils;->createJsonObj([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private isInit()Z
    .locals 1

    .line 122
    iget v0, p0, Lcom/netease/dwrg/MagtMgr;->m_init_ret_code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseGameConfigsFromJson(Lorg/json/JSONObject;)[Lcom/mediatek/magt/GameConfig;
    .locals 7

    .line 138
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[parseGameConfigsFromJson] cnt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NEOX-MAGT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 142
    :cond_0
    new-array v0, v0, [Lcom/mediatek/magt/GameConfig;

    .line 144
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 146
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 148
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 150
    new-instance v6, Lcom/mediatek/magt/GameConfig;

    invoke-direct {v6}, Lcom/mediatek/magt/GameConfig;-><init>()V

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lcom/mediatek/magt/GameConfig;->configId:I

    .line 152
    iput v5, v6, Lcom/mediatek/magt/GameConfig;->value:I

    add-int/lit8 v4, v3, 0x1

    .line 153
    aput-object v6, v0, v3

    move v3, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private registerWorkloadAdvice()I
    .locals 3

    .line 405
    new-instance v0, Lcom/netease/dwrg/MagtMgr$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/MagtMgr$$ExternalSyntheticLambda0;-><init>(Lcom/netease/dwrg/MagtMgr;)V

    .line 413
    invoke-static {v0}, Lcom/mediatek/magt/MAGTServiceAPI;->registerWorkloadAdvice(Lcom/mediatek/magt/MAGTServiceAPI$WorkloadAdviceCallback;)I

    move-result v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerWorkloadAdvice return code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NEOX-MAGT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public api_beginNamedSection(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 421
    const-string v0, "sectionName"

    const-string v1, "unknown-begin"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->beginNamedSection(Ljava/lang/String;)V

    .line 423
    const-string p1, "{\"retCode\": 0}"

    return-object p1
.end method

.method public api_beginSection(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 439
    const-string v0, "nameId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 440
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->beginSection(I)V

    .line 441
    const-string p1, "{\"retCode\": 0}"

    return-object p1
.end method

.method public api_boostCPU(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 265
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 266
    const-string v2, "duration"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 267
    const-string v3, "flag"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 268
    invoke-static {v0, v2, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->boostCPU(III)I

    move-result p1

    .line 269
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_boostGPU(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 284
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 285
    const-string v2, "duration"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 286
    const-string v3, "flag"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 287
    invoke-static {v0, v2, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->boostGPU(III)I

    move-result p1

    .line 288
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_dynaBoostGPU(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 305
    const-string v0, "enable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 306
    const-string v2, "flag"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 307
    const-string v3, "render_tid"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 308
    invoke-static {v0, v2, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->dynaBoostGPU(III)I

    move-result p1

    .line 309
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_endSection(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 427
    invoke-static {}, Lcom/mediatek/magt/MAGTServiceAPI;->endSection()V

    .line 428
    const-string p1, "{\"retCode\": 0}"

    return-object p1
.end method

.method public api_getDeviceSupportVersion(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    .line 99
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->queryServiceVersion(I)I

    move-result v0

    .line 100
    invoke-static {v0}, Lcom/mediatek/magt/MAGTVersion;->FromCode(I)Lcom/mediatek/magt/MAGTVersion;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/mediatek/magt/MAGTVersion;->ToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "deviceSupportVersion"

    aput-object v2, v1, p1

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_getOption(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 237
    const-string v0, "optionId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 238
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->getOption(I)I

    move-result p1

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_getPerfReport(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .line 363
    const-string v0, "indexCount"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x5

    .line 364
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 365
    new-array v0, p1, [Lcom/mediatek/magt/SystemIndex;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 367
    new-instance v4, Lcom/mediatek/magt/SystemIndex;

    invoke-direct {v4}, Lcom/mediatek/magt/SystemIndex;-><init>()V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    :cond_0
    new-instance v3, Lcom/mediatek/magt/PerfReport;

    invoke-direct {v3}, Lcom/mediatek/magt/PerfReport;-><init>()V

    .line 370
    invoke-static {v3, v0, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->getPerfReport(Lcom/mediatek/magt/PerfReport;[Lcom/mediatek/magt/SystemIndex;I)I

    move-result v4

    .line 372
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p1, :cond_1

    .line 373
    aget-object v7, v0, v6

    .line 374
    invoke-direct {p0, v7}, Lcom/netease/dwrg/MagtMgr;->createJsonObjFromSystemIndex(Lcom/mediatek/magt/SystemIndex;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 376
    :cond_1
    invoke-direct {p0, v3}, Lcom/netease/dwrg/MagtMgr;->createJsonObjFromReport(Lcom/mediatek/magt/PerfReport;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "report"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const-string p1, "systemIndices"

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object v5, v0, p1

    .line 375
    invoke-static {v4, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_getSdkVersion(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 94
    sget-object p1, Lcom/mediatek/magt/MAGTVersion;->SDKVersion:Lcom/mediatek/magt/MAGTVersion;

    invoke-virtual {p1}, Lcom/mediatek/magt/MAGTVersion;->ToString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "sdkVersion"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_getWorkloadAdvice(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 382
    new-instance p1, Lcom/mediatek/magt/PerfReport;

    invoke-direct {p1}, Lcom/mediatek/magt/PerfReport;-><init>()V

    .line 383
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->getWorkloadAdvice(Lcom/mediatek/magt/PerfReport;)I

    move-result v0

    .line 384
    invoke-direct {p0, p1}, Lcom/netease/dwrg/MagtMgr;->createJsonObjFromReport(Lcom/mediatek/magt/PerfReport;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "report"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_init(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .line 108
    const-string v0, "targetFps"

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    const-string v1, "renderThreadTid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 110
    iget v1, p0, Lcom/netease/dwrg/MagtMgr;->m_init_ret_code:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 111
    invoke-static {v2}, Lcom/mediatek/magt/MAGTServiceAPI;->queryServiceVersion(I)I

    move-result v1

    .line 112
    invoke-static {v1}, Lcom/mediatek/magt/MAGTVersion;->FromCode(I)Lcom/mediatek/magt/MAGTVersion;

    move-result-object v1

    .line 113
    iget v3, v1, Lcom/mediatek/magt/MAGTVersion;->major:I

    sget-object v4, Lcom/mediatek/magt/MAGTVersion;->SDKVersion:Lcom/mediatek/magt/MAGTVersion;

    iget v4, v4, Lcom/mediatek/magt/MAGTVersion;->major:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Version] DeviceSupport:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mediatek/magt/MAGTVersion;->ToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Sdk:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/magt/MAGTVersion;->SDKVersion:Lcom/mediatek/magt/MAGTVersion;

    invoke-virtual {v1}, Lcom/mediatek/magt/MAGTVersion;->ToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", UseApi:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v2

    const-string v1, "%d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "NEOX-MAGT"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x272e

    .line 116
    sget-object v7, Lcom/netease/dwrg/MagtMgr;->MAGT_LICENSE_BYTES:[B

    invoke-static {v3, v4, v0, p1, v7}, Lcom/mediatek/magt/MAGTServiceAPI;->init(IIII[B)I

    move-result p1

    iput p1, p0, Lcom/netease/dwrg/MagtMgr;->m_init_ret_code:I

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[init] retCode: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/netease/dwrg/MagtMgr;->m_init_ret_code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget p1, p0, Lcom/netease/dwrg/MagtMgr;->m_init_ret_code:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_initGameConfig(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Lcom/netease/dwrg/MagtMgr;->parseGameConfigsFromJson(Lorg/json/JSONObject;)[Lcom/mediatek/magt/GameConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 162
    const-string p1, "input no config"

    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/mediatek/magt/MAGTServiceAPI;->initGameConfig([Lcom/mediatek/magt/GameConfig;I)I

    move-result p1

    const/4 v0, 0x0

    .line 165
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_predictWorkload(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 315
    const-string v0, "cpuLoadScale"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 316
    const-string v2, "gpuLoadScale"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 317
    const-string v2, "gameConfigChange"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 318
    invoke-static {v0, v1, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->predictWorkload(III)I

    move-result p1

    .line 319
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_queryBoostCPU(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .line 273
    new-instance p1, Lcom/mediatek/magt/BoostRequest;

    invoke-direct {p1}, Lcom/mediatek/magt/BoostRequest;-><init>()V

    .line 274
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->queryBoostCPU(Lcom/mediatek/magt/BoostRequest;)I

    move-result v0

    .line 275
    iget v1, p1, Lcom/mediatek/magt/BoostRequest;->duration:I

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/magt/BoostRequest;->flag:I

    .line 277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/magt/BoostRequest;->level:I

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/mediatek/magt/BoostRequest;->mode:I

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p1, Lcom/mediatek/magt/BoostRequest;->target:I

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "duration"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v1, "flag"

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/4 v1, 0x3

    aput-object v2, v5, v1

    const-string v1, "level"

    const/4 v2, 0x4

    aput-object v1, v5, v2

    const/4 v1, 0x5

    aput-object v3, v5, v1

    const-string v1, "mode"

    const/4 v2, 0x6

    aput-object v1, v5, v2

    const/4 v1, 0x7

    aput-object v4, v5, v1

    const-string v1, "target"

    const/16 v2, 0x8

    aput-object v1, v5, v2

    const/16 v1, 0x9

    aput-object p1, v5, v1

    .line 275
    invoke-static {v0, v5}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_queryBoostGPU(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .line 292
    new-instance p1, Lcom/mediatek/magt/BoostRequest;

    invoke-direct {p1}, Lcom/mediatek/magt/BoostRequest;-><init>()V

    .line 293
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->queryBoostGPU(Lcom/mediatek/magt/BoostRequest;)I

    move-result v0

    .line 294
    iget v1, p1, Lcom/mediatek/magt/BoostRequest;->duration:I

    .line 295
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/magt/BoostRequest;->flag:I

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/magt/BoostRequest;->level:I

    .line 297
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/mediatek/magt/BoostRequest;->mode:I

    .line 298
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p1, Lcom/mediatek/magt/BoostRequest;->target:I

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "duration"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v1, "flag"

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/4 v1, 0x3

    aput-object v2, v5, v1

    const-string v1, "level"

    const/4 v2, 0x4

    aput-object v1, v5, v2

    const/4 v1, 0x5

    aput-object v3, v5, v1

    const-string v1, "mode"

    const/4 v2, 0x6

    aput-object v1, v5, v2

    const/4 v1, 0x7

    aput-object v4, v5, v1

    const-string v1, "target"

    const/16 v2, 0x8

    aput-object v1, v5, v2

    const/16 v1, 0x9

    aput-object p1, v5, v1

    .line 294
    invoke-static {v0, v5}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_querySystemIndex(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 325
    const-string v0, "indexId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 326
    const-string v2, "arg"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 327
    new-instance v2, Lcom/mediatek/magt/SystemIndex;

    invoke-direct {v2}, Lcom/mediatek/magt/SystemIndex;-><init>()V

    .line 328
    invoke-static {v0, p1, v2}, Lcom/mediatek/magt/MAGTServiceAPI;->querySystemIndex(IILcom/mediatek/magt/SystemIndex;)I

    move-result p1

    if-nez p1, :cond_0

    .line 330
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 331
    invoke-direct {p0, v2}, Lcom/netease/dwrg/MagtMgr;->createJsonObjFromSystemIndex(Lcom/mediatek/magt/SystemIndex;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v2, 0x2

    .line 332
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "systemIndices"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {p1, v2}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 334
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_querySystemIndices(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    .line 338
    const-string v0, "indexId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 339
    const-string v2, "arg"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 340
    const-string v3, "indexCount"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 341
    new-array v3, p1, [Lcom/mediatek/magt/SystemIndex;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_0

    .line 343
    new-instance v6, Lcom/mediatek/magt/SystemIndex;

    invoke-direct {v6}, Lcom/mediatek/magt/SystemIndex;-><init>()V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {v0, v2, v3, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->querySystemIndices(II[Lcom/mediatek/magt/SystemIndex;I)I

    move-result v0

    .line 346
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_1

    .line 348
    aget-object v6, v3, v5

    invoke-direct {p0, v6}, Lcom/netease/dwrg/MagtMgr;->createJsonObjFromSystemIndex(Lcom/mediatek/magt/SystemIndex;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    .line 349
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "systemIndices"

    aput-object v3, p1, v1

    aput-object v2, p1, v4

    invoke-static {v0, p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_registerCriticalThreads(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    .line 188
    const-string v0, "pThreadData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 190
    const-string p1, "input pThreadData is null"

    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Lcom/mediatek/magt/ThreadLoad;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 194
    new-instance v4, Lcom/mediatek/magt/ThreadLoad;

    invoke-direct {v4}, Lcom/mediatek/magt/ThreadLoad;-><init>()V

    aput-object v4, v1, v3

    .line 196
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 197
    aget-object v5, v1, v3

    const-string v6, "preemptTime"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/mediatek/magt/ThreadLoad;->preemptTime:I

    .line 198
    aget-object v5, v1, v3

    const-string v6, "priority"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/mediatek/magt/ThreadLoad;->priority:I

    .line 199
    aget-object v5, v1, v3

    const-string v6, "tid"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/mediatek/magt/ThreadLoad;->tid:I

    .line 200
    aget-object v5, v1, v3

    const-string v6, "tidGroup"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v5, Lcom/mediatek/magt/ThreadLoad;->tidGroup:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {v1, v0}, Lcom/mediatek/magt/MAGTServiceAPI;->registerCriticalThreads([Lcom/mediatek/magt/ThreadLoad;I)I

    move-result p1

    .line 203
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_registerName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 432
    const-string v0, "nameId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 433
    const-string v1, "sectionName"

    const-string v2, "unknown-register"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 434
    invoke-static {v0, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->registerName(ILjava/lang/String;)V

    .line 435
    const-string p1, "{\"retCode\": 0}"

    return-object p1
.end method

.method public api_release(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/netease/dwrg/MagtMgr;->m_method_cache:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 128
    invoke-direct {p0}, Lcom/netease/dwrg/MagtMgr;->isInit()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x272e

    .line 129
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->release(I)V

    const/4 p1, 0x1

    .line 130
    iput p1, p0, Lcom/netease/dwrg/MagtMgr;->m_init_ret_code:I

    .line 132
    :cond_0
    const-string p1, "{\"retCode\": 0}"

    return-object p1
.end method

.method public api_sendConfigData(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 180
    const-string v0, "configId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 181
    const-string v2, "textDataUTF8"

    const-string v3, "{}"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {v0, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->sendConfigData(ILjava/lang/String;)I

    move-result p1

    .line 183
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_setCounter(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 445
    const-string v0, "nameId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 446
    const-string v1, "counterValue"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 447
    invoke-static {v0, v1, v2}, Lcom/mediatek/magt/MAGTServiceAPI;->setCounter(IJ)V

    .line 448
    const-string p1, "{\"retCode\": 0}"

    return-object p1
.end method

.method public api_setNamedCounter(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 452
    const-string v0, "counterName"

    const-string v1, "unknown-counter"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    const-string v1, "counterValue"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 454
    invoke-static {v0, v1, v2}, Lcom/mediatek/magt/MAGTServiceAPI;->setNamedCounter(Ljava/lang/String;J)V

    .line 455
    const-string p1, "{\"retCode\": 0}"

    return-object p1
.end method

.method public api_setOption(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 230
    const-string v0, "optionId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 231
    const-string v2, "value"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 232
    invoke-static {v0, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->setOption(II)I

    move-result p1

    .line 233
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_setTargetFPS(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 222
    const-string v0, "tid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 223
    const-string v1, "targetFPS"

    const/16 v2, 0x3c

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 224
    invoke-static {v0, p1}, Lcom/mediatek/magt/MAGTServiceAPI;->setTargetFPS(II)I

    move-result p1

    const/4 v0, 0x0

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_startService(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 246
    const-string v0, "service"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 247
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->startService(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/netease/dwrg/MagtMgr;->registerWorkloadAdvice()I

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startService return code:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NEOX-MAGT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_stopService(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 255
    const-string v0, "service"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 256
    invoke-static {p1}, Lcom/mediatek/magt/MAGTServiceAPI;->stopService(I)I

    move-result p1

    .line 257
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_unregisterCriticalThreads(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 207
    const-string v0, "pTids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 209
    const-string p1, "input pTids is null"

    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 211
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v4, -0x1

    .line 213
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {v1, v0}, Lcom/mediatek/magt/MAGTServiceAPI;->unregisterCriticalThreads([II)I

    move-result p1

    .line 215
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public api_updateGameConfig(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lcom/netease/dwrg/MagtMgr;->parseGameConfigsFromJson(Lorg/json/JSONObject;)[Lcom/mediatek/magt/GameConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 172
    const-string p1, "input no config"

    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/mediatek/magt/MAGTServiceAPI;->updateGameConfig([Lcom/mediatek/magt/GameConfig;I)I

    move-result p1

    const/4 v0, 0x0

    .line 175
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public callFunc(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 51
    const-string v0, "NEOX-MAGT"

    .line 0
    const-string v1, "api_"

    .line 54
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    const-string p1, "methodId"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    const-string v3, "getSdkVersion"

    const-string v4, "getDeviceSupportVersion"

    const-string v5, "init"

    const-string v6, "release"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 63
    invoke-direct {p0}, Lcom/netease/dwrg/MagtMgr;->isInit()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    const-string p1, "not inited"

    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/netease/dwrg/MagtMgr;->m_method_cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 71
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lorg/json/JSONObject;

    aput-object v7, v6, v4

    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    iget-object v1, p0, Lcom/netease/dwrg/MagtMgr;->m_method_cache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[callFunc] cannot find method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string p1, "method not implemented"

    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1
    :goto_0
    :try_start_2
    new-array p1, v5, [Ljava/lang/Object;

    aput-object v2, p1, v4

    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[callFunc] failed. reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :catch_2
    move-exception p1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[callFunc] parse input json_str failed. reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string p1, "parse input str to json failed, or cannot get methodId"

    invoke-static {p1}, Lcom/netease/neox/JSONUtils;->createJsonStrWithFailedReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$registerWorkloadAdvice$0$com-netease-dwrg-MagtMgr(ILcom/mediatek/magt/PerfReport;)V
    .locals 4

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 409
    invoke-direct {p0, p2}, Lcom/netease/dwrg/MagtMgr;->createJsonObjFromReport(Lcom/mediatek/magt/PerfReport;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "methodId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OnGetWorkloadAdvice"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "advice"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "report"

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    .line 406
    invoke-static {v2, v0}, Lcom/netease/neox/JSONUtils;->createJsonStrWithRetCode(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnMagtFuncCall(Ljava/lang/String;)V

    return-void
.end method
