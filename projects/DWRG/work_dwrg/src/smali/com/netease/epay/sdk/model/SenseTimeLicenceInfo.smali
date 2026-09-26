.class public Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;
.super Ljava/lang/Object;
.source "SenseTimeLicenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;
    }
.end annotation


# instance fields
.field private faceDetectLicenceInfo:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLicenceDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->faceDetectLicenceInfo:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->faceDetectLicenceInfo:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;->licenceDownloadUrl:Ljava/lang/String;

    .line 16
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLicenceMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->faceDetectLicenceInfo:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo;->faceDetectLicenceInfo:Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;

    iget-object v0, v0, Lcom/netease/epay/sdk/model/SenseTimeLicenceInfo$Info;->licenceMd5:Ljava/lang/String;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
