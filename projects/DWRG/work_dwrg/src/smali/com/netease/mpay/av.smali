.class Lcom/netease/mpay/av;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/al;


# direct methods
.method constructor <init>(Lcom/netease/mpay/al;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/av;->a:Lcom/netease/mpay/al;

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
    .locals 6

    const/4 v3, 0x3

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/av;->a:Lcom/netease/mpay/al;

    iget-object v1, v1, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/av;->a:Lcom/netease/mpay/al;

    invoke-static {v2}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;)Lcom/netease/mpay/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/d;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/mpay/av;->a:Lcom/netease/mpay/al;

    invoke-static {v4}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;)Lcom/netease/mpay/b/d;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/b/d;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method
