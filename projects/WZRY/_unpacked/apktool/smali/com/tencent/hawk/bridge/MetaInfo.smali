.class public Lcom/tencent/hawk/bridge/MetaInfo;
.super Ljava/lang/Object;
.source "MetaInfo.java"


# static fields
.field private static mAbi:Ljava/lang/String;

.field private static mBuildInt:I

.field private static mBuildStr:Ljava/lang/String;

.field private static mCpuCore:I

.field private static mCpuFreqMax:I

.field private static mCpuFreqMin:I

.field private static mImei:J

.field private static mInitFlag:Z

.field private static mIpAddr:J

.field private static mIsAvm:Z

.field private static mMacAddr:J

.field private static mManu:Ljava/lang/String;

.field private static mModel:Ljava/lang/String;

.field private static mNetworkType:I

.field private static mOsLevel:I

.field private static mPkgName:Ljava/lang/String;

.field private static mRam:I

.field private static mRandSeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mRandSeed:I

    .line 14
    sput-wide v2, Lcom/tencent/hawk/bridge/MetaInfo;->mMacAddr:J

    .line 15
    sput-wide v2, Lcom/tencent/hawk/bridge/MetaInfo;->mImei:J

    .line 16
    sput-object v1, Lcom/tencent/hawk/bridge/MetaInfo;->mPkgName:Ljava/lang/String;

    .line 17
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildInt:I

    .line 18
    sput-object v1, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildStr:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/tencent/hawk/bridge/MetaInfo;->mModel:Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/tencent/hawk/bridge/MetaInfo;->mAbi:Ljava/lang/String;

    .line 22
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mRam:I

    .line 23
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuCore:I

    .line 24
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuFreqMax:I

    .line 25
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuFreqMin:I

    .line 26
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mOsLevel:I

    .line 28
    sput-boolean v0, Lcom/tencent/hawk/bridge/MetaInfo;->mInitFlag:Z

    .line 29
    sput-boolean v0, Lcom/tencent/hawk/bridge/MetaInfo;->mIsAvm:Z

    .line 30
    sput v0, Lcom/tencent/hawk/bridge/MetaInfo;->mNetworkType:I

    .line 32
    sput-wide v2, Lcom/tencent/hawk/bridge/MetaInfo;->mIpAddr:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/tencent/hawk/bridge/MetaInfo;->mAbi:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildInt()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildInt:I

    return v0
.end method

.method public static getBuildStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildStr:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpuCore()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuCore:I

    return v0
.end method

.method public static getCpuFreqMax()I
    .locals 1

    .prologue
    .line 123
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuFreqMax:I

    return v0
.end method

.method public static getCpuFreqMin()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuFreqMin:I

    return v0
.end method

.method public static getImei()J
    .locals 2

    .prologue
    .line 51
    sget-wide v0, Lcom/tencent/hawk/bridge/MetaInfo;->mImei:J

    return-wide v0
.end method

.method public static getIpAddr()J
    .locals 2

    .prologue
    .line 147
    sget-wide v0, Lcom/tencent/hawk/bridge/MetaInfo;->mIpAddr:J

    return-wide v0
.end method

.method public static getMacAddr()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/tencent/hawk/bridge/MetaInfo;->mMacAddr:J

    return-wide v0
.end method

.method public static getManu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/tencent/hawk/bridge/MetaInfo;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mNetworkType:I

    return v0
.end method

.method public static getOsLevel()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mOsLevel:I

    return v0
.end method

.method public static getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/tencent/hawk/bridge/MetaInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public static getRam()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mRam:I

    return v0
.end method

.method public static getRandSeed()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/tencent/hawk/bridge/MetaInfo;->mRandSeed:I

    return v0
.end method

