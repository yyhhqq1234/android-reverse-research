.class public Lcom/netease/mpay/eu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/eu$a;,
        Lcom/netease/mpay/eu$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/netease/mpay/eu$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/eu$b;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/eu;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/mpay/eu$b;)V

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

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/mpay/eu$b;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->a:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    iput-object p5, p0, Lcom/netease/mpay/eu;->b:Lcom/netease/mpay/eu$b;

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ag:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cV:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cU:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/GridViewNoScroll;

    new-instance v1, Lcom/netease/mpay/eu$a;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3, p4}, Lcom/netease/mpay/eu$a;-><init>(Lcom/netease/mpay/eu;Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/GridViewNoScroll;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/eu;)Lcom/netease/mpay/eu$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/eu;->b:Lcom/netease/mpay/eu$b;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/eu;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/eu;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
