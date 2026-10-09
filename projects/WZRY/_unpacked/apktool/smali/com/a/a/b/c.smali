.class public final Lcom/a/a/b/c;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/c$1;,
        Lcom/a/a/b/c$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/a/a/b/a/d;

.field private final k:Landroid/graphics/BitmapFactory$Options;

.field private final l:I

.field private final m:Z

.field private final n:Ljava/lang/Object;

.field private final o:Lcom/a/a/b/g/a;

.field private final p:Lcom/a/a/b/g/a;

.field private final q:Lcom/a/a/b/c/a;

.field private final r:Landroid/os/Handler;

.field private final s:Z


# direct methods
.method private constructor <init>(Lcom/a/a/b/c$a;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/a/a/b/c$a;->a(Lcom/a/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/b/c;->a:I

    .line 89
    invoke-static {p1}, Lcom/a/a/b/c$a;->b(Lcom/a/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/b/c;->b:I

    .line 90
    invoke-static {p1}, Lcom/a/a/b/c$a;->c(Lcom/a/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/b/c;->c:I

    .line 91
    invoke-static {p1}, Lcom/a/a/b/c$a;->d(Lcom/a/a/b/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {p1}, Lcom/a/a/b/c$a;->e(Lcom/a/a/b/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {p1}, Lcom/a/a/b/c$a;->f(Lcom/a/a/b/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {p1}, Lcom/a/a/b/c$a;->g(Lcom/a/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/b/c;->g:Z

    .line 95
    invoke-static {p1}, Lcom/a/a/b/c$a;->h(Lcom/a/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/b/c;->h:Z

    .line 96
    invoke-static {p1}, Lcom/a/a/b/c$a;->i(Lcom/a/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/b/c;->i:Z

    .line 97
    invoke-static {p1}, Lcom/a/a/b/c$a;->j(Lcom/a/a/b/c$a;)Lcom/a/a/b/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->j:Lcom/a/a/b/a/d;

    .line 98
    invoke-static {p1}, Lcom/a/a/b/c$a;->k(Lcom/a/a/b/c$a;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->k:Landroid/graphics/BitmapFactory$Options;

    .line 99
    invoke-static {p1}, Lcom/a/a/b/c$a;->l(Lcom/a/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lcom/a/a/b/c;->l:I

    .line 100
    invoke-static {p1}, Lcom/a/a/b/c$a;->m(Lcom/a/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/b/c;->m:Z

    .line 101
    invoke-static {p1}, Lcom/a/a/b/c$a;->n(Lcom/a/a/b/c$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->n:Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/a/a/b/c$a;->o(Lcom/a/a/b/c$a;)Lcom/a/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->o:Lcom/a/a/b/g/a;

    .line 103
    invoke-static {p1}, Lcom/a/a/b/c$a;->p(Lcom/a/a/b/c$a;)Lcom/a/a/b/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->p:Lcom/a/a/b/g/a;

    .line 104
    invoke-static {p1}, Lcom/a/a/b/c$a;->q(Lcom/a/a/b/c$a;)Lcom/a/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->q:Lcom/a/a/b/c/a;

    .line 105
    invoke-static {p1}, Lcom/a/a/b/c$a;->r(Lcom/a/a/b/c$a;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/c;->r:Landroid/os/Handler;

    .line 106
    invoke-static {p1}, Lcom/a/a/b/c$a;->s(Lcom/a/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/b/c;->s:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/c$a;Lcom/a/a/b/c$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/a/a/b/c;-><init>(Lcom/a/a/b/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/b/c;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/a/a/b/c;->a:I

    return v0
.end method

.method static synthetic b(Lcom/a/a/b/c;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/a/a/b/c;->b:I

    return v0
.end method

.method static synthetic c(Lcom/a/a/b/c;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/a/a/b/c;->c:I

    return v0
.end method

.method static synthetic d(Lcom/a/a/b/c;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/a/a/b/c;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/b/c;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/a/a/b/c;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/a/a/b/c;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/a/a/b/c;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/a/a/b/c;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/a/a/b/c;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/a/a/b/c;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/a/a/b/c;)Lcom/a/a/b/a/d;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->j:Lcom/a/a/b/a/d;

    return-object v0
.end method

.method static synthetic k(Lcom/a/a/b/c;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic l(Lcom/a/a/b/c;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/a/a/b/c;->l:I

    return v0
.end method

.method static synthetic m(Lcom/a/a/b/c;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/a/a/b/c;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/a/a/b/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/a/a/b/c;)Lcom/a/a/b/g/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->o:Lcom/a/a/b/g/a;

    return-object v0
.end method

.method static synthetic p(Lcom/a/a/b/c;)Lcom/a/a/b/g/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->p:Lcom/a/a/b/g/a;

    return-object v0
.end method

.method static synthetic q(Lcom/a/a/b/c;)Lcom/a/a/b/c/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->q:Lcom/a/a/b/c/a;

    return-object v0
.end method

.method static synthetic r(Lcom/a/a/b/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/a/a/b/c;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/a/a/b/c;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/a/a/b/c;->s:Z

    return v0
.end method

.method public static t()Lcom/a/a/b/c;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/a/a/b/c$a;

    invoke-direct {v0}, Lcom/a/a/b/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/c$a;->a()Lcom/a/a/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/a/a/b/c;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/b/c;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/a/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/b/c;->a:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/a/a/b/c;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/b/c;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/a/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/b/c;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/a/a/b/c;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/b/c;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/a/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/b/c;->c:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/a/a/b/c;->o:Lcom/a/a/b/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/a/a/b/c;->p:Lcom/a/a/b/g/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/a/a/b/c;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/a/a/b/c;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/a/a/b/c;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/a/a/b/c;->i:Z

    return v0
.end method

.method public j()Lcom/a/a/b/a/d;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/a/a/b/c;->j:Lcom/a/a/b/a/d;

    return-object v0
.end method

.method public k()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/a/a/b/c;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/a/a/b/c;->l:I

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/a/a/b/c;->m:Z

    return v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/a/a/b/c;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public o()Lcom/a/a/b/g/a;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/a/a/b/c;->o:Lcom/a/a/b/g/a;

    return-object v0
.end method

.method public p()Lcom/a/a/b/g/a;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/a/a/b/c;->p:Lcom/a/a/b/g/a;

    return-object v0
.end method

.method public q()Lcom/a/a/b/c/a;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/a/a/b/c;->q:Lcom/a/a/b/c/a;

    return-object v0
.end method

.method public r()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/a/a/b/c;->r:Landroid/os/Handler;

    return-object v0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/a/a/b/c;->s:Z

    return v0
.end method
