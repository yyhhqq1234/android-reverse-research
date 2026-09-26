.class Lcom/netease/mpay/f/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/ay$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/ay$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

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
    .locals 8

    new-instance v0, Lcom/netease/mpay/f/ay;

    iget-object v1, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

    iget-object v1, v1, Lcom/netease/mpay/f/ay$b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

    iget-object v2, v2, Lcom/netease/mpay/f/ay$b;->c:Lcom/netease/mpay/MpayConfig;

    iget-object v3, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

    iget-object v3, v3, Lcom/netease/mpay/f/ay$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

    iget-object v4, v4, Lcom/netease/mpay/f/ay$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

    iget-object v5, v5, Lcom/netease/mpay/f/ay$b;->e:Lcom/netease/mpay/f/ay$a;

    iget-object v6, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

    iget-object v6, v6, Lcom/netease/mpay/f/ay$b;->f:Lcom/netease/mpay/e/b/o;

    iget-object v7, p0, Lcom/netease/mpay/f/az;->a:Lcom/netease/mpay/f/ay$b;

    iget-object v7, v7, Lcom/netease/mpay/f/ay$b;->g:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/ay;-><init>(Landroid/app/Activity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/ay$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ay;->h()V

    return-void
.end method
