.class public Lcom/tencent/msdk/api/MsdkBaseInfo;
.super Ljava/lang/Object;
.source "MsdkBaseInfo.java"


# instance fields
.field public appVersionCode:I

.field public appVersionName:Ljava/lang/String;

.field public msdkKey:Ljava/lang/String;

.field public offerId:Ljava/lang/String;

.field public qqAppId:Ljava/lang/String;

.field public wxAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionName:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionCode:I

    return-void
.end method
