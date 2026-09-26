.class Lcom/netease/mpay/d/a/a/aq;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/d/a/a/an;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/an;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/aq;->c:Lcom/netease/mpay/d/a/a/an;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/aq;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/d/a/a/aq;->b:Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aq;->c:Lcom/netease/mpay/d/a/a/an;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/an;->a(Lcom/netease/mpay/d/a/a/an;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aq;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/aq;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/widget/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aq;->c:Lcom/netease/mpay/d/a/a/an;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/an;->c(Lcom/netease/mpay/d/a/a/an;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
