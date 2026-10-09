.class final Lc/t/m/g/f$b;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/f;


# direct methods
.method private constructor <init>(Lc/t/m/g/f;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lc/t/m/g/f$b;->a:Lc/t/m/g/f;

    .line 300
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    return-void
.end method

.method synthetic constructor <init>(Lc/t/m/g/f;Landroid/os/Looper;B)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lc/t/m/g/f$b;-><init>(Lc/t/m/g/f;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 306
    iget-object v0, p0, Lc/t/m/g/f$b;->a:Lc/t/m/g/f;

    iget-boolean v0, v0, Lc/t/m/g/f;->a:Z

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lc/t/m/g/f$b;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    iget-object v0, p0, Lc/t/m/g/f$b;->a:Lc/t/m/g/f;

    invoke-static {v0}, Lc/t/m/g/f;->a(Lc/t/m/g/f;)Lc/t/m/g/cj;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/dw;->b(Lc/t/m/g/cj;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lc/t/m/g/f$b;->a:Lc/t/m/g/f;

    invoke-static {v1, v0}, Lc/t/m/g/f;->a(Lc/t/m/g/f;Landroid/telephony/CellLocation;)V

    goto :goto_0
.end method
