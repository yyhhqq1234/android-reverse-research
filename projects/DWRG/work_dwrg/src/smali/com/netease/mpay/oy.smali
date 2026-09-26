.class public Lcom/netease/mpay/oy;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/e/b/af;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mpay/oy;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oy;->d:Ljava/lang/String;

    iput p4, p0, Lcom/netease/mpay/oy;->e:I

    iput-object p5, p0, Lcom/netease/mpay/oy;->f:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oy;->c:Lcom/netease/mpay/e/b/af;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/oy;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oy;->f:Ljava/lang/String;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/oy;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oy;->f:Ljava/lang/String;

    const-string v1, "webLogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    sget v0, Lcom/netease/mpay/bk;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/oy;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mpay/cq;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/oy;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oy;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0, v0}, Lcom/netease/mpay/e/c/j$a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/oy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/oy;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/oy;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mpay/cq;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oy;->g:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-direct {p0}, Lcom/netease/mpay/oy;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/mpay/oy;->b:Ljava/lang/String;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->aG:I

    invoke-static {v2, v3, v4}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    :cond_1
    :goto_2
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/hi;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_5

    sget v2, Lcom/netease/mpay/bk;->e:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    new-instance v2, Lcom/netease/mpay/widget/bi;

    iget-object v3, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/netease/mpay/widget/bi;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/widget/bi;->a()V

    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oy;->d:Ljava/lang/String;

    iget v1, p0, Lcom/netease/mpay/oy;->e:I

    invoke-static {v0, v1}, Lcom/netease/mpay/cq;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/oy;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    iget v2, p0, Lcom/netease/mpay/oy;->e:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/mpay/oy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/server/response/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/netease/mpay/oy;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/netease/mpay/widget/m;

    iget-object v2, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/netease/mpay/widget/m;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/netease/mpay/oz;

    iget-object v3, p0, Lcom/netease/mpay/oy;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4}, Lcom/netease/mpay/oz;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/m;->a(Lcom/netease/mpay/widget/be;)V

    invoke-virtual {v0}, Lcom/netease/mpay/widget/m;->a()V

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/oy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/oy;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oy;->c:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->s:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/mpay/oy;->a()V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/netease/mpay/oy;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oy;->h:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/oy;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/netease/mpay/oy;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oy;->c:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->s:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/mpay/oy;->a()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/netease/mpay/oy;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oy;->h:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oy;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oy;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
