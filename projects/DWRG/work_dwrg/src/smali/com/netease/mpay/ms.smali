.class Lcom/netease/mpay/ms;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/am$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/mk;


# direct methods
.method constructor <init>(Lcom/netease/mpay/mk;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ms;->a:Lcom/netease/mpay/mk;

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
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ms;->a:Lcom/netease/mpay/mk;

    iget-object v1, p0, Lcom/netease/mpay/ms;->a:Lcom/netease/mpay/mk;

    invoke-static {v1}, Lcom/netease/mpay/mk;->o(Lcom/netease/mpay/mk;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aR:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/mk;->a(Lcom/netease/mpay/mk;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/a$q;)V
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Lcom/netease/mpay/d/a/a/an;

    iget-object v1, p0, Lcom/netease/mpay/ms;->a:Lcom/netease/mpay/mk;

    iget-object v1, v1, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p2, Lcom/netease/mpay/server/a$q;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/server/a$q;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/d/a/a/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a/an;->a()V

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ms;->a:Lcom/netease/mpay/mk;

    invoke-static {v0}, Lcom/netease/mpay/mk;->a(Lcom/netease/mpay/mk;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ms;->a:Lcom/netease/mpay/mk;

    const/16 v1, 0x7d0

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/mk;->a(Lcom/netease/mpay/mk;Ljava/lang/String;I)V

    goto :goto_0
.end method
