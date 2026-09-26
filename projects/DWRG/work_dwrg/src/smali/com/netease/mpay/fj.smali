.class Lcom/netease/mpay/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/view/b$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/server/response/x;

.field final synthetic b:Lcom/netease/mpay/fi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/fi;Lcom/netease/mpay/server/response/x;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    iput-object p2, p0, Lcom/netease/mpay/fj;->a:Lcom/netease/mpay/server/response/x;

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
.method public a(ZLcom/netease/mpay/fi$b;)V
    .locals 7

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/netease/mpay/fi$b;->a:Lcom/netease/mpay/fi$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netease/mpay/fk;->a:[I

    iget-object v1, p2, Lcom/netease/mpay/fi$b;->a:Lcom/netease/mpay/fi$a;

    invoke-virtual {v1}, Lcom/netease/mpay/fi$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/fj;->a:Lcom/netease/mpay/server/response/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/fj;->a:Lcom/netease/mpay/server/response/x;

    iget-boolean v0, v0, Lcom/netease/mpay/server/response/x;->d:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    iget-object v1, v1, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$g;

    iget-object v3, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    invoke-static {v3}, Lcom/netease/mpay/fi;->a(Lcom/netease/mpay/fi;)Lcom/netease/mpay/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/a;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    invoke-static {v4}, Lcom/netease/mpay/fi;->b(Lcom/netease/mpay/fi;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    sget-object v5, Lcom/netease/mpay/b/m$b;->c:Lcom/netease/mpay/b/m$b;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    sget-object v1, Lcom/netease/mpay/f/an$a;->i:Lcom/netease/mpay/f/an$a;

    invoke-static {v0, v1}, Lcom/netease/mpay/fi;->a(Lcom/netease/mpay/fi;Lcom/netease/mpay/f/an$a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    sget-object v1, Lcom/netease/mpay/f/an$a;->j:Lcom/netease/mpay/f/an$a;

    invoke-static {v0, v1}, Lcom/netease/mpay/fi;->a(Lcom/netease/mpay/fi;Lcom/netease/mpay/f/an$a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    sget-object v1, Lcom/netease/mpay/f/an$a;->k:Lcom/netease/mpay/f/an$a;

    invoke-static {v0, v1}, Lcom/netease/mpay/fi;->a(Lcom/netease/mpay/fi;Lcom/netease/mpay/f/an$a;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/fj;->b:Lcom/netease/mpay/fi;

    sget-object v1, Lcom/netease/mpay/f/an$a;->m:Lcom/netease/mpay/f/an$a;

    invoke-static {v0, v1}, Lcom/netease/mpay/fi;->a(Lcom/netease/mpay/fi;Lcom/netease/mpay/f/an$a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic a(ZLjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/netease/mpay/fi$b;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/fj;->a(ZLcom/netease/mpay/fi$b;)V

    return-void
.end method
