.class public final Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;
.super Lcom/qq/taf/jce/JceStruct;
.source "WZRYGetVideoCfgResponse.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_cfg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static cache_userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;


# instance fields
.field public cfg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;

.field public ret:I

.field public userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    const-class v2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->$assertionsDisabled:Z

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cache_cfg:Ljava/util/Map;

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 143
    .local v0, "__var_2":Ljava/lang/Integer;
    const-string v1, ""

    .line 144
    .local v1, "__var_3":Ljava/lang/String;
    sget-object v2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cache_cfg:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v2, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    invoke-direct {v2}, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;-><init>()V

    sput-object v2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cache_userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 149
    return-void

    .end local v0    # "__var_2":Ljava/lang/Integer;
    .end local v1    # "__var_3":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 9
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    .line 27
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;)V
    .locals 2
    .param p1, "ret"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p4, "userInfo"    # Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "cfg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    .line 27
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 75
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    .line 76
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    .line 78
    iput-object p4, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 79
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "wzry.WZRYGetVideoCfgResponse"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 113
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 115
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    sget-boolean v2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->$assertionsDisabled:Z

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
    .line 161
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 162
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    const-string v2, "ret"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 163
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    const-string v2, "msg"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 164
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    const-string v2, "cfg"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Map;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 165
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    const-string/jumbo v2, "userInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 166
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "_os"    # Ljava/lang/StringBuilder;
    .param p2, "_level"    # I

    .prologue
    const/4 v2, 0x1

    .line 170
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 171
    .local v0, "_ds":Lcom/qq/taf/jce/JceDisplayer;
    iget v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(IZ)Lcom/qq/taf/jce/JceDisplayer;

    .line 172
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/lang/String;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 173
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Ljava/util/Map;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 174
    iget-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 175
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;

    .line 89
    .local v0, "t":Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;
    iget v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    iget v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    .line 90
    invoke-static {v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    .line 91
    invoke-static {v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    .line 92
    invoke-static {v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    iget-object v3, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 93
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
    const-string v0, "com.tencent.trbt.videosdk.wzry.WZRYGetVideoCfgResponse"

    return-object v0
.end method

.method public getCfg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    return v0
.end method

.method public getUserInfo()Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Need define key first!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v1, 0x0

    return v1
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    .line 154
    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cache_cfg:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    .line 156
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cache_userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 157
    return-void
.end method

.method public setCfg(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "cfg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRet(I)V
    .locals 0
    .param p1, "ret"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    .line 37
    return-void
.end method

.method public setUserInfo(Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .line 67
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 124
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 125
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->msg:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->cfg:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 137
    :cond_2
    return-void
.end method
