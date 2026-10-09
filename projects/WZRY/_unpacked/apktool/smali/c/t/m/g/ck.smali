.class public final Lc/t/m/g/ck;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field public final a:Lc/t/m/g/cj;

.field public b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field k:I

.field l:I

.field public m:J

.field public n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc/t/m/g/cj;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x2

    iput v0, p0, Lc/t/m/g/ck;->n:I

    .line 66
    const-string v0, "5.3.0"

    iput-object v0, p0, Lc/t/m/g/ck;->p:Ljava/lang/String;

    .line 75
    const-string v0, "171030"

    iput-object v0, p0, Lc/t/m/g/ck;->q:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lc/t/m/g/ck;->a:Lc/t/m/g/cj;

    .line 95
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lc/t/m/g/ck;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "0123456789ABCDEF"

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/ck;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc/t/m/g/ck;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "0123456789ABCDEF"

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/ck;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lc/t/m/g/ck;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ck;->f:Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    const-string v0, "0123456789ABCDEF"

    .line 143
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc/t/m/g/ck;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lc/t/m/g/ck;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 327
    const-string v0, "None"

    .line 329
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/ck;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lc/t/m/g/ck;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 338
    const-string v0, "None"

    .line 340
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/ck;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lc/t/m/g/ck;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    invoke-virtual {p0}, Lc/t/m/g/ck;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc/t/m/g/ck;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc/t/m/g/ck;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_QQGeoLocation"

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/f$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/ck;->o:Ljava/lang/String;

    .line 471
    :cond_0
    iget-object v0, p0, Lc/t/m/g/ck;->o:Ljava/lang/String;

    return-object v0
.end method
