.class final Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;
.super Ljava/lang/Object;
.source "ChannelMatchers.java"

# interfaces
.implements Lio/netty/channel/group/ChannelMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/group/ChannelMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositeMatcher"
.end annotation


# instance fields
.field private final matchers:[Lio/netty/channel/group/ChannelMatcher;


# direct methods
.method varargs constructor <init>([Lio/netty/channel/group/ChannelMatcher;)V
    .locals 0
    .param p1, "matchers"    # [Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;->matchers:[Lio/netty/channel/group/ChannelMatcher;

    .line 118
    return-void
.end method


# virtual methods
.method public matches(Lio/netty/channel/Channel;)Z
    .locals 6
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v3, p0, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;->matchers:[Lio/netty/channel/group/ChannelMatcher;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 127
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 122
    :cond_1
    aget-object v0, v3, v2

    .line 123
    .local v0, "m":Lio/netty/channel/group/ChannelMatcher;
    invoke-interface {v0, p1}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
