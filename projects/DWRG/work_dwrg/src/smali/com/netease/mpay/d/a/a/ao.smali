.class Lcom/netease/mpay/d/a/a/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/d/a/a/an;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/an;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/ao;->b:Lcom/netease/mpay/d/a/a/an;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/ao;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/ao;->b:Lcom/netease/mpay/d/a/a/an;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/an;->a(Lcom/netease/mpay/d/a/a/an;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/ao;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/aa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/ao;->b:Lcom/netease/mpay/d/a/a/an;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/an;->a(Lcom/netease/mpay/d/a/a/an;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/ao;->b:Lcom/netease/mpay/d/a/a/an;

    invoke-static {v1}, Lcom/netease/mpay/d/a/a/an;->b(Lcom/netease/mpay/d/a/a/an;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cR:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
