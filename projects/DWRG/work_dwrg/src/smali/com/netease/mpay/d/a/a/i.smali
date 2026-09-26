.class Lcom/netease/mpay/d/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/netease/mpay/d/a/a/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/e;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/i;->b:Lcom/netease/mpay/d/a/a/e;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/i;->a:Landroid/view/View;

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
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/i;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/i;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/i;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/d/a/a/e;->a(Lcom/netease/mpay/d/a/a/e;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
