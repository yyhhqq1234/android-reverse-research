.class Lcom/netease/mpay/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ah;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ah;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/aj;->a:Lcom/netease/mpay/ah;

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
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/aj;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/b/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/aj;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/aj;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/au;

    invoke-direct {v0}, Lcom/netease/mpay/b/au;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/aj;->a:Lcom/netease/mpay/ah;

    iget-object v1, v1, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/au;->a(Landroid/app/Activity;)V

    return-void
.end method
