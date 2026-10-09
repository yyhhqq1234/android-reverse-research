.class public abstract Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;
.super Ljava/lang/Object;
.source "ProtoParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PARAM:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        "STATUS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ProtoMessager"


# instance fields
.field public mStatus:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATUS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;, "Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser<TPARAM;TRESULT;TSTATUS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs abstract buildRequest([Ljava/lang/Object;)Lcom/tencent/qt/base/net/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TPARAM;)",
            "Lcom/tencent/qt/base/net/Request;"
        }
    .end annotation
.end method

.method protected decodeString(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p1, "stream"    # Lokio/ByteString;

    .prologue
    .line 45
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;, "Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser<TPARAM;TRESULT;TSTATUS;>;"
    invoke-static {p1}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->decodeString(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeString(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;, "Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser<TPARAM;TRESULT;TSTATUS;>;"
    invoke-static {p1}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->encodeString(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATUS;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;, "Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser<TPARAM;TRESULT;TSTATUS;>;"
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;->mStatus:Ljava/lang/Object;

    return-object v0
.end method

.method protected getWire()Lcom/squareup/wire/Wire;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;, "Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser<TPARAM;TRESULT;TSTATUS;>;"
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->getWire()Lcom/squareup/wire/Wire;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseResponse([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TRESU",
            "LT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setStatus(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATUS;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;, "Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser<TPARAM;TRESULT;TSTATUS;>;"
    .local p1, "status":Ljava/lang/Object;, "TSTATUS;"
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/protomessager/ProtoParser;->mStatus:Ljava/lang/Object;

    .line 34
    return-void
.end method
