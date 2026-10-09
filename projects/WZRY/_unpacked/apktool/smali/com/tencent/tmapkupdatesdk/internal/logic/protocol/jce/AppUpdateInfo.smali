.class public final Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field static cache_apkDownUrl:Ljava/util/ArrayList;

.field static cache_iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

.field static cache_rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;


# instance fields
.field public apkDownUrl:Ljava/util/ArrayList;

.field public apkId:J

.field public apkMd5:Ljava/lang/String;

.field public apkUrl:Ljava/lang/String;

.field public appId:J

.field public appName:Ljava/lang/String;

.field public diffApkMd5:Ljava/lang/String;

.field public diffApkUrl:Ljava/lang/String;

.field public diffFileSize:J

.field public downCount:J

.field public fileSize:J

.field public flag:I

.field public grayVersionCode:I

.field public iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

.field public isAdded:B

.field public localFileListMd5:Ljava/lang/String;

.field public localManifestMd5:Ljava/lang/String;

.field public localVersionCode:I

.field public localVersionName:Ljava/lang/String;

.field public newFeature:Ljava/lang/String;

.field public overwriteChannelid:B

.field public packageName:Ljava/lang/String;

.field public patchAlgorithm:S

.field public rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

.field public signatureMd5:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->signatureMd5:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    .line 19
    iput-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->newFeature:Ljava/lang/String;

    .line 23
    iput-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkMd5:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkUrl:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->fileSize:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkMd5:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkUrl:Ljava/lang/String;

    .line 35
    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffFileSize:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionName:Ljava/lang/String;

    .line 39
    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appId:J

    .line 41
    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->downCount:J

    .line 43
    iput v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->flag:I

    .line 45
    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    .line 47
    iput-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkDownUrl:Ljava/util/ArrayList;

    .line 49
    iput-byte v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->isAdded:B

    .line 51
    iput v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->grayVersionCode:I

    .line 53
    iput-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->patchAlgorithm:S

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionName:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionCode:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localFileListMd5:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localManifestMd5:Ljava/lang/String;

    .line 63
    iput-byte v1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;Ljava/lang/String;Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIJLjava/util/ArrayList;BISLjava/lang/String;ILjava/lang/String;Ljava/lang/String;B)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    .line 13
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appName:Ljava/lang/String;

    .line 15
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->signatureMd5:Ljava/lang/String;

    .line 17
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    .line 19
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    .line 21
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->newFeature:Ljava/lang/String;

    .line 23
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkMd5:Ljava/lang/String;

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkUrl:Ljava/lang/String;

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->fileSize:J

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkMd5:Ljava/lang/String;

    .line 33
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkUrl:Ljava/lang/String;

    .line 35
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffFileSize:J

    .line 37
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionName:Ljava/lang/String;

    .line 39
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appId:J

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->downCount:J

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->flag:I

    .line 45
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkDownUrl:Ljava/util/ArrayList;

    .line 49
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->isAdded:B

    .line 51
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->grayVersionCode:I

    .line 53
    const/4 v2, 0x0

    iput-short v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->patchAlgorithm:S

    .line 55
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionName:Ljava/lang/String;

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionCode:I

    .line 59
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localFileListMd5:Ljava/lang/String;

    .line 61
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localManifestMd5:Ljava/lang/String;

    .line 63
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    .line 71
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appName:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->signatureMd5:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    .line 75
    iput-object p5, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    .line 76
    iput-object p6, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->newFeature:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    .line 78
    iput-object p8, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkMd5:Ljava/lang/String;

    .line 79
    iput-object p9, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkUrl:Ljava/lang/String;

    .line 80
    iput-wide p10, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->fileSize:J

    .line 81
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkMd5:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkUrl:Ljava/lang/String;

    .line 83
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffFileSize:J

    .line 84
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionName:Ljava/lang/String;

    .line 85
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appId:J

    .line 86
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->downCount:J

    .line 87
    move/from16 v0, p21

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->flag:I

    .line 88
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    .line 89
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkDownUrl:Ljava/util/ArrayList;

    .line 90
    move/from16 v0, p25

    iput-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->isAdded:B

    .line 91
    move/from16 v0, p26

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->grayVersionCode:I

    .line 92
    move/from16 v0, p27

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->patchAlgorithm:S

    .line 93
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionName:Ljava/lang/String;

    .line 94
    move/from16 v0, p29

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionCode:I

    .line 95
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localFileListMd5:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localManifestMd5:Ljava/lang/String;

    .line 97
    move/from16 v0, p32

    iput-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    .line 98
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    invoke-virtual {p1, v3, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    .line 159
    invoke-virtual {p1, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appName:Ljava/lang/String;

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->signatureMd5:Ljava/lang/String;

    .line 161
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    .line 162
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;-><init>()V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    .line 166
    :cond_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    .line 167
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->newFeature:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;-><init>()V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    .line 172
    :cond_1
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    .line 173
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkMd5:Ljava/lang/String;

    .line 174
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkUrl:Ljava/lang/String;

    .line 175
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->fileSize:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->fileSize:J

    .line 176
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkMd5:Ljava/lang/String;

    .line 177
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkUrl:Ljava/lang/String;

    .line 178
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffFileSize:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffFileSize:J

    .line 179
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionName:Ljava/lang/String;

    .line 180
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appId:J

    const/16 v2, 0xe

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appId:J

    .line 181
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->downCount:J

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->downCount:J

    .line 182
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->flag:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->flag:I

    .line 183
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    .line 184
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_apkDownUrl:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_apkDownUrl:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkDownUrl;-><init>()V

    .line 188
    sget-object v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_apkDownUrl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->cache_apkDownUrl:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkDownUrl:Ljava/util/ArrayList;

    .line 191
    iget-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->isAdded:B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->isAdded:B

    .line 192
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->grayVersionCode:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->grayVersionCode:I

    .line 193
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->patchAlgorithm:S

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->patchAlgorithm:S

    .line 194
    const/16 v0, 0x18

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionName:Ljava/lang/String;

    .line 195
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionCode:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionCode:I

    .line 196
    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localFileListMd5:Ljava/lang/String;

    .line 197
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localManifestMd5:Ljava/lang/String;

    .line 198
    iget-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    .line 199
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 103
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->signatureMd5:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 105
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 106
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->iconUrl:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/PicInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 107
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->newFeature:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->rating:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/RatingInfo;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 109
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkMd5:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkUrl:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 111
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->fileSize:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 112
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkMd5:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkMd5:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffApkUrl:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 120
    :cond_1
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->diffFileSize:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 121
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->versionName:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 125
    :cond_2
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->appId:J

    const/16 v2, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 126
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->downCount:J

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 127
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->flag:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 128
    iget-wide v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkId:J

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 129
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkDownUrl:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->apkDownUrl:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 133
    :cond_3
    iget-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->isAdded:B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 134
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->grayVersionCode:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 135
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->patchAlgorithm:S

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 136
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionName:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 140
    :cond_4
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localVersionCode:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 141
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localFileListMd5:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localFileListMd5:Ljava/lang/String;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localManifestMd5:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->localManifestMd5:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 149
    :cond_6
    iget-byte v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/AppUpdateInfo;->overwriteChannelid:B

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 150
    return-void
.end method
