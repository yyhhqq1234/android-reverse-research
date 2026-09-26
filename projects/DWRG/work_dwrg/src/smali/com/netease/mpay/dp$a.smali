.class Lcom/netease/mpay/dp$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/dp;

.field private b:Lcom/netease/mpay/server/response/s$a;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/dp;Lcom/netease/mpay/server/response/s$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/dp$a;->a:Lcom/netease/mpay/dp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/dp$a;->b:Lcom/netease/mpay/server/response/s$a;

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
.method public a(I)Lcom/netease/mpay/server/response/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp$a;->b:Lcom/netease/mpay/server/response/s$a;

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp$a;->b:Lcom/netease/mpay/server/response/s$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dp$a;->b:Lcom/netease/mpay/server/response/s$a;

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/dp$a;->a(I)Lcom/netease/mpay/server/response/s;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dp$a;->a:Lcom/netease/mpay/dp;

    iget-object v0, v0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->C:I

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/dp$a;->a(I)Lcom/netease/mpay/server/response/s;

    move-result-object v2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aA:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/netease/mpay/dp$a;->a:Lcom/netease/mpay/dp;

    iget-object v3, v3, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/netease/mpay/dp$a;->a:Lcom/netease/mpay/dp;

    invoke-static {v4}, Lcom/netease/mpay/dp;->h(Lcom/netease/mpay/dp;)Lcom/netease/mpay/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/netease/mpay/server/response/s;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    new-instance v3, Lcom/netease/mpay/dp$b;

    iget-object v4, p0, Lcom/netease/mpay/dp$a;->a:Lcom/netease/mpay/dp;

    iget v5, v2, Lcom/netease/mpay/server/response/s;->a:I

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/dp$b;-><init>(Lcom/netease/mpay/dp;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->az:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, v2, Lcom/netease/mpay/server/response/s;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aC:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/dp$a;->a:Lcom/netease/mpay/dp;

    iget-object v1, v1, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/server/response/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
