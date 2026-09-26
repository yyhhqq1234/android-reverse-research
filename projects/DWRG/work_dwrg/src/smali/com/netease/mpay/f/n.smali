.class public abstract Lcom/netease/mpay/f/n;
.super Lcom/netease/mpay/f/a/d;


# instance fields
.field protected b:Lcom/netease/mpay/e/b/o;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

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
.method protected abstract a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
.end method

.method protected final b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/f/n;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/f/n;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, p0, Lcom/netease/mpay/f/n;->b:Lcom/netease/mpay/e/b/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/n;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/n;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/netease/mpay/server/a$f;

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/n;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
