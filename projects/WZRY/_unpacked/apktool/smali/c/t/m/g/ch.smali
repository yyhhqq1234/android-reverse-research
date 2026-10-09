.class public final Lc/t/m/g/ch;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field public final a:Lc/t/m/g/cj;

.field public volatile b:Z

.field public c:Lc/t/m/g/ci;

.field private volatile d:Z

.field private e:Lc/t/m/g/dj;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/t/m/g/dj;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lc/t/m/g/dn;

.field private h:Lc/t/m/g/dk;

.field private i:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lc/t/m/g/cj;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lc/t/m/g/ch;->d:Z

    .line 36
    iput-object p1, p0, Lc/t/m/g/ch;->a:Lc/t/m/g/cj;

    .line 37
    iget-object v0, p0, Lc/t/m/g/ch;->a:Lc/t/m/g/cj;

    invoke-virtual {v0, p0}, Lc/t/m/g/cj;->a(Ljava/lang/Object;)V

    .line 38
    iput-boolean v1, p0, Lc/t/m/g/ch;->b:Z

    .line 39
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/t/m/g/ch;->d:Z

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 151
    :cond_2
    iget-object v0, p0, Lc/t/m/g/ch;->a:Lc/t/m/g/cj;

    invoke-static {v0}, Lc/t/m/g/dw;->a(Lc/t/m/g/cj;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    .line 154
    :cond_3
    iget-object v0, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    iget-object v1, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    const/4 v2, 0x0

    iget-object v3, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lc/t/m/g/ci;->a(Lc/t/m/g/dk;Lc/t/m/g/dn;Ljava/util/List;)V

    .line 159
    :cond_4
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    iget-object v1, v1, Lc/t/m/g/dk;->a:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lc/t/m/g/ch;->i:Landroid/location/Location;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/ch;->d:Z

    .line 106
    iput-object v1, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    .line 107
    iput-object v1, p0, Lc/t/m/g/ch;->e:Lc/t/m/g/dj;

    .line 108
    iput-object v1, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    .line 109
    iput-object v1, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    .line 110
    return-void
.end method

.method public final onCellInfoEvent(Lc/t/m/g/dj;)V
    .locals 3

    .prologue
    .line 42
    iget-boolean v0, p0, Lc/t/m/g/ch;->b:Z

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lc/t/m/g/ch;->e:Lc/t/m/g/dj;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/t/m/g/ch;->e:Lc/t/m/g/dj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/t/m/g/ch;->e:Lc/t/m/g/dj;

    invoke-virtual {v1}, Lc/t/m/g/dj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc/t/m/g/dj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-object p1, p0, Lc/t/m/g/ch;->e:Lc/t/m/g/dj;

    iget-object v1, p0, Lc/t/m/g/ch;->a:Lc/t/m/g/cj;

    invoke-static {v1}, Lc/t/m/g/dw;->a(Lc/t/m/g/cj;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/t/m/g/ch;->b()V

    goto :goto_0
.end method

.method public final onGpsInfoEvent(Lc/t/m/g/dk;)V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lc/t/m/g/ch;->b:Z

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iput-object p1, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    iget-object v0, p0, Lc/t/m/g/ch;->i:Landroid/location/Location;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    iget-object v0, v0, Lc/t/m/g/dk;->a:Landroid/location/Location;

    iget-object v1, p0, Lc/t/m/g/ch;->i:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lc/t/m/g/ch;->b()V

    goto :goto_0
.end method

.method public final onNetworkEvent(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lc/t/m/g/ch;->b:Z

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->b()V

    goto :goto_0
.end method

.method public final onStatusEvent(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lc/t/m/g/ch;->b:Z

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/ch;->d:Z

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/ch;->d:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2ee2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onWifiInfoEvent(Lc/t/m/g/dn;)V
    .locals 4

    .prologue
    .line 49
    iget-boolean v0, p0, Lc/t/m/g/ch;->b:Z

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-object p1, p0, Lc/t/m/g/ch;->g:Lc/t/m/g/dn;

    iget-boolean v0, p0, Lc/t/m/g/ch;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ch;->g:Lc/t/m/g/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    iget-object v1, p0, Lc/t/m/g/ch;->h:Lc/t/m/g/dk;

    iget-object v2, p0, Lc/t/m/g/ch;->g:Lc/t/m/g/dn;

    iget-object v3, p0, Lc/t/m/g/ch;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lc/t/m/g/ci;->a(Lc/t/m/g/dk;Lc/t/m/g/dn;Ljava/util/List;)V

    goto :goto_0
.end method
