.class public Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final STATUS_CHECKUPDATE_FAILURE:I = 0x1

.field public static final STATUS_CHECKUPDATE_RESPONSE_IS_NULL:I = 0x2

.field public static final STATUS_OK:I = 0x0

.field public static final UpdateMethod_ByPatch:I = 0x2

.field public static final UpdateMethod_NoUpdate:I = 0x0

.field public static final UpdateMethod_Normal:I = 0x1


# instance fields
.field private newApkSize:J

.field private newFeature:Ljava/lang/String;

.field private overwriteChannelid:B

.field private patchSize:J

.field private status:I

.field private updateDownloadUrl:Ljava/lang/String;

.field private updateMethod:I

.field public versioncode:I

.field public versionname:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Ljava/lang/String;BLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    .line 73
    iput p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    .line 74
    iput p2, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateMethod:I

    .line 75
    iput-wide p3, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newApkSize:J

    .line 76
    iput-wide p5, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->patchSize:J

    .line 77
    iput-object p7, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newFeature:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateDownloadUrl:Ljava/lang/String;

    .line 79
    iput-byte p9, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->overwriteChannelid:B

    .line 80
    iput-object p10, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->versionname:Ljava/lang/String;

    .line 81
    iput p11, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->versioncode:I

    .line 82
    return-void
.end method


# virtual methods
.method public getNewApkSize()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newApkSize:J

    return-wide v0
.end method

.method public getNewFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newFeature:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwriteChannelid()B
    .locals 1

    .prologue
    .line 133
    iget-byte v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->overwriteChannelid:B

    return v0
.end method

.method public getPatchSize()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->patchSize:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    return v0
.end method

.method public getUpdateDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateMethod()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateMethod:I

    return v0
.end method

.method public setNewApkSize(J)V
    .locals 1

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newApkSize:J

    .line 106
    return-void
.end method

.method public setNewFeature(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newFeature:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setOverwriteChannelid(B)V
    .locals 0

    .prologue
    .line 137
    iput-byte p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->overwriteChannelid:B

    .line 138
    return-void
.end method

.method public setPatchSize(J)V
    .locals 1

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->patchSize:J

    .line 114
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    .line 90
    return-void
.end method

.method public setUpdateDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateDownloadUrl:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setUpdateMethod(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateMethod:I

    .line 98
    return-void
.end method
