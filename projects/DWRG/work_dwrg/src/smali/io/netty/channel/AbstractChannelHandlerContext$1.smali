.class Lio/netty/channel/AbstractChannelHandlerContext$1;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannelHandlerContext;->teardown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/AbstractChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$1;->this$0:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$1;->this$0:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->access$3(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 95
    return-void
.end method
