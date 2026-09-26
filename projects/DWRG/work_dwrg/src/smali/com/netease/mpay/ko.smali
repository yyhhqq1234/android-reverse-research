.class Lcom/netease/mpay/ko;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kn;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kn;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ko;->a:Lcom/netease/mpay/kn;

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

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/ko;->a:Lcom/netease/mpay/kn;

    iget-object v1, v1, Lcom/netease/mpay/kn;->a:Lcom/netease/mpay/kd;

    iget-object v1, v1, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    return-void
.end method
