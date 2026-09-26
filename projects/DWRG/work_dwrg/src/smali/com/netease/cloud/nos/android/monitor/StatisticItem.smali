.class public Lcom/netease/cloud/nos/android/monitor/StatisticItem;
.super Ljava/lang/Object;
.source "StatisticItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketName:Ljava/lang/String;

.field private chunkRetryCount:I

.field private clientIP:Ljava/lang/String;

.field private fileSize:J

.field private lbsHttpCode:I

.field private lbsIP:Ljava/lang/String;

.field private lbsSucc:I

.field private lbsUseTime:J

.field private netEnv:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private queryRetryCount:I

.field private sdkVersion:Ljava/lang/String;

.field private uploadRetryCount:I

.field private uploadType:I

.field private uploaderHttpCode:I

.field private uploaderIP:Ljava/lang/String;

.field private uploaderSucc:I

.field private uploaderUseTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem$1;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem$1;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 271
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "android"

    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    .line 11
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    .line 19
    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    .line 20
    iput v2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    .line 21
    iput v2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    .line 22
    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    .line 23
    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    .line 24
    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    .line 26
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJIIIIIIILjava/lang/String;I)V
    .locals 3
    .param p1, "platform"    # Ljava/lang/String;
    .param p2, "clientIP"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "lbsIP"    # Ljava/lang/String;
    .param p5, "uploaderIP"    # Ljava/lang/String;
    .param p6, "fileSize"    # J
    .param p8, "netEnv"    # Ljava/lang/String;
    .param p9, "lbsUseTime"    # J
    .param p11, "uploaderUseTime"    # J
    .param p13, "lbsSucc"    # I
    .param p14, "uploaderSucc"    # I
    .param p15, "lbsHttpCode"    # I
    .param p16, "uploaderHttpCode"    # I
    .param p17, "chunkRetryCount"    # I
    .param p18, "queryRetryCount"    # I
    .param p19, "uploadRetryCount"    # I
    .param p20, "bucketName"    # Ljava/lang/String;
    .param p21, "uploadType"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v1, "android"

    iput-object v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    .line 11
    const-string v1, "2.0"

    iput-object v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    .line 20
    const/16 v1, 0xc8

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    .line 21
    const/16 v1, 0xc8

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    .line 24
    const/4 v1, 0x0

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    .line 26
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    .line 53
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    .line 58
    iput-wide p6, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    .line 59
    iput-object p8, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    .line 60
    iput-wide p9, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    .line 61
    iput-wide p11, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    .line 62
    move/from16 v0, p13

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    .line 63
    move/from16 v0, p14

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    .line 64
    move/from16 v0, p15

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    .line 65
    move/from16 v0, p16

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    .line 66
    move/from16 v0, p17

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    .line 67
    move/from16 v0, p18

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    .line 68
    move/from16 v0, p19

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    .line 69
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    .line 70
    move/from16 v0, p21

    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getChunkRetryCount()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    return v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    return-wide v0
.end method

.method public getLbsHttpCode()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    return v0
.end method

.method public getLbsIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLbsSucc()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    return v0
.end method

.method public getLbsUseTime()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    return-wide v0
.end method

.method public getNetEnv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryRetryCount()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadRetryCount()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    return v0
.end method

.method public getUploadType()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    return v0
.end method

.method public getUploaderHttpCode()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    return v0
.end method

.method public getUploaderIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderSucc()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    return v0
.end method

.method public getUploaderUseTime()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    return-wide v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setChunkRetryCount(I)V
    .locals 0
    .param p1, "chunkRetryCount"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    .line 169
    return-void
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientIP"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    .line 105
    return-void
.end method

.method public setLbsHttpCode(I)V
    .locals 0
    .param p1, "lbsHttpCode"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    .line 153
    return-void
.end method

.method public setLbsIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "lbsIP"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLbsSucc(I)V
    .locals 0
    .param p1, "lbsSucc"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    .line 137
    return-void
.end method

.method public setLbsUseTime(J)V
    .locals 1
    .param p1, "lbsUseTime"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    .line 121
    return-void
.end method

.method public setNetEnv(Ljava/lang/String;)V
    .locals 0
    .param p1, "netEnv"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setQueryRetryCount(I)V
    .locals 0
    .param p1, "queryRetryCount"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    .line 185
    return-void
.end method

.method public setUploadRetryCount(I)V
    .locals 0
    .param p1, "uploadRetryCount"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    .line 193
    return-void
.end method

.method public setUploadType(I)V
    .locals 0
    .param p1, "uploadType"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    .line 209
    return-void
.end method

.method public setUploaderHttpCode(I)V
    .locals 0
    .param p1, "uploaderHttpCode"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    .line 161
    return-void
.end method

.method public setUploaderIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderIP"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setUploaderSucc(I)V
    .locals 0
    .param p1, "uploaderSucc"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    .line 145
    return-void
.end method

.method public setUploaderUseTime(J)V
    .locals 1
    .param p1, "uploaderUseTime"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->clientIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->netEnv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsUseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderUseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsSucc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderSucc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->lbsHttpCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploaderHttpCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->chunkRetryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->queryRetryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadRetryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->bucketName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->uploadType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    return-void
.end method
