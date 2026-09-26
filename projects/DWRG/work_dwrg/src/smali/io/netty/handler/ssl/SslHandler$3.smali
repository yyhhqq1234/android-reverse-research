.class Lio/netty/handler/ssl/SslHandler$3;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->handshake()Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$3;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$3;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$400(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$3;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->access$500()Ljavax/net/ssl/SSLException;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$600(Lio/netty/handler/ssl/SslHandler;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
