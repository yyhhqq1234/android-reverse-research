.class Lcom/netease/mpay/ni;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ni;->a:Lcom/netease/mpay/nc;

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
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/ni;->a:Lcom/netease/mpay/nc;

    iget-object v0, v0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    iget-object v3, p0, Lcom/netease/mpay/ni;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/an$a;->b:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v3, p0, Lcom/netease/mpay/ni;->a:Lcom/netease/mpay/nc;

    invoke-static {v3}, Lcom/netease/mpay/nc;->d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/af;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/b/ah;->a(Ljava/lang/String;)Lcom/netease/mpay/b/ah;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
