.class Lcom/netease/mpay/f/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b/af;

.field final synthetic b:Lcom/netease/mpay/f/t;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/t;Lcom/netease/mpay/e/b/af;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/u;->b:Lcom/netease/mpay/f/t;

    iput-object p2, p0, Lcom/netease/mpay/f/u;->a:Lcom/netease/mpay/e/b/af;

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
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/f/u;->a:Lcom/netease/mpay/e/b/af;

    iget-object v0, v0, Lcom/netease/mpay/e/b/af;->k:Lcom/netease/mpay/e/b/i;

    iget-object v0, v0, Lcom/netease/mpay/e/b/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/i$a;

    iget-object v2, p0, Lcom/netease/mpay/f/u;->b:Lcom/netease/mpay/f/t;

    invoke-static {v2}, Lcom/netease/mpay/f/t;->a(Lcom/netease/mpay/f/t;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/u;->b:Lcom/netease/mpay/f/t;

    invoke-static {v3}, Lcom/netease/mpay/f/t;->b(Lcom/netease/mpay/f/t;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/netease/mpay/e/b/i$a;->a:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/netease/mpay/e/c/j$a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
