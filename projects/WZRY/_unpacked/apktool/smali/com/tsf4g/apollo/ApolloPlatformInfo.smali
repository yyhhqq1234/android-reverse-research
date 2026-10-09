.class public Lcom/tsf4g/apollo/ApolloPlatformInfo;
.super Ljava/lang/Object;
.source "ApolloPlatformInfo.java"


# instance fields
.field public offerId:Ljava/lang/String;

.field public qqAppId:Ljava/lang/String;

.field public qqAppKey:Ljava/lang/String;

.field public useMSDK:Z

.field public wtAppId:Ljava/lang/String;

.field public wxAppId:Ljava/lang/String;

.field public wxAppKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->qqAppId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->qqAppKey:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->wxAppId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->wxAppKey:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->offerId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->wtAppId:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->useMSDK:Z

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->qqAppId:Ljava/lang/String;

    .line 15
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->qqAppKey:Ljava/lang/String;

    .line 16
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->wxAppId:Ljava/lang/String;

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->wxAppKey:Ljava/lang/String;

    .line 18
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->offerId:Ljava/lang/String;

    .line 19
    const-string v0, "0"

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->wtAppId:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/tsf4g/apollo/ApolloPlatformInfo;->useMSDK:Z

    .line 21
    return-void
.end method
