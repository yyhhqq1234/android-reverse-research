.class Lcom/netease/mpay/id;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hy;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/id;->a:Lcom/netease/mpay/hy;

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
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/id;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->l(Lcom/netease/mpay/hy;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/t;->a()Lcom/netease/mpay/e/b/y;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/mpay/id;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->l(Lcom/netease/mpay/hy;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/t;->b()V

    invoke-virtual {v6}, Lcom/netease/mpay/e/b/y;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/id;->a:Lcom/netease/mpay/hy;

    iget-object v1, v6, Lcom/netease/mpay/e/b/y;->a:Ljava/lang/String;

    iget-object v2, v6, Lcom/netease/mpay/e/b/y;->b:Ljava/lang/String;

    iget-object v3, v6, Lcom/netease/mpay/e/b/y;->c:Ljava/lang/String;

    iget-wide v4, v6, Lcom/netease/mpay/e/b/y;->d:J

    iget-wide v6, v6, Lcom/netease/mpay/e/b/y;->e:J

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/hy;->a(Lcom/netease/mpay/hy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method
