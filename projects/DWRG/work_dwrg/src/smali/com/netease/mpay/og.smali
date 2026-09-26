.class Lcom/netease/mpay/og;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b;

.field final synthetic b:Lcom/netease/mpay/e/b/w;

.field final synthetic c:Lcom/netease/mpay/e/b/o;

.field final synthetic d:Lcom/netease/mpay/e/b/u;

.field final synthetic e:Lcom/netease/mpay/oc$a;

.field final synthetic f:Lcom/netease/mpay/oc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oc;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/w;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/oc$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/og;->f:Lcom/netease/mpay/oc;

    iput-object p2, p0, Lcom/netease/mpay/og;->a:Lcom/netease/mpay/e/b;

    iput-object p3, p0, Lcom/netease/mpay/og;->b:Lcom/netease/mpay/e/b/w;

    iput-object p4, p0, Lcom/netease/mpay/og;->c:Lcom/netease/mpay/e/b/o;

    iput-object p5, p0, Lcom/netease/mpay/og;->d:Lcom/netease/mpay/e/b/u;

    iput-object p6, p0, Lcom/netease/mpay/og;->e:Lcom/netease/mpay/oc$a;

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

    iget-object v0, p0, Lcom/netease/mpay/og;->e:Lcom/netease/mpay/oc$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/oh;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/og;->e:Lcom/netease/mpay/oc$a;

    invoke-interface {v0, p2}, Lcom/netease/mpay/oc$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/og;->e:Lcom/netease/mpay/oc$a;

    invoke-interface {v0}, Lcom/netease/mpay/oc$a;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/og;->f:Lcom/netease/mpay/oc;

    iget-object v1, p0, Lcom/netease/mpay/og;->a:Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/og;->b:Lcom/netease/mpay/e/b/w;

    iget-object v3, p0, Lcom/netease/mpay/og;->c:Lcom/netease/mpay/e/b/o;

    iget-object v4, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/og;->d:Lcom/netease/mpay/e/b/u;

    iget-object v6, p0, Lcom/netease/mpay/og;->e:Lcom/netease/mpay/oc$a;

    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/oc;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/w;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/oc$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/og;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
