.class public Lcom/netease/mpay/view/b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/view/b$a;,
        Lcom/netease/mpay/view/b$c;,
        Lcom/netease/mpay/view/b$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:Ljava/util/ArrayList;

.field protected d:Lcom/netease/mpay/view/b$a;

.field private e:Lcom/netease/mpay/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;Lcom/netease/mpay/view/b$a;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/view/b;->a:Landroid/content/Context;

    iput p3, p0, Lcom/netease/mpay/view/b;->b:I

    iput-object p4, p0, Lcom/netease/mpay/view/b;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/netease/mpay/view/b;->d:Lcom/netease/mpay/view/b$a;

    new-instance v0, Lcom/netease/mpay/c/a;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->ac:I

    invoke-direct {v0, p1, p2, v1}, Lcom/netease/mpay/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netease/mpay/view/b;->e:Lcom/netease/mpay/c/a;

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

.method private a(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/view/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/view/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/view/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/view/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/view/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/view/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/b$c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/view/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->aj:I

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->N:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->O:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bY:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->J:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->L:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->K:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/mpay/view/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/view/b$c;

    iget-object v5, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v5, v5, Lcom/netease/mpay/view/b$b;->b:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-object v5, v5, Lcom/netease/mpay/view/b$b;->c:Ljava/lang/String;

    :goto_0
    invoke-static {v5}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/netease/mpay/view/b;->e:Lcom/netease/mpay/c/a;

    invoke-virtual {v10, v5, v0}, Lcom/netease/mpay/c/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-object v0, v0, Lcom/netease/mpay/view/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->b:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->o:I

    :goto_2
    invoke-direct {p0, v0}, Lcom/netease/mpay/view/b;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->b:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    move v0, v6

    :goto_4
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->b:Z

    if-nez v0, :cond_7

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-object v0, v0, Lcom/netease/mpay/view/b$b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-object v0, v0, Lcom/netease/mpay/view/b$b;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-object v0, v0, Lcom/netease/mpay/view/b$b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-object v0, v0, Lcom/netease/mpay/view/b$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->b:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->b:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->b:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/netease/mpay/view/c;

    invoke-direct {v0, p0, v4, v8, v1}, Lcom/netease/mpay/view/c;-><init>(Lcom/netease/mpay/view/b;Lcom/netease/mpay/view/b$c;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    iget-object v0, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-boolean v0, v0, Lcom/netease/mpay/view/b$b;->b:Z

    if-eqz v0, :cond_9

    :goto_7
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_2
    iget-object v5, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget-object v5, v5, Lcom/netease/mpay/view/b$b;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget-object v5, v4, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    iget v5, v5, Lcom/netease/mpay/view/b$b;->e:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_4
    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->i:I

    goto/16 :goto_2

    :cond_5
    move v1, v6

    goto :goto_3

    :cond_6
    move v0, v7

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_9
    move v6, v7

    goto :goto_7
.end method
