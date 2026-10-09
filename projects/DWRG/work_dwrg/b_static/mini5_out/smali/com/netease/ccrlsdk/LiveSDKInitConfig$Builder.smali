.class public Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ccrlsdk/LiveSDKInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public CCLiveSDKCallback:Lcom/netease/ccrlsdk/CCLiveSDKCallback;

.field public coverUrl:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public gameName:Ljava/lang/String;

.field public gameType:Ljava/lang/String;

.field public gameUid:Ljava/lang/String;

.field public intentSchemePostfix:Ljava/lang/String;

.field public intentSchemePrefix:Ljava/lang/String;

.field public isDebug:Z

.field public liveType:I

.field public mainTag:Ljava/lang/String;

.field public subTag:Ljava/lang/String;

.field public ticketType:I

.field public urs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "://zhimaauth/content"

    .line 2
    iput-object v0, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->intentSchemePostfix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/netease/ccrlsdk/LiveSDKInitConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;

    .line 2
    invoke-direct {v0}, Lcom/netease/ccrlsdk/LiveSDKInitConfig;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameName:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->gameName:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameType:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->gameType:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->intentSchemePrefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->intentSchemePrefix:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->intentSchemePostfix:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->intentSchemePostfix:Ljava/lang/String;

    .line 7
    iget-boolean v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->isDebug:Z

    iput-boolean v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->isDebug:Z

    .line 8
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->urs:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->urs:Ljava/lang/String;

    .line 9
    iget v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->ticketType:I

    iput v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->ticketType:I

    .line 10
    iget v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->liveType:I

    iput v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->liveType:I

    .line 11
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->CCLiveSDKCallback:Lcom/netease/ccrlsdk/CCLiveSDKCallback;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->CCLiveSDKCallback:Lcom/netease/ccrlsdk/CCLiveSDKCallback;

    .line 12
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->mainTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->mainTag:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->subTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->subTag:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->coverUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->coverUrl:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameUid:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->gameUid:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->extra:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public coverUrl(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->coverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public debugMode(Z)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->isDebug:Z

    return-object p0
.end method

.method public extra(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public gameName(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameName:Ljava/lang/String;

    return-object p0
.end method

.method public gameType(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameType:Ljava/lang/String;

    return-object p0
.end method

.method public gameUid(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameUid:Ljava/lang/String;

    return-object p0
.end method

.method public intentSchemePrefix(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->intentSchemePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public liveType(I)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->liveType:I

    return-object p0
.end method

.method public mainTag(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->mainTag:Ljava/lang/String;

    return-object p0
.end method

.method public sdkCallback(Lcom/netease/ccrlsdk/CCLiveSDKCallback;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->CCLiveSDKCallback:Lcom/netease/ccrlsdk/CCLiveSDKCallback;

    return-object p0
.end method

.method public subTag(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->subTag:Ljava/lang/String;

    return-object p0
.end method

.method public ticketType(I)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->ticketType:I

    return-object p0
.end method

.method public urs(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->urs:Ljava/lang/String;

    return-object p0
.end method
