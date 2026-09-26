.class final Lio/netty/util/internal/chmv8/ForkJoinPool$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/chmv8/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lio/netty/util/internal/chmv8/ForkJoinPool;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 1

    .prologue
    .line 3289
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->access$100()Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3288
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$1;->run()Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method
