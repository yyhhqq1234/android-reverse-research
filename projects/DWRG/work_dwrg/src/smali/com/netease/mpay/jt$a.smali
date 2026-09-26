.class public Lcom/netease/mpay/jt$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/jt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/jt;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/jt;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/jt$a;->b:Landroid/content/Context;

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
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->h(Lcom/netease/mpay/jt;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jt$a;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ad:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->cO:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ct:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v7}, Lcom/netease/mpay/jt;->h(Lcom/netease/mpay/jt;)[I

    move-result-object v7

    aget v7, v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/netease/mpay/jt$a;->b:Landroid/content/Context;

    sget v8, Lcom/netease/mpay/widget/RIdentifier$h;->cv:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%.2f%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v7}, Lcom/netease/mpay/jt;->h(Lcom/netease/mpay/jt;)[I

    move-result-object v7

    aget v7, v7, p1

    div-int/lit8 v7, v7, 0xa

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/netease/mpay/jt$a;->b:Landroid/content/Context;

    sget v8, Lcom/netease/mpay/widget/RIdentifier$h;->cx:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v4}, Lcom/netease/mpay/jt;->i(Lcom/netease/mpay/jt;)I

    move-result v4

    if-eq p1, v4, :cond_1

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    iget-object v2, v2, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v2}, Lcom/netease/mpay/jt;->i(Lcom/netease/mpay/jt;)I

    move-result v2

    if-eq p1, v2, :cond_2

    sget v2, Lcom/netease/mpay/widget/RIdentifier$c;->d:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    iget-object v0, v0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->i(Lcom/netease/mpay/jt;)I

    move-result v0

    if-eq p1, v0, :cond_3

    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->b:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lcom/netease/mpay/kc;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/kc;-><init>(Lcom/netease/mpay/jt$a;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    sget v2, Lcom/netease/mpay/widget/RIdentifier$c;->f:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->f:I

    goto :goto_2
.end method
