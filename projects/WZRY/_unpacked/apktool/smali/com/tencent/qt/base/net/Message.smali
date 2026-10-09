.class public Lcom/tencent/qt/base/net/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field public clientType:I

.field public command:I

.field public extra:[B

.field public flag:I

.field public payload:[B

.field public reserved:[B

.field public sequenceNumber:I

.field public subcmd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qt/base/net/Message;->sequenceNumber:I

    .line 5
    return-void
.end method

.method public static createMessage(IIIII[B[B[B)Lcom/tencent/qt/base/net/Message;
    .locals 1
    .param p0, "command"    # I
    .param p1, "subcmd"    # I
    .param p2, "clienttype"    # I
    .param p3, "flag"    # I
    .param p4, "seq"    # I
    .param p5, "payload"    # [B
    .param p6, "reserve"    # [B
    .param p7, "extra"    # [B

    .prologue
    .line 52
    new-instance v0, Lcom/tencent/qt/base/net/Message;

    invoke-direct {v0}, Lcom/tencent/qt/base/net/Message;-><init>()V

    .line 53
    .local v0, "msg":Lcom/tencent/qt/base/net/Message;
    iput p0, v0, Lcom/tencent/qt/base/net/Message;->command:I

    .line 54
    iput p1, v0, Lcom/tencent/qt/base/net/Message;->subcmd:I

    .line 55
    iput p2, v0, Lcom/tencent/qt/base/net/Message;->clientType:I

    .line 56
    iput p4, v0, Lcom/tencent/qt/base/net/Message;->sequenceNumber:I

    .line 57
    iput-object p5, v0, Lcom/tencent/qt/base/net/Message;->payload:[B

    .line 58
    iput-object p6, v0, Lcom/tencent/qt/base/net/Message;->reserved:[B

    .line 59
    iput-object p7, v0, Lcom/tencent/qt/base/net/Message;->extra:[B

    .line 60
    iput p3, v0, Lcom/tencent/qt/base/net/Message;->flag:I

    .line 61
    return-object v0
.end method

.method public static createMessage(IIII[B[B[B)Lcom/tencent/qt/base/net/Message;
    .locals 8
    .param p0, "command"    # I
    .param p1, "subcmd"    # I
    .param p2, "clienttype"    # I
    .param p3, "seq"    # I
    .param p4, "payload"    # [B
    .param p5, "reserve"    # [B
    .param p6, "extra"    # [B

    .prologue
    .line 48
    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/tencent/qt/base/net/Message;->createMessage(IIIII[B[B[B)Lcom/tencent/qt/base/net/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isAccessDenied()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/qt/base/net/Message;->flag:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
