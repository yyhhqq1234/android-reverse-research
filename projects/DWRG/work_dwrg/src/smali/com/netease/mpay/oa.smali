.class Lcom/netease/mpay/oa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/widget/AdapterView;

.field final synthetic b:Lcom/netease/mpay/np;


# direct methods
.method constructor <init>(Lcom/netease/mpay/np;Landroid/widget/AdapterView;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/oa;->b:Lcom/netease/mpay/np;

    iput-object p2, p0, Lcom/netease/mpay/oa;->a:Landroid/widget/AdapterView;

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
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/oa;->a:Landroid/widget/AdapterView;

    invoke-virtual {v0, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/u;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/netease/mpay/e/b/u;->e:I

    iget-object v1, p0, Lcom/netease/mpay/oa;->b:Lcom/netease/mpay/np;

    invoke-static {v1}, Lcom/netease/mpay/np;->d(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/af$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/widget/af$b;->a()Lcom/netease/mpay/widget/af$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/widget/af$a;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/netease/mpay/oa;->b:Lcom/netease/mpay/np;

    iget-object v1, v1, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->Q:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/ag;

    iget-object v4, p0, Lcom/netease/mpay/oa;->b:Lcom/netease/mpay/np;

    invoke-static {v4}, Lcom/netease/mpay/np;->b(Lcom/netease/mpay/np;)Lcom/netease/mpay/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/a;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v4

    iget-object v0, v0, Lcom/netease/mpay/e/b/u;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/b/ag;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method
