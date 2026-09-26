.class Lcom/netease/mpay/f/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/a/a$b;

.field final synthetic b:Lcom/netease/mpay/f/au;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/au;Lcom/netease/mpay/f/a/a$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/av;->b:Lcom/netease/mpay/f/au;

    iput-object p2, p0, Lcom/netease/mpay/f/av;->a:Lcom/netease/mpay/f/a/a$b;

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

    iget-object v0, p0, Lcom/netease/mpay/f/av;->a:Lcom/netease/mpay/f/a/a$b;

    iget-object v0, v0, Lcom/netease/mpay/f/a/a$b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/server/response/m;

    iget-object v0, v0, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/av;->a:Lcom/netease/mpay/f/a/a$b;

    iget-object v0, v0, Lcom/netease/mpay/f/a/a$b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/server/response/m;

    iget-object v0, v0, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/av;->a:Lcom/netease/mpay/f/a/a$b;

    iget-object v0, v0, Lcom/netease/mpay/f/a/a$b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/server/response/m;

    iget-object v0, v0, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/i$a;

    iget-object v2, p0, Lcom/netease/mpay/f/av;->b:Lcom/netease/mpay/f/au;

    invoke-static {v2}, Lcom/netease/mpay/f/au;->a(Lcom/netease/mpay/f/au;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/av;->b:Lcom/netease/mpay/f/au;

    invoke-static {v3}, Lcom/netease/mpay/f/au;->b(Lcom/netease/mpay/f/au;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/netease/mpay/e/b/i$a;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/netease/mpay/e/c/j$a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
