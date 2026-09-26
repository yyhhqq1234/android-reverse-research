.class public Lcom/netease/mpay/bc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/bc$b;,
        Lcom/netease/mpay/bc$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Lcom/netease/mpay/bc$a;

.field d:Lcom/netease/mpay/bc$b;

.field e:Ljava/util/ArrayList;

.field private final f:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/bc$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/bc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/bc;->c:Lcom/netease/mpay/bc$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/mpay/bc;->f:F

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

.method static synthetic a(Lcom/netease/mpay/bc;)F
    .locals 1

    iget v0, p0, Lcom/netease/mpay/bc;->f:F

    return v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->R:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/ScrollableView;

    new-instance v1, Lcom/netease/mpay/bg;

    invoke-direct {v1, p0}, Lcom/netease/mpay/bg;-><init>(Lcom/netease/mpay/bc;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/ScrollableView;->a(Lcom/netease/mpay/view/ScrollableView$a;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    invoke-direct {p0}, Lcom/netease/mpay/bc;->b()V

    iget-object v0, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-static {v0}, Lcom/netease/mpay/bc$b;->a(Lcom/netease/mpay/bc$b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ao:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->ag:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    iget-object v4, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/netease/mpay/bc$b;->a(Lcom/netease/mpay/bc$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-virtual {v3}, Lcom/netease/mpay/bc$b;->notifyDataSetChanged()V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/netease/mpay/be;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/be;-><init>(Lcom/netease/mpay/bc;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/netease/mpay/bc;->b(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 6

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->ac:I

    const/4 v0, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/mpay/c/a;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    invoke-virtual {v0, p2, p5}, Lcom/netease/mpay/c/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_2
    return-void

    :sswitch_0
    const-string v1, "epay"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "alipay"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "ecard"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "uppay"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "bankcard"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "mcard"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "weixinpay"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "weixinpayqr"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "alipayqr"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "tenpay"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :pswitch_0
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->L:I

    goto :goto_1

    :pswitch_1
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->H:I

    goto :goto_1

    :pswitch_2
    if-eqz p6, :cond_1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->K:I

    :goto_3
    move v3, v0

    goto/16 :goto_1

    :cond_1
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->G:I

    goto :goto_3

    :pswitch_3
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->O:I

    goto/16 :goto_1

    :pswitch_4
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->J:I

    goto/16 :goto_1

    :pswitch_5
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->M:I

    goto/16 :goto_1

    :pswitch_6
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->P:I

    goto/16 :goto_1

    :pswitch_7
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->Q:I

    goto/16 :goto_1

    :pswitch_8
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->I:I

    goto/16 :goto_1

    :pswitch_9
    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->N:I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x729d2059 -> :sswitch_7
        -0x6ec8fcb4 -> :sswitch_4
        -0x545695b6 -> :sswitch_1
        -0x344ae095 -> :sswitch_9
        0x2f9a23 -> :sswitch_0
        0x5bdc0f5 -> :sswitch_2
        0x62e7cfd -> :sswitch_5
        0x6a5582d -> :sswitch_3
        0x66f80deb -> :sswitch_8
        0x6cd57b06 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Lcom/netease/mpay/bc;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/bc;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/bc;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/bc;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->R:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/ScrollableView;

    invoke-virtual {v0}, Lcom/netease/mpay/view/ScrollableView;->a()V

    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->R:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/netease/mpay/bh;

    invoke-direct {v1, p0, v0, p1}, Lcom/netease/mpay/bh;-><init>(Lcom/netease/mpay/bc;Landroid/widget/ScrollView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 9

    const/4 v2, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, p1}, Lcom/netease/mpay/bc;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->Q:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget-object v5, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v3

    move v3, v4

    :goto_2
    iget-object v4, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$f;->ao:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$f;->ag:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/netease/mpay/bd;

    invoke-direct {v2, p0}, Lcom/netease/mpay/bd;-><init>(Lcom/netease/mpay/bc;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/mpay/bc;->a()V

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v2, Lcom/netease/mpay/bc$b;

    iget-object v3, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bc;->c:Lcom/netease/mpay/bc$a;

    iget-object v5, p0, Lcom/netease/mpay/bc;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/netease/mpay/bc$b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/netease/mpay/bc$a;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    iget-object v1, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ao:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bc;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ag:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-static {v2, p1}, Lcom/netease/mpay/bc$b;->a(Lcom/netease/mpay/bc$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-virtual {v2}, Lcom/netease/mpay/bc$b;->notifyDataSetChanged()V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/netease/mpay/bf;

    invoke-direct {v1, p0}, Lcom/netease/mpay/bf;-><init>(Lcom/netease/mpay/bc;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/mpay/bc;->a()V

    return-void
.end method

.method private d(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-boolean v3, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    if-nez v3, :cond_1

    iget v3, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->k:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/bc;->b(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/bc;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-virtual {v0}, Lcom/netease/mpay/bc$b;->getCount()I

    move-result v2

    iget-object v0, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/bc;->e:Ljava/util/ArrayList;

    :cond_3
    iget-object v1, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-static {v1, v0}, Lcom/netease/mpay/bc$b;->a(Lcom/netease/mpay/bc$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/mpay/bc;->d:Lcom/netease/mpay/bc$b;

    invoke-virtual {v0}, Lcom/netease/mpay/bc$b;->notifyDataSetChanged()V

    goto :goto_0
.end method
