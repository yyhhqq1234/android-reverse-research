.class public Lcom/tencent/midas/api/request/APMidasGameRequest;
.super Lcom/tencent/midas/api/request/APMidasBaseRequest;
.source "APMidasGameRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x142b4746c3a9c548L


# instance fields
.field public gameLogo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tencent/midas/api/request/APMidasBaseRequest;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/midas/api/request/APMidasGameRequest;->gameLogo:I

    .line 19
    return-void
.end method


# virtual methods
.method public getGameLogo()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasGameRequest;->gameLogo:I

    return v0
.end method

.method public setGameLogo(I)V
    .locals 0
    .param p1, "gameLogo"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasGameRequest;->gameLogo:I

    .line 27
    return-void
.end method
