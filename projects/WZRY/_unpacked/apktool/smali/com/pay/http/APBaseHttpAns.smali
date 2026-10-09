.class public Lcom/pay/http/APBaseHttpAns;
.super Ljava/lang/Object;
.source "APBaseHttpAns.java"

# interfaces
.implements Lcom/pay/http/IAPHttpAns;


# instance fields
.field private final REQUESTMAX:I

.field public errorMsg:Ljava/lang/String;

.field private httpClient:Lcom/pay/http/APBaseHttpReq;

.field private httpHandler:Lcom/pay/http/APHttpHandle;

.field public httpReqKey:Ljava/lang/String;

.field private httpReqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pay/http/APBaseHttpReq;",
            ">;"
        }
    .end annotation
.end field

.field private observer:Lcom/pay/http/IAPHttpAnsObserver;

.field private requestAgainCount:I

.field public resultCode:I

.field public resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pay/http/APHttpHandle;Lcom/pay/http/IAPHttpAnsObserver;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p1, "handle"    # Lcom/pay/http/APHttpHandle;
    .param p2, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pay/http/APHttpHandle;",
            "Lcom/pay/http/IAPHttpAnsObserver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pay/http/APBaseHttpReq;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "reqMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/pay/http/APBaseHttpReq;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/pay/http/APBaseHttpAns;->REQUESTMAX:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/pay/http/APBaseHttpAns;->resultCode:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpAns;->resultMsg:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpAns;->errorMsg:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpReqKey:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/pay/http/APBaseHttpAns;->requestAgainCount:I

    .line 43
    iput-object p1, p0, Lcom/pay/http/APBaseHttpAns;->httpHandler:Lcom/pay/http/APHttpHandle;

    .line 44
    iput-object p3, p0, Lcom/pay/http/APBaseHttpAns;->httpReqMap:Ljava/util/HashMap;

    .line 45
    iput-object p4, p0, Lcom/pay/http/APBaseHttpAns;->httpReqKey:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/pay/http/APBaseHttpAns;->observer:Lcom/pay/http/IAPHttpAnsObserver;

    .line 48
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpHandler:Lcom/pay/http/APHttpHandle;

    iget-object v1, p0, Lcom/pay/http/APBaseHttpAns;->httpReqKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/pay/http/APHttpHandle;->register(Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/pay/http/APBaseHttpAns;)Lcom/pay/http/APBaseHttpReq;
    .locals 1
    .param p0, "x0"    # Lcom/pay/http/APBaseHttpAns;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpClient:Lcom/pay/http/APBaseHttpReq;

    return-object v0
.end method

