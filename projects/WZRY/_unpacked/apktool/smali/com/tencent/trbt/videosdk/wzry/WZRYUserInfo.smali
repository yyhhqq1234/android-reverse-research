.class public final Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "WZRYUserInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public openId:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public userType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    .line 65
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "wzry.WZRYUserInfo"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 99
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 101
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->$assertionsDisabled:Z

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
    .line 128
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 129
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    const-string v2, "openId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 130
    iget v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    const-string/jumbo v2, "userType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 131
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 132
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "_os"    # Ljava/lang/StringBuilder;
    .param p2, "_level"    # I

    .prologue
    const/4 v2, 0x1

    .line 136
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 137
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 138
    iget v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 139
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 140
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 76
    .local v0, "t":Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;
    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    .line 77
    invoke-static {v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    iget v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    .line 78
    invoke-static {v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    .line 79
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
    const-string v0, "com.tencent.trbt.videosdk.wzry.WZRYUserInfo"

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 86
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    .line 122
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    .line 123
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUserType(I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    .line 45
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 111
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 112
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 116
    :cond_0
    return-void
.end method
