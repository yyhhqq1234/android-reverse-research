.class Lcom/netease/mpay/jb$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/jb;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/netease/mpay/jb;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jb$a;->a:Lcom/netease/mpay/jb;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/jb$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/mpay/jb$a;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/netease/mpay/jb$a;->d:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netease/mpay/jb$a;->e:I

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

    iget-object v0, p0, Lcom/netease/mpay/jb$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb$a;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/netease/mpay/jb$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/e$b;

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
    .locals 14

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/jb$a;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->i:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->N:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->O:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->M:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->S:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->L:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->K:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iget-object v1, p0, Lcom/netease/mpay/jb$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/netease/mpay/server/response/e$b;

    iget-object v1, p0, Lcom/netease/mpay/jb$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/jb$a;->d:Ljava/lang/String;

    iget-object v3, v10, Lcom/netease/mpay/server/response/e$b;->j:Ljava/lang/String;

    iget v4, p0, Lcom/netease/mpay/jb$a;->e:I

    iget-object v5, v10, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/netease/mpay/bc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/widget/ImageView;Z)V

    iget-object v1, v10, Lcom/netease/mpay/server/response/e$b;->h:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v10, Lcom/netease/mpay/server/response/e$b;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v1, v10, Lcom/netease/mpay/server/response/e$b;->d:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/netease/mpay/jb$b;

    iget-object v2, p0, Lcom/netease/mpay/jb$a;->a:Lcom/netease/mpay/jb;

    invoke-direct {v1, v2, v10}, Lcom/netease/mpay/jb$b;-><init>(Lcom/netease/mpay/jb;Lcom/netease/mpay/server/response/e$b;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-boolean v1, v10, Lcom/netease/mpay/server/response/e$b;->d:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v1, v10, Lcom/netease/mpay/server/response/e$b;->d:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, v10, Lcom/netease/mpay/server/response/e$b;->d:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, v10, Lcom/netease/mpay/server/response/e$b;->e:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_1
    iget-object v1, v10, Lcom/netease/mpay/server/response/e$b;->i:Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    goto :goto_4
.end method
