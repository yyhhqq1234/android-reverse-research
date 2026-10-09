.class public Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;
.super Ljava/lang/Object;
.source "NetworkV3Impl.java"

# interfaces
.implements Lcom/tencent/msdk/realnameauth/network/NetworkInterface;


# static fields
.field private static networkLisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;


# instance fields
.field private action:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private platform:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static response(Ljava/lang/String;I)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "result"    # I

    .prologue
    .line 13
    if-nez p1, :cond_0

    .line 14
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->networkLisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    const/16 v1, 0xc8

    invoke-interface {v0, p0, v1}, Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;->onSuccess(Ljava/lang/String;I)V

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->networkLisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;->onFailure(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public send(Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;)V
    .locals 4
    .param p1, "lisenter"    # Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    .prologue
    .line 40
    sput-object p1, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->networkLisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    .line 41
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->action:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->platform:I

    iget-object v2, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->openid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->body:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->sendRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonBody"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->body:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUrl(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "platform"    # I
    .param p3, "openid"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->action:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->platform:I

    .line 30
    iput-object p3, p0, Lcom/tencent/msdk/sdkwrapper/realname/NetworkV3Impl;->openid:Ljava/lang/String;

    .line 31
    return-void
.end method
