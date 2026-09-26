.class Lcom/netease/mpay/d/a/u;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/u;->a:Lcom/netease/mpay/d/a/o;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/u;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->g(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/d/a/o$b;->d()V

    return-void
.end method
