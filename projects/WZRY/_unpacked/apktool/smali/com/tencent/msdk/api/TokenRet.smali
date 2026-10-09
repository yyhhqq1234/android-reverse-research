.class public Lcom/tencent/msdk/api/TokenRet;
.super Ljava/lang/Object;
.source "TokenRet.java"


# instance fields
.field public expiration:J

.field public type:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/TokenRet;->type:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expiration"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/TokenRet;->type:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 19
    iput p1, p0, Lcom/tencent/msdk/api/TokenRet;->type:I

    .line 20
    iput-object p2, p0, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 21
    iput-wide p3, p0, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 22
    return-void
.end method
