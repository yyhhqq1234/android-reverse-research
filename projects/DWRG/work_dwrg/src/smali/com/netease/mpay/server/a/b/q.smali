.class public Lcom/netease/mpay/server/a/b/q;
.super Lcom/netease/mpay/server/a/b/n;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/netease/mpay/server/a/b/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/b/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/b/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/b/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/b/q;->d:Ljava/lang/String;

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
.method public a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/a/b/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/server/a/b/q;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/server/a/b/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/server/a/b/q;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "urs_udid"

    iget-object v3, p0, Lcom/netease/mpay/server/a/b/q;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/server/a/b/q;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "user_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/b/q;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
