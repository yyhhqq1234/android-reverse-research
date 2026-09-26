.class public Lcom/netease/cloud/nos/android/core/CallRet;
.super Ljava/lang/Object;
.source "CallRet.java"


# instance fields
.field private callbackRetMsg:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private fileParam:Ljava/lang/Object;

.field private httpCode:I

.field private requestId:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private uploadContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "fileParam"    # Ljava/lang/Object;
    .param p2, "uploadContext"    # Ljava/lang/String;
    .param p3, "httpCode"    # I
    .param p4, "requestId"    # Ljava/lang/String;
    .param p5, "callbackRetMsg"    # Ljava/lang/String;
    .param p6, "response"    # Ljava/lang/String;
    .param p7, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->fileParam:Ljava/lang/Object;

    .line 20
    iput-object p2, p0, Lcom/netease/cloud/nos/android/core/CallRet;->uploadContext:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/netease/cloud/nos/android/core/CallRet;->httpCode:I

    .line 22
    iput-object p4, p0, Lcom/netease/cloud/nos/android/core/CallRet;->requestId:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    .line 23
    invoke-static {p5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->callbackRetMsg:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/netease/cloud/nos/android/core/CallRet;->response:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/netease/cloud/nos/android/core/CallRet;->exception:Ljava/lang/Exception;

    .line 27
    return-void
.end method


# virtual methods
.method public getCallbackRetMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->callbackRetMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFileParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->fileParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->httpCode:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->uploadContext:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/netease/cloud/nos/android/core/CallRet;->httpCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallbackRetMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackRetMsg"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->callbackRetMsg:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->exception:Ljava/lang/Exception;

    .line 83
    return-void
.end method

.method public setFileParam(Ljava/lang/Object;)V
    .locals 0
    .param p1, "fileParam"    # Ljava/lang/Object;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->fileParam:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setHttpCode(I)V
    .locals 0
    .param p1, "httpCode"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->httpCode:I

    .line 51
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->requestId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->response:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUploadContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadContext"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/CallRet;->uploadContext:Ljava/lang/String;

    .line 43
    return-void
.end method
