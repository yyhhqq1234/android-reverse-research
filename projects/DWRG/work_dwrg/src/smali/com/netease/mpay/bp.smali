.class Lcom/netease/mpay/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/bm;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bm;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/n;->f()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->j:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/bs;

    invoke-direct {v2, p0}, Lcom/netease/mpay/bs;-><init>(Lcom/netease/mpay/bp;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/i;)V
    .locals 7

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/n;->f()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->b(Lcom/netease/mpay/bm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mpay/server/response/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do not support the op : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/netease/mpay/server/response/i;->a:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/netease/mpay/server/response/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    invoke-static {v0, p1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;Lcom/netease/mpay/server/response/i;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/netease/mpay/server/response/i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    invoke-static {v2}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/bq;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/bq;-><init>(Lcom/netease/mpay/bp;Lcom/netease/mpay/server/response/i;)V

    iget-object v4, p0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    invoke-static {v4}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/br;

    invoke-direct {v5, p0}, Lcom/netease/mpay/br;-><init>(Lcom/netease/mpay/bp;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/i;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/bp;->a(Lcom/netease/mpay/server/response/i;)V

    return-void
.end method
