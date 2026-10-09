.class public Lcom/tencent/msdk/communicator/MHttpRequest;
.super Ljava/lang/Object;
.source "MHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private body:[B

.field private method:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

.field private params:Landroid/os/Bundle;

.field private strBody:Ljava/lang/String;

.field private task_id:J

.field private test:Lcom/tencent/msdk/a/e;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->url:Ljava/lang/String;

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->task_id:J

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    .line 19
    new-instance v0, Lcom/tencent/msdk/a/e;

    const-string v1, ""

    invoke-static {v1}, Lcom/tencent/msdk/a/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/msdk/a/e;-><init>([B)V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->test:Lcom/tencent/msdk/a/e;

    .line 23
    invoke-virtual {p0}, Lcom/tencent/msdk/communicator/MHttpRequest;->createTaskId()V

    .line 24
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public createTaskId()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->task_id:J

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->task_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public getBody()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    return-object v0
.end method

.method public getMethod()Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->method:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStrBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->strBody:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->task_id:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->test:Lcom/tencent/msdk/a/e;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/a/e;->f1([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    goto :goto_0
.end method

.method public setBody([B)V
    .locals 0
    .param p1, "body"    # [B

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->body:[B

    .line 59
    return-void
.end method

.method public setMethod(Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->method:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    .line 47
    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->params:Landroid/os/Bundle;

    .line 39
    return-void
.end method

.method public setStrBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->strBody:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/msdk/communicator/MHttpRequest;->url:Ljava/lang/String;

    .line 31
    return-void
.end method
