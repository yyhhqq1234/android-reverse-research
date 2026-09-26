.class Lcom/netease/mpay/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ex;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ex;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

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
.method public onBackStackChanged()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

    iget-object v1, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

    invoke-static {v1}, Lcom/netease/mpay/ex;->b(Lcom/netease/mpay/ex;)Lcom/netease/mpay/widget/ae;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/widget/ae$a;->b:Lcom/netease/mpay/widget/ae$a;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;)Lcom/netease/mpay/ew;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/ew;)Lcom/netease/mpay/ew;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

    invoke-static {v1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

    iget-object v2, p0, Lcom/netease/mpay/ey;->a:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;)Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/ew;

    invoke-static {v1, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/ew;)Lcom/netease/mpay/ew;

    goto :goto_0
.end method
