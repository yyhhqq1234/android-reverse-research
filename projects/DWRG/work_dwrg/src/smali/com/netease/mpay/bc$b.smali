.class Lcom/netease/mpay/bc$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/netease/mpay/bc$a;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/netease/mpay/bc$a;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/bc$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/netease/mpay/bc$b;->c:Lcom/netease/mpay/bc$a;

    iput-object p4, p0, Lcom/netease/mpay/bc$b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netease/mpay/bc$b;->e:I

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

.method static synthetic a(Lcom/netease/mpay/bc$b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/bc$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/mpay/bc$b;)Lcom/netease/mpay/bc$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bc$b;->c:Lcom/netease/mpay/bc$a;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;

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

    iget-object v1, p0, Lcom/netease/mpay/bc$b;->a:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/netease/mpay/bc$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v1, p0, Lcom/netease/mpay/bc$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/bc$b;->d:Ljava/lang/String;

    iget-object v3, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->d:Ljava/lang/String;

    iget v4, p0, Lcom/netease/mpay/bc$b;->e:I

    iget-object v5, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/netease/mpay/bc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/widget/ImageView;Z)V

    iget-object v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->b:Ljava/lang/String;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/netease/mpay/bi;

    invoke-direct {v1, p0, v10}, Lcom/netease/mpay/bi;-><init>(Lcom/netease/mpay/bc$b;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-boolean v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->j:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_1
    iget-object v1, v10, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->c:Ljava/lang/String;

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
