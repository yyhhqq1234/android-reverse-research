.class Lcom/netease/mpay/jf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netease/mpay/jb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jb;Z)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jf;->b:Lcom/netease/mpay/jb;

    iput-boolean p2, p0, Lcom/netease/mpay/jf;->a:Z

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/mpay/jf;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/jf;->b:Lcom/netease/mpay/jb;

    iget-object v1, v1, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jf;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->l(Lcom/netease/mpay/jb;)V

    goto :goto_0
.end method
