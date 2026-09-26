.class Lcom/netease/mpay/d/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/d/a/a/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/e;Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/f;->b:Lcom/netease/mpay/d/a/a/e;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/f;->a:Landroid/app/Activity;

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
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/f;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a/e;->a:Lcom/netease/mpay/d/a/a/e$a;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/f;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/a/e$a;->a(Ljava/lang/String;)V

    return-void
.end method
