.class final Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;
.super Ljava/lang/Object;
.source "AbstractBootstrap.java"

# interfaces
.implements Lio/netty/bootstrap/ChannelFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/AbstractBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BootstrapChannelFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/netty/channel/Channel;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/bootstrap/ChannelFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;, "Lio/netty/bootstrap/AbstractBootstrap<TB;TC;>.BootstrapChannelFactory<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;->clazz:Ljava/lang/Class;

    .line 440
    return-void
.end method


# virtual methods
.method public newChannel()Lio/netty/channel/Channel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;, "Lio/netty/bootstrap/AbstractBootstrap<TB;TC;>.BootstrapChannelFactory<TT;>;"
    :try_start_0
    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/Channel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lio/netty/channel/ChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create Channel from class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;, "Lio/netty/bootstrap/AbstractBootstrap<TB;TC;>.BootstrapChannelFactory<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$BootstrapChannelFactory;->clazz:Ljava/lang/Class;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
