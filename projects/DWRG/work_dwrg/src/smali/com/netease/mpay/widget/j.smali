.class Lcom/netease/mpay/widget/j;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/netease/mpay/widget/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/e;Landroid/widget/EditText;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/j;->b:Lcom/netease/mpay/widget/e;

    iput-object p2, p0, Lcom/netease/mpay/widget/j;->a:Landroid/widget/EditText;

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

    iget-object v0, p0, Lcom/netease/mpay/widget/j;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/j;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
