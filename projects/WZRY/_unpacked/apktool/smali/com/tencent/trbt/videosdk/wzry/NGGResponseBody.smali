.class public final Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGResponseBody.java"


# static fields
.field static cache_bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

.field static cache_multiCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

.field public multiCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->cache_multiCmds:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;-><init>()V

    .line 41
    .local v0, "__var_18":Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->cache_multiCmds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    invoke-direct {v1}, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;-><init>()V

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->cache_bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

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
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->multiCmds:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;)V
    .locals 1
    .param p2, "bodyBase"    # Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;",
            ">;",
            "Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "multiCmds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;>;"
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->multiCmds:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    .line 21
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->multiCmds:Ljava/util/ArrayList;

    .line 22
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

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
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->cache_multiCmds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->multiCmds:Ljava/util/ArrayList;

    .line 51
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->cache_bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    .line 52
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->multiCmds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->multiCmds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 35
    :cond_1
    return-void
.end method
