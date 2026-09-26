.class Lcom/netease/mpay/codescanner/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/a$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/e;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/k;->a:Lcom/netease/mpay/codescanner/e;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/k;->a:Lcom/netease/mpay/codescanner/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Z)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/k;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/k;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/v;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    return-void
.end method
