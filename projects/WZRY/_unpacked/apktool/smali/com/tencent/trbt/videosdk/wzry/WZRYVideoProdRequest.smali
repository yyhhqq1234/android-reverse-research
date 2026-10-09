.class public final Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;
.super Lcom/qq/taf/jce/JceStruct;
.source "WZRYVideoProdRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_storyInfo:[B


# instance fields
.field public storyInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9
    const-class v1, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->$assertionsDisabled:Z

    .line 90
    new-array v1, v2, [B

    check-cast v1, [B

    sput-object v1, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->cache_storyInfo:[B

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "__var_4":B
    sget-object v1, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->cache_storyInfo:[B

    check-cast v1, [B

    aput-byte v0, v1, v3

    .line 93
    return-void

    .end local v0    # "__var_4":B
    :cond_0
    move v1, v3

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    .line 35
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "storyInfo"    # [B

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    .line 39
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    .line 40
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "wzry.WZRYVideoProdRequest"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 71
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 73
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "_os"    # Ljava/lang/StringBuilder;
    .param p2, "_level"    # I

    .prologue
    .line 102
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 103
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    const-string/jumbo v2, "storyInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 104
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "_os"    # Ljava/lang/StringBuilder;
    .param p2, "_level"    # I

    .prologue
    .line 108
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 109
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple([BZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 110
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 50
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;

    .line 50
    .local v0, "t":Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    iget-object v2, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    .line 51
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.trbt.videosdk.wzry.WZRYVideoProdRequest"

    return-object v0
.end method

.method public getStoryInfo()[B
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 58
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v1, 0x0

    .line 97
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->cache_storyInfo:[B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    .line 98
    return-void
.end method

.method public setStoryInfo([B)V
    .locals 0
    .param p1, "storyInfo"    # [B

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    .line 31
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 86
    :cond_0
    return-void
.end method
