.class final Lc/t/m/g/f$c;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lc/t/m/g/cj;

.field private b:Lc/t/m/g/dj;


# direct methods
.method public constructor <init>(Lc/t/m/g/cj;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lc/t/m/g/f$c;->a:Lc/t/m/g/cj;

    .line 323
    return-void
.end method


# virtual methods
.method public final a(Lc/t/m/g/dj;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lc/t/m/g/f$c;->b:Lc/t/m/g/dj;

    .line 327
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lc/t/m/g/f$c;->a:Lc/t/m/g/cj;

    .line 332
    iget-object v1, p0, Lc/t/m/g/f$c;->b:Lc/t/m/g/dj;

    .line 333
    if-eqz v1, :cond_0

    .line 334
    invoke-static {v0}, Lc/t/m/g/dw;->c(Lc/t/m/g/cj;)Ljava/util/List;

    move-result-object v2

    .line 335
    invoke-virtual {v1, v2}, Lc/t/m/g/dj;->a(Ljava/util/List;)V

    .line 336
    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    .line 338
    :cond_0
    return-void
.end method
