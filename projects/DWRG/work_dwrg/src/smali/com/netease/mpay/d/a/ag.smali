.class Lcom/netease/mpay/d/a/ag;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/netease/mpay/d/a/af;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/af;Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/ag;->b:Lcom/netease/mpay/d/a/af;

    iput-object p2, p0, Lcom/netease/mpay/d/a/ag;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/d/a/ag;->c:Z

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
    .locals 4

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/ag;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/d/a/ag;->c:Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/ag;->b:Lcom/netease/mpay/d/a/af;

    invoke-static {v0}, Lcom/netease/mpay/d/a/af;->a(Lcom/netease/mpay/d/a/af;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/ag;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/d/a/ag;->b:Lcom/netease/mpay/d/a/af;

    invoke-static {v2}, Lcom/netease/mpay/d/a/af;->b(Lcom/netease/mpay/d/a/af;)Landroid/widget/EditText;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netease/mpay/d/a/ag;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/d/a/af;->a(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/EditText;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
