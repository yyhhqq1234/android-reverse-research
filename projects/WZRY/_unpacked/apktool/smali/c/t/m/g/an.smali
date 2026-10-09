.class final Lc/t/m/g/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lc/t/m/g/ak;


# direct methods
.method constructor <init>(Lc/t/m/g/ak;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/an;->a:Lc/t/m/g/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lc/t/m/g/an;->a:Lc/t/m/g/ak;

    iget-object v0, v0, Lc/t/m/g/ak;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/an;->a:Lc/t/m/g/ak;

    iget-object v0, v0, Lc/t/m/g/ak;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lc/t/m/g/an;->a:Lc/t/m/g/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lc/t/m/g/ak;->b(ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc/t/m/g/an;->a:Lc/t/m/g/ak;

    invoke-virtual {v0, v2, v2}, Lc/t/m/g/ak;->a(ZZ)V

    goto :goto_0
.end method
