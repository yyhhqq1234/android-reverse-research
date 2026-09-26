.class Lcom/netease/mpay/d/a/a/w;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/r;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/netease/mpay/d/a/a/r$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/r$c;Lcom/netease/mpay/d/a/a/r;Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/w;->c:Lcom/netease/mpay/d/a/a/r$c;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/w;->a:Lcom/netease/mpay/d/a/a/r;

    iput-object p3, p0, Lcom/netease/mpay/d/a/a/w;->b:Landroid/app/Activity;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/w;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/w;->c:Lcom/netease/mpay/d/a/a/r$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a/r$c;->a:Lcom/netease/mpay/d/a/a/r;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/w;->c:Lcom/netease/mpay/d/a/a/r$c;

    invoke-static {v1}, Lcom/netease/mpay/d/a/a/r$c;->c(Lcom/netease/mpay/d/a/a/r$c;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/d/a/a/r;->a(Ljava/lang/String;)V

    return-void
.end method
