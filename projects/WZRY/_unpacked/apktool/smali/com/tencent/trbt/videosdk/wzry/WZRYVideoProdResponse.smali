.class public final Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;
.super Lcom/qq/taf/jce/JceStruct;
.source "WZRYVideoProdResponse.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public msg:Ljava/lang/String;

.field public ret:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "ret"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    .line 52
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "wzry.WZRYVideoProdResponse"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 85
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 87
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->$assertionsDisabled:Z

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
    .line 112
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 113
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    const-string v2, "ret"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 114
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    const-string v2, "msg"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 115
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "_os"    # Ljava/lang/StringBuilder;
    .param p2, "_level"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 120
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 121
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 122
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 62
    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;

    .line 63
    .local v0, "t":Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;
    iget v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    iget v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    .line 64
    invoke-static {v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    .line 65
    invoke-static {v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.trbt.videosdk.wzry.WZRYVideoProdResponse"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    .line 107
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRet(I)V
    .locals 0
    .param p1, "ret"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    .line 33
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 96
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->ret:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 97
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;->msg:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 101
    :cond_0
    return-void
.end method
