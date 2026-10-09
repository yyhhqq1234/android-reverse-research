.class final Lc/t/m/g/cj$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/cj;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/cj;


# direct methods
.method constructor <init>(Lc/t/m/g/cj;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lc/t/m/g/cj$1;->a:Lc/t/m/g/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lc/t/m/g/cj$1;->a:Lc/t/m/g/cj;

    invoke-static {v0}, Lc/t/m/g/cj;->a(Lc/t/m/g/cj;)V

    .line 130
    iget-object v0, p0, Lc/t/m/g/cj$1;->a:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->m()V

    .line 131
    iget-object v0, p0, Lc/t/m/g/cj$1;->a:Lc/t/m/g/cj;

    invoke-static {v0}, Lc/t/m/g/cj;->b(Lc/t/m/g/cj;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 132
    return-void
.end method
