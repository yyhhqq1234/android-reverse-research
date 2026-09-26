.class public Lcom/netease/mpay/f/au$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field protected a:Lcom/netease/mpay/e/b;

.field protected b:Lcom/netease/mpay/server/d;

.field protected c:Lcom/netease/mpay/e/b/f;

.field protected d:Lcom/netease/mpay/e/b/o;

.field final synthetic e:Lcom/netease/mpay/f/au;

.field private f:Lcom/netease/mpay/f/a/d$d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/au;Lcom/netease/mpay/f/a/d$d;)V
    .locals 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netease/mpay/f/au$b;->e:Lcom/netease/mpay/f/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/f/au$b;->f:Lcom/netease/mpay/f/a/d$d;

    iget-object v1, p2, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    iput-object v1, p0, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    new-instance v1, Lcom/netease/mpay/server/d;

    invoke-static {p1}, Lcom/netease/mpay/f/au;->d(Lcom/netease/mpay/f/au;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1}, Lcom/netease/mpay/f/au;->e(Lcom/netease/mpay/f/au;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/netease/mpay/f/au;->f(Lcom/netease/mpay/f/au;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    invoke-virtual {p2}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-boolean v1, p1, Lcom/netease/mpay/f/au;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    invoke-static {p1}, Lcom/netease/mpay/f/au;->g(Lcom/netease/mpay/f/au;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v1, p0, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget v2, v2, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/a$f;

    invoke-static {p1}, Lcom/netease/mpay/f/au;->h(Lcom/netease/mpay/f/au;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ap:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v0, p0, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    :cond_2
    iget-boolean v1, p1, Lcom/netease/mpay/f/au;->b:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    :cond_3
    invoke-virtual {p2, v0}, Lcom/netease/mpay/f/a/d$d;->b(Lcom/netease/mpay/e/b/o;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/e/b/o;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au$b;->f:Lcom/netease/mpay/f/a/d$d;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/f/a/d$d;->b(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method
