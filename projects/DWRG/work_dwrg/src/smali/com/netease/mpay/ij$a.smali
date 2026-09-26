.class Lcom/netease/mpay/ij$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field final synthetic d:Lcom/netease/mpay/ij;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/ij;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/ij$a;->a:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/mpay/ij$a;->e:I

    iput-boolean v1, p0, Lcom/netease/mpay/ij$a;->b:Z

    iput-boolean v1, p0, Lcom/netease/mpay/ij$a;->c:Z

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
.method a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/netease/mpay/ij$a;->e:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "zf_index_wz"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "zf_index_cz"

    goto :goto_0

    :pswitch_1
    const-string v0, "zf_index_bz"

    goto :goto_0

    :pswitch_2
    const-string v0, "zf_index_wz"

    goto :goto_0

    :pswitch_3
    const-string v0, "zf_index_yk"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/mpay/ij$a;->e:I

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->k(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->k(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v3}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v4}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v5}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget v5, v5, Lcom/netease/mpay/b/p$a;->e:I

    iget-object v6, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v6}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/ij$a;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v7}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/ij$a;->b()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ij$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/mpay/ij$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/mpay/ij$a;->e:I

    iput-boolean v1, p0, Lcom/netease/mpay/ij$a;->b:Z

    iput-boolean v1, p0, Lcom/netease/mpay/ij$a;->c:Z

    return-void
.end method

.method d()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->k(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/ij$a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/ij$a;->c:Z

    iget-object v0, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->k(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v3}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v4}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v5}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget v5, v5, Lcom/netease/mpay/b/p$a;->e:I

    iget-object v6, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v6}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/ij$a;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/ij$a;->d:Lcom/netease/mpay/ij;

    invoke-static {v7}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/ij$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
