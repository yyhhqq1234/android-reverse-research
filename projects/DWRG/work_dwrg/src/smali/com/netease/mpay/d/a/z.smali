.class Lcom/netease/mpay/d/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/y;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/y;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/z;->a:Lcom/netease/mpay/d/a/y;

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
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/d/a/z;->a:Lcom/netease/mpay/d/a/y;

    invoke-static {v1}, Lcom/netease/mpay/d/a/y;->b(Lcom/netease/mpay/d/a/y;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->o:I

    iget-object v2, p0, Lcom/netease/mpay/d/a/z;->a:Lcom/netease/mpay/d/a/y;

    invoke-static {v2}, Lcom/netease/mpay/d/a/y;->a(Lcom/netease/mpay/d/a/y;)Lcom/netease/mpay/d/a/y$c;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/d/a/y$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/widget/s;->a(ILjava/lang/String;)V

    return-void
.end method
