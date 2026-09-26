.class Lcom/netease/mpay/je;
.super Lcom/netease/mpay/f/af;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jb;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/af$a;Lcom/netease/mpay/f/af$b;)V
    .locals 6

    iput-object p1, p0, Lcom/netease/mpay/je;->a:Lcom/netease/mpay/jb;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/af;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/af$a;Lcom/netease/mpay/f/af$b;)V

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
.method protected a()V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0}, Lcom/netease/mpay/f/af;->a()V

    iget-object v0, p0, Lcom/netease/mpay/je;->a:Lcom/netease/mpay/jb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/jb;->a(Lcom/netease/mpay/jb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/je;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->j(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/je;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->k(Lcom/netease/mpay/jb;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/je;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->h(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/je;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->i(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
