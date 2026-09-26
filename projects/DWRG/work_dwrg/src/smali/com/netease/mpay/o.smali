.class public Lcom/netease/mpay/o;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/o$c;,
        Lcom/netease/mpay/o$a;,
        Lcom/netease/mpay/o$b;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/b;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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

.method static synthetic a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/o;->d:Lcom/netease/mpay/b/b;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/b;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/b;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/o;->d:Lcom/netease/mpay/b/b;

    iget-object v0, p0, Lcom/netease/mpay/o;->d:Lcom/netease/mpay/b/b;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/p;

    invoke-direct {v1, p0}, Lcom/netease/mpay/p;-><init>(Lcom/netease/mpay/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/q;

    invoke-direct {v1, p0}, Lcom/netease/mpay/q;-><init>(Lcom/netease/mpay/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->C:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/netease/mpay/o$c;

    sget-object v3, Lcom/netease/mpay/o$a;->a:Lcom/netease/mpay/o$a;

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/o$c;-><init>(Lcom/netease/mpay/o;Lcom/netease/mpay/o$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/netease/mpay/o$c;

    sget-object v3, Lcom/netease/mpay/o$a;->b:Lcom/netease/mpay/o$a;

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/o$c;-><init>(Lcom/netease/mpay/o;Lcom/netease/mpay/o$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/netease/mpay/o$b;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/o$b;-><init>(Lcom/netease/mpay/o;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method
