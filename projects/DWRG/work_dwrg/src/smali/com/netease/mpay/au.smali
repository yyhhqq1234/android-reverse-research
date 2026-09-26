.class Lcom/netease/mpay/au;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/al;


# direct methods
.method constructor <init>(Lcom/netease/mpay/al;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/au;->a:Lcom/netease/mpay/al;

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
    .locals 5

    new-instance v0, Lcom/netease/mpay/b/ah;

    iget-object v1, p0, Lcom/netease/mpay/au;->a:Lcom/netease/mpay/al;

    invoke-static {v1}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;)Lcom/netease/mpay/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/d;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/f/an$a;->w:Lcom/netease/mpay/f/an$a;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v1, p0, Lcom/netease/mpay/au;->a:Lcom/netease/mpay/al;

    iget-object v1, v1, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
