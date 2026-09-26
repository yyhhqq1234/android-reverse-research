.class public Lcom/netease/mpay/d/a/a/an;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/an;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/an;->c:Landroid/content/res/Resources;

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->a:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->o:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->z:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->v:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p3}, Lcom/netease/mpay/d/a/a/an;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/netease/mpay/d/a/a/an;->a(Ljava/lang/String;Ljava/lang/String;)V

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

.method static synthetic a(Lcom/netease/mpay/d/a/a/an;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->c:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    new-instance v2, Lcom/netease/mpay/d/a/a/ao;

    invoke-direct {v2, p0, p2}, Lcom/netease/mpay/d/a/a/ao;-><init>(Lcom/netease/mpay/d/a/a/an;Ljava/lang/String;)V

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    const/4 v2, 0x3

    new-instance v3, Lcom/netease/mpay/d/a/a/ap;

    invoke-direct {v3, p0, p3}, Lcom/netease/mpay/d/a/a/ap;-><init>(Lcom/netease/mpay/d/a/a/an;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/widget/aa;->a(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->y:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->w:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bh:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/netease/mpay/d/a/a/aq;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/mpay/d/a/a/aq;-><init>(Lcom/netease/mpay/d/a/a/an;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/d/a/a/ar;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/a/ar;-><init>(Lcom/netease/mpay/d/a/a/an;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/a/an;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/a/an;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/an;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
