.class final Lio/netty/util/internal/ThreadLocalRandom$1;
.super Ljava/lang/Thread;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/ThreadLocalRandom;->getInitialSeedUniquifier()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p2, p0, Lio/netty/util/internal/ThreadLocalRandom$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 91
    .local v0, "random":Ljava/security/SecureRandom;
    iget-object v1, p0, Lio/netty/util/internal/ThreadLocalRandom$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method
