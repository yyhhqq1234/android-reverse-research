.class public Lcom/tencent/qt/base/net/NetworkBroadcast;
.super Lcom/tencent/qt/base/net/Message;
.source "NetworkBroadcast.java"


# static fields
.field public static final NB_COMMAND:I = 0x10000

.field public static final NB_SUBCMD_UNAVAILABLE:I = 0x1


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "subcmd"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/qt/base/net/Message;-><init>()V

    .line 8
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/tencent/qt/base/net/NetworkBroadcast;->command:I

    .line 9
    iput p1, p0, Lcom/tencent/qt/base/net/NetworkBroadcast;->subcmd:I

    .line 10
    return-void
.end method
