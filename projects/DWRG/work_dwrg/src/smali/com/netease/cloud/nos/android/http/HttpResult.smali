.class public Lcom/netease/cloud/nos/android/http/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private msg:Lorg/json/JSONObject;

.field private statusCode:I


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Lorg/json/JSONObject;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->statusCode:I

    .line 12
    iput-object p2, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->msg:Lorg/json/JSONObject;

    .line 13
    iput-object p3, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->exception:Ljava/lang/Exception;

    .line 14
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMsg()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->msg:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->statusCode:I

    return v0
.end method

.method protected setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->exception:Ljava/lang/Exception;

    .line 38
    return-void
.end method

.method public setMsg(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "msg"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->msg:Lorg/json/JSONObject;

    .line 30
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/netease/cloud/nos/android/http/HttpResult;->statusCode:I

    .line 22
    return-void
.end method