.method public static initMetaCtx(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x447a0000    # 1000.0f

    .line 210
    if-nez p0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 213
    .local v2, "random":D
    const-wide v4, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v4, v2

    double-to-int v4, v4

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mRandSeed:I

    .line 215
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getCpuCoreNum()I

    move-result v4

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuCore:I

    .line 216
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getMemory()I

    move-result v4

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mRam:I

    .line 217
    sget v4, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuCore:I

    invoke-static {v4}, Lcom/tencent/hawk/bridge/DevPacket;->getCpuFreq(I)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuFreqMax:I

    .line 218
    sget v4, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuCore:I

    invoke-static {v4}, Lcom/tencent/hawk/bridge/DevPacket;->getCpuFreq(I)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuFreqMin:I

    .line 219
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mOsLevel:I

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-nez v4, :cond_8

    const-string v4, "ERROR"

    :goto_1
    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mPkgName:Ljava/lang/String;

    .line 224
    invoke-static {p0}, Lcom/tencent/hawk/bridge/DevPacket;->getPkgVersionInfo(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v1

    .line 226
    .local v1, "versionPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildStr:Ljava/lang/String;

    .line 227
    invoke-virtual {v1}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildInt:I

    .line 229
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getManu()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getModel()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mModel:Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getCpuABI()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mAbi:Ljava/lang/String;

    .line 232
    invoke-static {p0}, Lcom/tencent/hawk/bridge/NetworkUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v4

    sput v4, Lcom/tencent/hawk/bridge/MetaInfo;->mNetworkType:I

    .line 233
    invoke-static {}, Lcom/tencent/hawk/bridge/NetworkUtil;->getIpAddr()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/hawk/bridge/MetaInfo;->mIpAddr:J

    .line 235
    invoke-static {p0}, Lcom/tencent/hawk/bridge/DevPacket;->getIMEI(Landroid/content/Context;)J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/hawk/bridge/MetaInfo;->mImei:J

    .line 237
    invoke-static {p0}, Lcom/tencent/hawk/bridge/DevPacket;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "macAddr":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 239
    invoke-static {v0}, Lcom/tencent/hawk/bridge/MetaInfo;->parseMacAddr(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/hawk/bridge/MetaInfo;->mMacAddr:J

    .line 241
    sget-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mPkgName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 242
    const-string v4, "N/A"

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mPkgName:Ljava/lang/String;

    .line 243
    :cond_1
    sget-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildStr:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 244
    const-string v4, "N/A"

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildStr:Ljava/lang/String;

    .line 245
    :cond_2
    sget-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 246
    const-string v4, "N/A"

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    .line 247
    :cond_3
    sget-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mModel:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 248
    const-string v4, "N/A"

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mModel:Ljava/lang/String;

    .line 249
    :cond_4
    sget-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mAbi:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 250
    const-string v4, "N/A"

    sput-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mAbi:Ljava/lang/String;

    .line 252
    :cond_5
    sget-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    const-string v5, "generic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    const-string v5, "iToolsAVM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 253
    :cond_6
    sput-boolean v7, Lcom/tencent/hawk/bridge/MetaInfo;->mIsAvm:Z

    .line 255
    :cond_7
    sput-boolean v7, Lcom/tencent/hawk/bridge/MetaInfo;->mInitFlag:Z

    goto/16 :goto_0

    .line 220
    .end local v0    # "macAddr":Ljava/lang/String;
    .end local v1    # "versionPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static isAvm()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/tencent/hawk/bridge/MetaInfo;->mIsAvm:Z

    return v0
.end method

.method public static isInitSuccessed()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/tencent/hawk/bridge/MetaInfo;->mInitFlag:Z

    return v0
.end method

.method public static parseImei(Ljava/lang/String;)J
    .locals 4
    .param p0, "imei"    # Ljava/lang/String;

    .prologue
    .line 182
    const-wide/16 v2, 0x0

    .line 183
    .local v2, "result":J
    if-eqz p0, :cond_0

    .line 185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 191
    :cond_0
    :goto_0
    return-wide v2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseMacAddr(Ljava/lang/String;)J
    .locals 16
    .param p0, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 155
    const-wide/16 v8, 0x0

    .line 156
    .local v8, "result":J
    if-eqz p0, :cond_1

    .line 157
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "macArray":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v10, 0x6

    if-eq v7, v10, :cond_2

    .line 159
    :cond_0
    const-wide/16 v8, 0x2

    .line 177
    .end local v6    # "macArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v8

    .line 161
    .restart local v6    # "macArray":[Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "a1":I
    const/4 v7, 0x1

    aget-object v7, v6, v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, "a2":I
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 164
    .local v2, "a3":I
    const/4 v7, 0x3

    aget-object v7, v6, v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 165
    .local v3, "a4":I
    const/4 v7, 0x4

    aget-object v7, v6, v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 166
    .local v4, "a5":I
    const/4 v7, 0x5

    aget-object v7, v6, v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 169
    .local v5, "a6":I
    int-to-long v10, v0

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v7, 0x28

    shl-long/2addr v10, v7

    .line 170
    int-to-long v12, v1

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v7, 0x20

    shl-long/2addr v12, v7

    .line 169
    or-long/2addr v10, v12

    .line 171
    int-to-long v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v7, 0x18

    shl-long/2addr v12, v7

    .line 169
    or-long/2addr v10, v12

    .line 172
    int-to-long v12, v3

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v7, 0x10

    shl-long/2addr v12, v7

    .line 169
    or-long/2addr v10, v12

    .line 173
    int-to-long v12, v4

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v7, 0x8

    shl-long/2addr v12, v7

    .line 169
    or-long/2addr v10, v12

    .line 174
    int-to-long v12, v5

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    .line 169
    or-long v8, v10, v12

    .line 168
    goto :goto_0
.end method

.method public static setBuildInt(I)V
    .locals 0
    .param p0, "buildInt"    # I

    .prologue
    .line 71
    sput p0, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildInt:I

    .line 72
    return-void
.end method

.method public static setBuildStr(Ljava/lang/String;)V
    .locals 0
    .param p0, "buildStr"    # Ljava/lang/String;

    .prologue
    .line 79
    sput-object p0, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildStr:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static setCpuCore(I)V
    .locals 0
    .param p0, "cpuCore"    # I

    .prologue
    .line 119
    sput p0, Lcom/tencent/hawk/bridge/MetaInfo;->mCpuCore:I

    .line 120
    return-void
.end method

.method public static setImei(J)V
    .locals 0
    .param p0, "imei"    # J

    .prologue
    .line 55
    sput-wide p0, Lcom/tencent/hawk/bridge/MetaInfo;->mImei:J

    .line 56
    return-void
.end method

.method public static setMacAddr(J)V
    .locals 0
    .param p0, "macAddr"    # J

    .prologue
    .line 47
    sput-wide p0, Lcom/tencent/hawk/bridge/MetaInfo;->mMacAddr:J

    .line 48
    return-void
.end method

.method public static setManu(Ljava/lang/String;)V
    .locals 0
    .param p0, "manu"    # Ljava/lang/String;

    .prologue
    .line 87
    sput-object p0, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static setModel(Ljava/lang/String;)V
    .locals 0
    .param p0, "model"    # Ljava/lang/String;

    .prologue
    .line 95
    sput-object p0, Lcom/tencent/hawk/bridge/MetaInfo;->mModel:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static setOsLevel(I)V
    .locals 0
    .param p0, "osLevel"    # I

    .prologue
    .line 139
    sput p0, Lcom/tencent/hawk/bridge/MetaInfo;->mOsLevel:I

    .line 140
    return-void
.end method

.method public static setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 63
    sput-object p0, Lcom/tencent/hawk/bridge/MetaInfo;->mPkgName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static setRam(I)V
    .locals 0
    .param p0, "ram"    # I

    .prologue
    .line 111
    sput p0, Lcom/tencent/hawk/bridge/MetaInfo;->mRam:I

    .line 112
    return-void
.end method

.method public static setRandSeed(I)V
    .locals 0
    .param p0, "randSeed"    # I

    .prologue
    .line 39
    sput p0, Lcom/tencent/hawk/bridge/MetaInfo;->mRandSeed:I

    .line 40
    return-void
.end method

.method public static setmAbi(Ljava/lang/String;)V
    .locals 0
    .param p0, "abi"    # Ljava/lang/String;

    .prologue
    .line 103
    sput-object p0, Lcom/tencent/hawk/bridge/MetaInfo;->mAbi:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static toMsg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    sget-boolean v1, Lcom/tencent/hawk/bridge/MetaInfo;->mInitFlag:Z

    if-nez v1, :cond_0

    .line 201
    const-string v1, "not initialized"

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    .line 203
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/tencent/hawk/bridge/MetaInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/hawk/bridge/MetaInfo;->mBuildStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/hawk/bridge/MetaInfo;->mManu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/hawk/bridge/MetaInfo;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/hawk/bridge/MetaInfo;->mAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
