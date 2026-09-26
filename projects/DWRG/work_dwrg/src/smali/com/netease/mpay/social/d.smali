.class Lcom/netease/mpay/social/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/social/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/social/b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

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
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/mpay/social/b;->a(Z)Z

    sget-object v0, Lcom/netease/mpay/social/e;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->d(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/GetFriendsCallback;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->d(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/GetFriendsCallback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->d(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/GetFriendsCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/netease/mpay/server/response/ad;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/server/response/ad;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/server/response/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ad$a;

    iget-object v1, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v1}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/netease/mpay/server/response/ad$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/social/m;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/netease/mpay/social/m;->f:Z

    iget-object v0, v0, Lcom/netease/mpay/server/response/ad$a;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/mpay/social/m;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->c(Lcom/netease/mpay/social/b;)I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->d(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/GetFriendsCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v3}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/social/m;

    invoke-virtual {v0}, Lcom/netease/mpay/social/m;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/netease/mpay/social/Friend;->a(Lcom/netease/mpay/social/m;)Lcom/netease/mpay/social/Friend;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0, v1}, Lcom/netease/mpay/social/b;->a(Lcom/netease/mpay/social/b;Ljava/util/ArrayList;)V

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->e(Lcom/netease/mpay/social/b;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v2}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/netease/mpay/social/a$a;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v1}, Lcom/netease/mpay/social/b;->e(Lcom/netease/mpay/social/b;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v3}, Lcom/netease/mpay/social/b;->f(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/e/b/af;

    move-result-object v3

    iget-wide v3, v3, Lcom/netease/mpay/e/b/af;->E:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/netease/mpay/social/a$a;->c:J

    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v1}, Lcom/netease/mpay/social/b;->e(Lcom/netease/mpay/social/b;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v3}, Lcom/netease/mpay/social/b;->f(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/e/b/af;

    move-result-object v3

    iget-wide v3, v3, Lcom/netease/mpay/e/b/af;->D:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/netease/mpay/social/a$a;->b:J

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->g(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v1}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/social/a;->a(Lcom/netease/mpay/social/a$a;)V

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->e(Lcom/netease/mpay/social/b;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v2}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/netease/mpay/social/a$a;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v1}, Lcom/netease/mpay/social/b;->e(Lcom/netease/mpay/social/b;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/netease/mpay/social/d;->a:Lcom/netease/mpay/social/b;

    invoke-static {v3}, Lcom/netease/mpay/social/b;->f(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/e/b/af;

    move-result-object v3

    iget-wide v3, v3, Lcom/netease/mpay/e/b/af;->D:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/netease/mpay/social/a$a;->b:J

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ad;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/social/d;->a(Lcom/netease/mpay/server/response/ad;)V

    return-void
.end method
