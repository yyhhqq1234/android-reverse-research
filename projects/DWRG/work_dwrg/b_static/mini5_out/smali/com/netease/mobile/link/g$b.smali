.class public final Lcom/netease/mobile/link/g$b;
.super Lcom/netease/mobile/link/g$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/g;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/g$g<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/netease/mobile/link/g;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/g$b;->b:Lcom/netease/mobile/link/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mobile/link/g$g;-><init>(Lcom/netease/mobile/link/g$a;)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/mobile/link/g$b;->b:Lcom/netease/mobile/link/g;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/netease/mobile/link/g$b;->b:Lcom/netease/mobile/link/g;

    iget-object v3, p0, Lcom/netease/mobile/link/g$g;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/netease/mobile/link/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/mobile/link/g$b;->b:Lcom/netease/mobile/link/g;

    .line 3
    invoke-virtual {v0, v2}, Lcom/netease/mobile/link/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v3, p0, Lcom/netease/mobile/link/g$b;->b:Lcom/netease/mobile/link/g;

    .line 5
    iget-object v3, v3, Lcom/netease/mobile/link/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/netease/mobile/link/g$b;->b:Lcom/netease/mobile/link/g;

    .line 7
    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    throw v0
.end method
