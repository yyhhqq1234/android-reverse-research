.class public Lcom/subao/common/intf/ThirdPartyAuthInfo;
.super Ljava/lang/Object;
.source "ThirdPartyAuthInfo.java"


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final expiresIn:J

.field private final openId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final refreshToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->accessToken:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->refreshToken:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->openId:Ljava/lang/String;

    .line 27
    iput-wide p4, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->expiresIn:J

    .line 28
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->expiresIn:J

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/subao/common/intf/ThirdPartyAuthInfo;->refreshToken:Ljava/lang/String;

    return-object v0
.end method
