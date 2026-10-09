.class public Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;
.super Ljava/lang/Object;
.source "ApolloPlatformInfo.java"


# instance fields
.field public msdkKey:Ljava/lang/String;

.field public offerId:Ljava/lang/String;

.field public qqAppId:Ljava/lang/String;

.field public qqAppKey:Ljava/lang/String;

.field public useMSDK:Z

.field public wtAppId:Ljava/lang/String;

.field public wxAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v1, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->useMSDK:Z

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppId:Ljava/lang/String;

    .line 15
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppKey:Ljava/lang/String;

    .line 16
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->wxAppId:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->msdkKey:Ljava/lang/String;

    .line 18
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->offerId:Ljava/lang/String;

    .line 19
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->wtAppId:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->useMSDK:Z

    .line 21
    return-void
.end method
