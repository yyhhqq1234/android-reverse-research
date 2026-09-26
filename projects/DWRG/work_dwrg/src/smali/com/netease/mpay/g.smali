.class Lcom/netease/mpay/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x65

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_0
    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->b(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    new-instance v1, Lcom/netease/mpay/e/b/a;

    invoke-direct {v1}, Lcom/netease/mpay/e/b/a;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/mpay/e;->a(Lcom/netease/mpay/e;Lcom/netease/mpay/e/b/a;)Lcom/netease/mpay/e/b/a;

    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->b(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b/a;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/netease/mpay/e/b/a;->a:I

    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->b(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v1, v1, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v1}, Lcom/netease/mpay/e;->c(Lcom/netease/mpay/e;)Lcom/netease/mpay/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/mpay/e/b/a;->b:D

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->d(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->f()Lcom/netease/mpay/e/c/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v1, v1, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v1}, Lcom/netease/mpay/e;->b(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/p;->a(Lcom/netease/mpay/e/b/a;)V

    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->e(Lcom/netease/mpay/e;)Lcom/netease/mpay/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->a()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->b(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b/a;

    move-result-object v0

    iget v1, v0, Lcom/netease/mpay/e/b/a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/netease/mpay/e/b/a;->a:I

    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->b(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b/a;

    move-result-object v0

    iget-wide v1, v0, Lcom/netease/mpay/e/b/a;->b:D

    iget-object v3, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v3, v3, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v3}, Lcom/netease/mpay/e;->c(Lcom/netease/mpay/e;)Lcom/netease/mpay/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/netease/mpay/e/b/a;->b:D

    goto :goto_0

    :cond_2
    const-string v1, "4000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "6001"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->e(Lcom/netease/mpay/e;)Lcom/netease/mpay/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/g;->a:Lcom/netease/mpay/f;

    iget-object v0, v0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->e(Lcom/netease/mpay/e;)Lcom/netease/mpay/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_1
.end method
