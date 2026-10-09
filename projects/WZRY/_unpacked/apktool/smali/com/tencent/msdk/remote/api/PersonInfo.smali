.class public Lcom/tencent/msdk/remote/api/PersonInfo;
.super Ljava/lang/Object;
.source "PersonInfo.java"


# instance fields
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public distance:F

.field public gender:Ljava/lang/String;

.field public gpsCity:Ljava/lang/String;

.field public isFriend:Z

.field public lang:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public pictureLarge:Ljava/lang/String;

.field public pictureMiddle:Ljava/lang/String;

.field public pictureSmall:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gpsCity:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->distance:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->isFriend:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->timestamp:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "pictureSmall"    # Ljava/lang/String;
    .param p5, "pictureMiddle"    # Ljava/lang/String;
    .param p6, "pictureLarge"    # Ljava/lang/String;
    .param p7, "provice"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gpsCity:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->distance:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->isFriend:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->timestamp:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FZJ)V
    .locals 3
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "pictureSmall"    # Ljava/lang/String;
    .param p5, "pictureMiddle"    # Ljava/lang/String;
    .param p6, "pictureLarge"    # Ljava/lang/String;
    .param p7, "province"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;
    .param p9, "distance"    # F
    .param p10, "isFriend"    # Z
    .param p11, "timestamp"    # J

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gpsCity:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->distance:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->isFriend:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->timestamp:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 70
    iput p9, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->distance:F

    .line 71
    iput-boolean p10, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->isFriend:Z

    .line 72
    iput-wide p11, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->timestamp:J

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "pictureSmall"    # Ljava/lang/String;
    .param p5, "pictureMiddle"    # Ljava/lang/String;
    .param p6, "pictureLarge"    # Ljava/lang/String;
    .param p7, "province"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;
    .param p9, "lang"    # Ljava/lang/String;
    .param p10, "country"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gpsCity:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->distance:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->isFriend:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->timestamp:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 85
    iput-object p7, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 87
    iput-object p9, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    .line 88
    iput-object p10, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "pictureSmall"    # Ljava/lang/String;
    .param p5, "pictureMiddle"    # Ljava/lang/String;
    .param p6, "pictureLarge"    # Ljava/lang/String;
    .param p7, "provice"    # Ljava/lang/String;
    .param p8, "city"    # Ljava/lang/String;
    .param p9, "gpsCity"    # Ljava/lang/String;
    .param p10, "lang"    # Ljava/lang/String;
    .param p11, "country"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gpsCity:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->distance:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->isFriend:Z

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->timestamp:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gpsCity:Ljava/lang/String;

    .line 53
    iput-object p10, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    .line 54
    iput-object p11, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v0, ""

    .line 94
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nickName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "openId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->openId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pictureSmall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureSmall:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pictureMiddle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureMiddle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pictureLarge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->pictureLarge:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "provice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "city: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->distance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isFriend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->isFriend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lang: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/remote/api/PersonInfo;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method
