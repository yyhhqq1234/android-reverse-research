.class Lcom/netease/mpay/hm;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hl;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hl;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hm;->a:Lcom/netease/mpay/hl;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

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
.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hm;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->a(Lcom/netease/mpay/hl;)V

    iget-object v0, p0, Lcom/netease/mpay/hm;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->b(Lcom/netease/mpay/hl;)Lcom/netease/mpay/b/k;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hm;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->b(Lcom/netease/mpay/hl;)Lcom/netease/mpay/b/k;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/hm;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
