.class Lcom/netease/mpay/im;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ij;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ij;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/im;->a:Lcom/netease/mpay/ij;

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
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/mpay/im;->a:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    iget-object v3, p0, Lcom/netease/mpay/im;->a:Lcom/netease/mpay/ij;

    invoke-static {v3}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/p;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/an$a;->E:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    invoke-static {v0, v1, v2, v5, v5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
