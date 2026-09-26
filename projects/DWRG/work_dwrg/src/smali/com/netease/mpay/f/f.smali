.class public Lcom/netease/mpay/f/f;
.super Lcom/netease/mpay/f/a/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private j:Lcom/netease/mpay/dd$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/dd$a;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/f;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/f;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/f/f;->j:Lcom/netease/mpay/dd$a;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->c()Lcom/netease/mpay/f/a/d;

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
.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/l;
    .locals 5

    sget-object v0, Lcom/netease/mpay/f/g;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/f/f;->j:Lcom/netease/mpay/dd$a;

    invoke-virtual {v1}, Lcom/netease/mpay/dd$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/server/response/l;

    invoke-direct {v0}, Lcom/netease/mpay/server/response/l;-><init>()V

    :goto_1
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/server/a/bm;

    iget-object v1, p0, Lcom/netease/mpay/f/f;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/server/a/bm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netease/mpay/server/a/az;

    iget-object v1, p0, Lcom/netease/mpay/f/f;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/server/a/az;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/netease/mpay/server/d;

    iget-object v2, p0, Lcom/netease/mpay/f/f;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/f/f;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/f;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/l;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/f;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/l;

    move-result-object v0

    return-object v0
.end method
