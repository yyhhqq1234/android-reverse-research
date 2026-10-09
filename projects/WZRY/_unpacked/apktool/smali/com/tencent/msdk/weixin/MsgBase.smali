.class public abstract Lcom/tencent/msdk/weixin/MsgBase;
.super Lorg/json/JSONObject;
.source "MsgBase.java"


# instance fields
.field mMsgType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgtype"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgBase;->mMsgType:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const-string v0, ""

    .line 36
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgBase;->mMsgType:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMsgType cann\'t be Empty;  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getMsgKey()Ljava/lang/String;
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgBase;->mMsgType:Ljava/lang/String;

    return-object v0
.end method
