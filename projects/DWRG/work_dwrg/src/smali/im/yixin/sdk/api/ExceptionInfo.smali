.class public Lim/yixin/sdk/api/ExceptionInfo;
.super Ljava/lang/Object;
.source "ExceptionInfo.java"


# static fields
.field public static final OPERATION_TYPE_OTHER_LOCALSHARE:Ljava/lang/String; = "localshare"


# instance fields
.field public appIdThirdpart:Ljava/lang/String;

.field public appNameThirdpart:Ljava/lang/String;

.field public classError:Ljava/lang/Class;

.field public dataOther:Ljava/lang/String;

.field public feedBackTitle:Ljava/lang/String;

.field public imageDataOther:[B

.field public isProductHttp:Z

.field public operationTypeOther:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field public req:Lim/yixin/sdk/api/BaseReq;

.field public sdkVersionThirdpart:Ljava/lang/String;

.field public throwable:Ljava/lang/Throwable;

.field public thumbDataOther:[B


# direct methods
.method public constructor <init>(Lim/yixin/sdk/api/BaseReq;Ljava/lang/Class;)V
    .locals 1
    .param p1, "paramBaseReq"    # Lim/yixin/sdk/api/BaseReq;
    .param p2, "classErrorParam"    # Ljava/lang/Class;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->reason:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->appIdThirdpart:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->appNameThirdpart:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->sdkVersionThirdpart:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->isProductHttp:Z

    .line 98
    iput-object p1, p0, Lim/yixin/sdk/api/ExceptionInfo;->req:Lim/yixin/sdk/api/BaseReq;

    .line 99
    iput-object p2, p0, Lim/yixin/sdk/api/ExceptionInfo;->classError:Ljava/lang/Class;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "classErrorParam"    # Ljava/lang/Class;
    .param p2, "errorInfo"    # Ljava/lang/String;
    .param p3, "throwableParam"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->reason:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->appIdThirdpart:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->appNameThirdpart:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->sdkVersionThirdpart:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->isProductHttp:Z

    .line 92
    iput-object p1, p0, Lim/yixin/sdk/api/ExceptionInfo;->classError:Ljava/lang/Class;

    .line 93
    iput-object p2, p0, Lim/yixin/sdk/api/ExceptionInfo;->reason:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    .line 95
    return-void
.end method


# virtual methods
.method public appendReason(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Lim/yixin/sdk/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->reason:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->reason:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/yixin/sdk/api/ExceptionInfo;->reason:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReq()Lim/yixin/sdk/api/SendMessageToYX$Req;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->req:Lim/yixin/sdk/api/BaseReq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->req:Lim/yixin/sdk/api/BaseReq;

    instance-of v0, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lim/yixin/sdk/api/ExceptionInfo;->req:Lim/yixin/sdk/api/BaseReq;

    check-cast v0, Lim/yixin/sdk/api/SendMessageToYX$Req;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReqMessage()Lim/yixin/sdk/api/YXMessage;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lim/yixin/sdk/api/ExceptionInfo;->getReq()Lim/yixin/sdk/api/SendMessageToYX$Req;

    move-result-object v0

    .line 134
    .local v0, "reqTmp":Lim/yixin/sdk/api/SendMessageToYX$Req;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReqMessageData()Lim/yixin/sdk/api/YXMessage$YXMessageData;
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lim/yixin/sdk/api/ExceptionInfo;->getReqMessage()Lim/yixin/sdk/api/YXMessage;

    move-result-object v0

    .line 146
    .local v0, "message":Lim/yixin/sdk/api/YXMessage;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, v0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    .line 149
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReqMessageThumbData()[B
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lim/yixin/sdk/api/ExceptionInfo;->getReqMessage()Lim/yixin/sdk/api/YXMessage;

    move-result-object v0

    .line 158
    .local v0, "message":Lim/yixin/sdk/api/YXMessage;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, v0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 161
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
