.class Lcom/netease/mpay/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/al;


# direct methods
.method constructor <init>(Lcom/netease/mpay/al;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/am;->a:Lcom/netease/mpay/al;

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

    iget-object v0, p0, Lcom/netease/mpay/am;->a:Lcom/netease/mpay/al;

    iget-object v0, v0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->p:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/b;

    iget-object v3, p0, Lcom/netease/mpay/am;->a:Lcom/netease/mpay/al;

    invoke-static {v3}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;)Lcom/netease/mpay/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/d;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/mpay/am;->a:Lcom/netease/mpay/al;

    invoke-static {v5}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;)Lcom/netease/mpay/b/d;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/b/d;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/b/b;-><init>(Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
