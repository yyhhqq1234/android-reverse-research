.class public Lcom/netease/mpay/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/e/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/e/b;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/netease/mpay/e/b;->n()V

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

.method public static a(Landroid/content/Context;)Lcom/netease/mpay/e/b;
    .locals 2

    new-instance v0, Lcom/netease/mpay/e/b;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/e/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/e/b;->c:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/netease/mpay/e/b;->b(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/e/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/a/c;

    return-object v0
.end method

.method private b(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;
    .locals 3

    sget-object v0, Lcom/netease/mpay/e/c;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/e/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/e/c/b;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netease/mpay/e/c/c;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netease/mpay/e/c/f;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netease/mpay/e/c/k;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/netease/mpay/e/c/l;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/netease/mpay/e/c/m;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/netease/mpay/e/c/n;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/netease/mpay/e/c/p;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/netease/mpay/e/c/t;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/netease/mpay/e/c/j;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/netease/mpay/e/c/g;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/netease/mpay/e/c/a;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/netease/mpay/e/c/o;

    iget-object v1, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/mpay/e/c/o;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static j()Z
    .locals 1

    invoke-static {}, Lcom/netease/mpay/e/c/a/d;->d()Z

    move-result v0

    return v0
.end method

.method private n()V
    .locals 3

    sget-object v0, Lcom/netease/mpay/hi;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/netease/mpay/hi;->a:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/hi;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/mpay/e/c/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/e/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/b;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/mpay/e/c/a/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/hi;->a:Ljava/lang/Boolean;

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/e/c/l;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->e:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/l;

    return-object v0
.end method

.method public b()Lcom/netease/mpay/e/c/m;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->f:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/m;

    return-object v0
.end method

.method public c()Lcom/netease/mpay/e/c/k;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->d:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/k;

    return-object v0
.end method

.method public d()Lcom/netease/mpay/e/c/c;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->b:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/c;

    return-object v0
.end method

.method public e()Lcom/netease/mpay/e/c/b;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->a:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/b;

    return-object v0
.end method

.method public f()Lcom/netease/mpay/e/c/p;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->h:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/p;

    return-object v0
.end method

.method public g()Lcom/netease/mpay/e/c/f;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->c:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/f;

    return-object v0
.end method

.method public h()Lcom/netease/mpay/e/c/n;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->g:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/n;

    return-object v0
.end method

.method public i()Lcom/netease/mpay/e/c/t;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->i:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/t;

    return-object v0
.end method

.method public k()Lcom/netease/mpay/e/c/g;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->k:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/g;

    return-object v0
.end method

.method public l()Lcom/netease/mpay/e/c/a;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->l:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/a;

    return-object v0
.end method

.method public m()Lcom/netease/mpay/e/c/o;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e/b$a;->m:Lcom/netease/mpay/e/b$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/b;->a(Lcom/netease/mpay/e/b$a;)Lcom/netease/mpay/e/c/a/c;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/c/o;

    return-object v0
.end method
