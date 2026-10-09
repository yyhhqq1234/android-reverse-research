.class final Lc/t/m/g/ci$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/ci;-><init>(Lc/t/m/g/cj;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/ci;


# direct methods
.method constructor <init>(Lc/t/m/g/ci;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lc/t/m/g/ci$1;->a:Lc/t/m/g/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lc/t/m/g/ci$1;->a:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc/t/m/g/ci$1;->a:Lc/t/m/g/ci;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/t/m/g/ci;->d:Z

    .line 65
    iget-object v0, p0, Lc/t/m/g/ci$1;->a:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lc/t/m/g/ci$1;->a:Lc/t/m/g/ci;

    iput-object v2, v0, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    .line 67
    iget-object v0, p0, Lc/t/m/g/ci$1;->a:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 68
    iget-object v0, p0, Lc/t/m/g/ci$1;->a:Lc/t/m/g/ci;

    iput-object v2, v0, Lc/t/m/g/ci;->e:Landroid/os/HandlerThread;

    .line 70
    :cond_0
    return-void
.end method
