.class public final Lcom/tencent/qt/base/net/ChannelBroadcast;
.super Lcom/tencent/qt/base/net/Message;
.source "ChannelBroadcast.java"


# static fields
.field public static final CB_COMMAND:I = 0xffff

.field public static final CB_SUBCMD_BREAKDOWN:I = 0x3

.field public static final CB_SUBCMD_CONNECTED:I = 0x1

.field public static final CB_SUBCMD_DISCONNECTED:I = 0x2


# instance fields
.field private type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "channelType"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/qt/base/net/Message;-><init>()V

    .line 13
    iput p1, p0, Lcom/tencent/qt/base/net/ChannelBroadcast;->type:I

    .line 14
    const v0, 0xffff

    iput v0, p0, Lcom/tencent/qt/base/net/ChannelBroadcast;->command:I

    .line 15
    return-void
.end method


# virtual methods
.method public getChannelType()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/tencent/qt/base/net/ChannelBroadcast;->type:I

    return v0
.end method
