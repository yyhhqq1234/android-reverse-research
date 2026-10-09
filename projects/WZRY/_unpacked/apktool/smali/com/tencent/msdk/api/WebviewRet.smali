.class public Lcom/tencent/msdk/api/WebviewRet;
.super Ljava/lang/Object;
.source "WebviewRet.java"


# instance fields
.field public flag:I

.field public msgData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/WebviewRet;->flag:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/WebviewRet;->msgData:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/WebviewRet;->flag:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/WebviewRet;->msgData:Ljava/lang/String;

    .line 13
    iput p1, p0, Lcom/tencent/msdk/api/WebviewRet;->flag:I

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/msdk/api/WebviewRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";msgData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/api/WebviewRet;->msgData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
