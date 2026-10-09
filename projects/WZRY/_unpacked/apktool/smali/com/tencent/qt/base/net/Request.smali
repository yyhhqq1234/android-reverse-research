.class public Lcom/tencent/qt/base/net/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field public static final FLAG_ENCRYPT:I = 0x1


# instance fields
.field public command:I

.field public extra:[B

.field public flag:I

.field public needSequenceNumber:Z

.field public payload:[B

.field public reserved:[B

.field public sequenceNumber:I

.field public subcmd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qt/base/net/Request;->sequenceNumber:I

    return-void
.end method

.method public static createEncryptRequest(II[B[B[B)Lcom/tencent/qt/base/net/Request;
    .locals 2
    .param p0, "command"    # I
    .param p1, "subcmd"    # I
    .param p2, "payload"    # [B
    .param p3, "reserve"    # [B
    .param p4, "extra"    # [B

    .prologue
    const/4 v1, 0x1

    .line 45
    new-instance v0, Lcom/tencent/qt/base/net/Request;

    invoke-direct {v0}, Lcom/tencent/qt/base/net/Request;-><init>()V

    .line 46
    .local v0, "request":Lcom/tencent/qt/base/net/Request;
    iput p0, v0, Lcom/tencent/qt/base/net/Request;->command:I

    .line 47
    iput p1, v0, Lcom/tencent/qt/base/net/Request;->subcmd:I

    .line 48
    iput-object p2, v0, Lcom/tencent/qt/base/net/Request;->payload:[B

    .line 49
    iput-object p3, v0, Lcom/tencent/qt/base/net/Request;->reserved:[B

    .line 50
    iput v1, v0, Lcom/tencent/qt/base/net/Request;->flag:I

    .line 51
    iput-object p4, v0, Lcom/tencent/qt/base/net/Request;->extra:[B

    .line 52
    iput-boolean v1, v0, Lcom/tencent/qt/base/net/Request;->needSequenceNumber:Z

    .line 53
    return-object v0
.end method
