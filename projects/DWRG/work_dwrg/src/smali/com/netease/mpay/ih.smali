.class Lcom/netease/mpay/ih;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netease/mpay/ig;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ig;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ih;->b:Lcom/netease/mpay/ig;

    iput-object p2, p0, Lcom/netease/mpay/ih;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/ih;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/e/b;->a(Landroid/content/Context;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->m()Lcom/netease/mpay/e/c/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/o;->a()Lcom/netease/mpay/e/b/aa;

    move-result-object v3

    iget-object v0, v3, Lcom/netease/mpay/e/b/aa;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/netease/mpay/e/b/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v3, Lcom/netease/mpay/e/b/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/z;

    sget-object v1, Lcom/netease/mpay/e/b/z$a;->c:Lcom/netease/mpay/e/b/z$a;

    iget-object v5, v0, Lcom/netease/mpay/e/b/z;->f:Lcom/netease/mpay/e/b/z$a;

    if-ne v1, v5, :cond_2

    new-instance v1, Lcom/netease/mpay/ig;

    invoke-direct {v1}, Lcom/netease/mpay/ig;-><init>()V

    invoke-static {v1}, Lcom/netease/mpay/ig;->a(Lcom/netease/mpay/ig;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netease/mpay/e/b/z$a;->e:Lcom/netease/mpay/e/b/z$a;

    :goto_2
    iput-object v1, v0, Lcom/netease/mpay/e/b/z;->f:Lcom/netease/mpay/e/b/z$a;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/netease/mpay/e/b/z$a;->d:Lcom/netease/mpay/e/b/z$a;

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/netease/mpay/e/b/aa;

    iget-object v1, v3, Lcom/netease/mpay/e/b/aa;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/netease/mpay/e/b/aa;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0}, Lcom/netease/mpay/e/c/o;->a(Lcom/netease/mpay/e/b/aa;)V

    goto :goto_0
.end method
