.class Lio/netty/util/Recycler$1;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal",
        "<",
        "Lio/netty/util/Recycler$Stack",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/Recycler;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/Recycler$1;->this$0:Lio/netty/util/Recycler;

    .line 63
    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/netty/util/Recycler$Stack;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$Stack",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lio/netty/util/Recycler$Stack;

    iget-object v1, p0, Lio/netty/util/Recycler$1;->this$0:Lio/netty/util/Recycler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lio/netty/util/Recycler$1;->this$0:Lio/netty/util/Recycler;

    invoke-static {v3}, Lio/netty/util/Recycler;->access$0(Lio/netty/util/Recycler;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/util/Recycler$Stack;-><init>(Lio/netty/util/Recycler;Ljava/lang/Thread;I)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/util/Recycler$1;->initialValue()Lio/netty/util/Recycler$Stack;

    move-result-object v0

    return-object v0
.end method
