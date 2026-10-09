.class public final Lcom/tencent/trbt/videosdk/wzry/IPData;
.super Lcom/qq/taf/jce/JceStruct;
.source "IPData.java"


# static fields
.field static cache_addrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;",
            ">;"
        }
    .end annotation
.end field

.field public expirationTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/IPData;->cache_addrList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;-><init>()V

    .line 35
    .local v0, "__var_5":Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/IPData;->cache_addrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->addrList:Ljava/util/ArrayList;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->expirationTime:J

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;J)V
    .locals 2
    .param p2, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/trbt/videosdk/wzry/IPDataAddress;>;"
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->addrList:Ljava/util/ArrayList;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->expirationTime:J

    .line 21
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->addrList:Ljava/util/ArrayList;

    .line 22
    iput-wide p2, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->expirationTime:J

    .line 23
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/IPData;->cache_addrList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->addrList:Ljava/util/ArrayList;

    .line 41
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->expirationTime:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->expirationTime:J

    .line 42
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->addrList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 28
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/IPData;->expirationTime:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 29
    return-void
.end method
