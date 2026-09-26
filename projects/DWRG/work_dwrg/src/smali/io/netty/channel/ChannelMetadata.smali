.class public final Lio/netty/channel/ChannelMetadata;
.super Ljava/lang/Object;
.source "ChannelMetadata.java"


# instance fields
.field private final hasDisconnect:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "hasDisconnect"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lio/netty/channel/ChannelMetadata;->hasDisconnect:Z

    .line 36
    return-void
.end method


# virtual methods
.method public hasDisconnect()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lio/netty/channel/ChannelMetadata;->hasDisconnect:Z

    return v0
.end method
