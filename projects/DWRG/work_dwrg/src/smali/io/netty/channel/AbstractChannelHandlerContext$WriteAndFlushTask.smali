.class final Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;
.super Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;
.source "AbstractChannelHandlerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteAndFlushTask"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler",
            "<",
            "Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 971
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask$1;

    invoke-direct {v0}, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask$1;-><init>()V

    sput-object v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;->RECYCLER:Lio/netty/util/Recycler;

    .line 976
    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 1

    .prologue
    .line 986
    .local p1, "handle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;-><init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;)V

    .line 987
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;)V
    .locals 0

    .prologue
    .line 985
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method static synthetic access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;
    .locals 1

    .prologue
    .line 978
    invoke-static {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;->newInstance(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 980
    sget-object v1, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v1}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;

    .line 981
    .local v0, "task":Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;
    invoke-static {v0, p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;->init(Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)V

    .line 982
    return-object v0
.end method


# virtual methods
.method protected recycle(Lio/netty/util/Recycler$Handle;)V
    .locals 1

    .prologue
    .line 997
    .local p1, "handle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    sget-object v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/Recycler;->recycle(Ljava/lang/Object;Lio/netty/util/Recycler$Handle;)Z

    .line 998
    return-void
.end method

.method public write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 991
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 992
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->access$2(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 993
    return-void
.end method
