.class public final Lcom/tencent/msdk/apkchannel/ApkChannelTool;
.super Ljava/lang/Object;
.source "ApkChannelTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;
    }
.end annotation


# static fields
.field public static final CHANNELID:Ljava/lang/String; = "channelId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "apkFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const-string v1, "read apk Channel"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ApkChannelTool;->readMsdkComment(Ljava/lang/String;)Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;

    move-result-object v0

    .line 31
    .local v0, "msdkComment":Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;
    if-nez v0, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->p:Ljava/util/Properties;

    const-string v2, "channelId"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static readMsdkComment(Ljava/lang/String;)Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;
    .locals 6
    .param p0, "apkFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ApkSignatureV2ChannelTool;->isSignatureV2Apk(Ljava/lang/String;)Z

    move-result v2

    .line 39
    .local v2, "isv2":Z
    const/4 v0, 0x0

    .line 40
    .local v0, "comment":[B
    if-eqz v2, :cond_1

    .line 43
    :try_start_0
    const-string v5, "is v2 signature"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ApkSignatureV2ChannelTool;->readMsdkComment(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ZipEocdCommentTool;->readComment(Ljava/lang/String;)[B

    move-result-object v0

    .line 56
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v5, "you are use v2 signature but use v1 channel modle"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v5, "this apk will can\'t install in 7.0system"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 61
    :cond_0
    if-nez v0, :cond_2

    move-object v3, v4

    .line 73
    :goto_1
    return-object v3

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    invoke-virtual {v1}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1    # "e":Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    :cond_1
    const-string v5, "is v1 signature"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v3, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;

    invoke-direct {v3, v4}, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;-><init>(Lcom/tencent/msdk/apkchannel/ApkChannelTool$1;)V

    .line 66
    .local v3, "msdkComment":Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/tencent/msdk/apkchannel/ApkChannelTool$MSDKComment;->decode([B)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/net/ProtocolException;
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    move-object v3, v4

    .line 70
    goto :goto_1
.end method
