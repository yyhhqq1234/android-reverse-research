.class Lcom/netease/mpay/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/bz;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bz;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/cb;->a:Lcom/netease/mpay/bz;

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

    iget-object v0, p0, Lcom/netease/mpay/cb;->a:Lcom/netease/mpay/bz;

    invoke-static {v0}, Lcom/netease/mpay/bz;->a(Lcom/netease/mpay/bz;)Lcom/netease/mpay/b/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/b/f;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cb;->a:Lcom/netease/mpay/bz;

    invoke-static {v0}, Lcom/netease/mpay/bz;->b(Lcom/netease/mpay/bz;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/cb;->a:Lcom/netease/mpay/bz;

    iget-object v1, v1, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/netease/mpay/cb;->a:Lcom/netease/mpay/bz;

    invoke-static {v1}, Lcom/netease/mpay/bz;->c(Lcom/netease/mpay/bz;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0}, Lcom/netease/mpay/ii;->a()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65 -> :sswitch_3
        -0x64 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method
