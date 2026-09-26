.class Lcom/netease/mpay/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/bu;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bu;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bv;->a:Lcom/netease/mpay/bu;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bv;->a:Lcom/netease/mpay/bu;

    invoke-static {v0, p2}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bv;->a:Lcom/netease/mpay/bu;

    iget-object v0, v0, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/bv;->a:Lcom/netease/mpay/bu;

    invoke-static {v0}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/e;->d:Lcom/netease/mpay/bu$b;

    invoke-interface {v0}, Lcom/netease/mpay/bu$b;->a()V

    return-void
.end method
