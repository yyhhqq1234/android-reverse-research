.class Lcom/netease/mpay/lm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/lj;


# direct methods
.method constructor <init>(Lcom/netease/mpay/lj;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/lm;->a:Lcom/netease/mpay/lj;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/lm;->a:Lcom/netease/mpay/lj;

    iget-object v0, v0, Lcom/netease/mpay/lj;->b:Lcom/netease/mpay/li;

    invoke-static {v0}, Lcom/netease/mpay/li;->b(Lcom/netease/mpay/li;)Lcom/netease/mpay/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    return-void
.end method
