.class public final Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGRequestBody.java"


# static fields
.field static cache_bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

.field static cache_multiCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

.field public multiCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    invoke-direct {v1}, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;-><init>()V

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->cache_bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->cache_multiCmds:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;-><init>()V

    .line 45
    .local v0, "__var_11":Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->cache_multiCmds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    .line 13
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "bodyBase"    # Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "multiCmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;>;"
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    .line 13
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    .line 22
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x0

    .line 50
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->cache_bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    .line 51
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->cache_multiCmds:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 35
    :cond_1
    return-void
.end method
