.class public Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;
.super Ljava/lang/Exception;
.source "SDKHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/util/SDKHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpCodeException"
.end annotation


# instance fields
.field private httpEntity:Lorg/apache/http/HttpEntity;

.field private response:Ljava/lang/String;

.field private statusLine:Lorg/apache/http/StatusLine;


# direct methods
.method constructor <init>(Lorg/apache/http/StatusLine;Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p1, "statusLine"    # Lorg/apache/http/StatusLine;
    .param p2, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 248
    iput-object p1, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->statusLine:Lorg/apache/http/StatusLine;

    .line 249
    iput-object p2, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->httpEntity:Lorg/apache/http/HttpEntity;

    .line 251
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getHttpEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->httpEntity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->statusLine:Lorg/apache/http/StatusLine;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpCodeException{response=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;->statusLine:Lorg/apache/http/StatusLine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
