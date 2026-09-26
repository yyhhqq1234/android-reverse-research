.class public abstract Lim/yixin/sdk/http/multipart/PartBase;
.super Lim/yixin/sdk/http/multipart/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charSet"    # Ljava/lang/String;
    .param p4, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lim/yixin/sdk/http/multipart/Part;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lim/yixin/sdk/http/multipart/PartBase;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lim/yixin/sdk/http/multipart/PartBase;->contentType:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lim/yixin/sdk/http/multipart/PartBase;->charSet:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lim/yixin/sdk/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/PartBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/PartBase;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/PartBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lim/yixin/sdk/http/multipart/PartBase;->charSet:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lim/yixin/sdk/http/multipart/PartBase;->contentType:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lim/yixin/sdk/http/multipart/PartBase;->name:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lim/yixin/sdk/http/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    .line 129
    return-void
.end method