.method private register(Lcom/pay/http/APBaseHttpReq;)V
    .locals 2
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpReqMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/pay/http/APBaseHttpAns;->httpReqKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method private sendErrorMessage()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 124
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/pay/http/APBaseHttpAns;->httpHandler:Lcom/pay/http/APHttpHandle;

    invoke-virtual {v1, v0}, Lcom/pay/http/APHttpHandle;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method private sendFinishMessage([B)V
    .locals 2
    .param p1, "content"    # [B

    .prologue
    .line 115
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 116
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 117
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/pay/http/APBaseHttpAns;->httpHandler:Lcom/pay/http/APHttpHandle;

    invoke-virtual {v1, v0}, Lcom/pay/http/APHttpHandle;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method private sendStopMessage()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 131
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/pay/http/APBaseHttpAns;->httpHandler:Lcom/pay/http/APHttpHandle;

    invoke-virtual {v1, v0}, Lcom/pay/http/APHttpHandle;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method

.method private unRegister()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpReqMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/pay/http/APBaseHttpAns;->httpReqKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpReqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpReqKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/pay/http/APBaseHttpAns;->resultCode:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public onError(Lcom/pay/http/APBaseHttpReq;ILjava/lang/String;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;
    .param p2, "errorCode"    # I
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p3, p0, Lcom/pay/http/APBaseHttpAns;->errorMsg:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/pay/http/APBaseHttpAns;->resultMsg:Ljava/lang/String;

    .line 108
    iput p2, p0, Lcom/pay/http/APBaseHttpAns;->resultCode:I

    .line 109
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpAns;->unRegister()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/pay/http/APBaseHttpAns;->onErrorAns(Lcom/pay/http/APBaseHttpReq;)V

    .line 111
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpAns;->sendErrorMessage()V

    .line 112
    return-void
.end method

.method public onErrorAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 62
    return-void
.end method

.method public onFinish(Lcom/pay/http/APBaseHttpReq;)V
    .locals 1
    .param p1, "httpReq"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpAns;->unRegister()V

    .line 93
    invoke-virtual {p1}, Lcom/pay/http/APBaseHttpReq;->getContent()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/pay/http/APBaseHttpAns;->resultCode:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/http/APBaseHttpAns;->resultMsg:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpAns;->sendErrorMessage()V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/pay/http/APBaseHttpAns;->httpClient:Lcom/pay/http/APBaseHttpReq;

    .line 99
    invoke-virtual {p1}, Lcom/pay/http/APBaseHttpReq;->getContent()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/pay/http/APBaseHttpAns;->onFinishAns([BLcom/pay/http/APBaseHttpReq;)V

    .line 100
    invoke-virtual {p1}, Lcom/pay/http/APBaseHttpReq;->getContent()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pay/http/APBaseHttpAns;->sendFinishMessage([B)V

    goto :goto_0
.end method

.method public onFinishAns([BLcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "content"    # [B
    .param p2, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 59
    return-void
.end method

.method public onReceive([BIJLcom/pay/http/APBaseHttpReq;)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "len"    # I
    .param p3, "receiveSize"    # J
    .param p5, "httpReq"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 79
    invoke-virtual/range {p0 .. p5}, Lcom/pay/http/APBaseHttpAns;->onReceiveAns([BIJLcom/pay/http/APBaseHttpReq;)V

    .line 80
    return-void
.end method

.method public onReceiveAns([BIJLcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "b"    # I
    .param p3, "downsize"    # J
    .param p5, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 56
    return-void
.end method

.method public onStart(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpReq"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/pay/http/APBaseHttpAns;->register(Lcom/pay/http/APBaseHttpReq;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/pay/http/APBaseHttpAns;->onStartAns(Lcom/pay/http/APBaseHttpReq;)V

    .line 75
    return-void
.end method

.method public onStartAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 53
    return-void
.end method

.method public onStop(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpReq"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpAns;->unRegister()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/pay/http/APBaseHttpAns;->onStopAns(Lcom/pay/http/APBaseHttpReq;)V

    .line 86
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpAns;->sendStopMessage()V

    .line 87
    return-void
.end method

.method public onStopAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 65
    return-void
.end method

.method public reRegister()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpHandler:Lcom/pay/http/APHttpHandle;

    iget-object v1, p0, Lcom/pay/http/APBaseHttpAns;->httpReqKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/pay/http/APBaseHttpAns;->observer:Lcom/pay/http/IAPHttpAnsObserver;

    invoke-virtual {v0, v1, v2}, Lcom/pay/http/APHttpHandle;->register(Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V

    .line 69
    return-void
.end method

.method public requestAgain()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpClient:Lcom/pay/http/APBaseHttpReq;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pay/http/APBaseHttpAns;->requestAgainCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 168
    iget v0, p0, Lcom/pay/http/APBaseHttpAns;->requestAgainCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pay/http/APBaseHttpAns;->requestAgainCount:I

    .line 169
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpAns;->reRegister()V

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pay/http/APBaseHttpAns$1;

    invoke-direct {v1, p0}, Lcom/pay/http/APBaseHttpAns$1;-><init>(Lcom/pay/http/APBaseHttpAns;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpAns;->reRegister()V

    .line 179
    iget-object v0, p0, Lcom/pay/http/APBaseHttpAns;->httpClient:Lcom/pay/http/APBaseHttpReq;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/pay/http/APBaseHttpAns;->onError(Lcom/pay/http/APBaseHttpReq;ILjava/lang/String;)V

    goto :goto_0
.end method
