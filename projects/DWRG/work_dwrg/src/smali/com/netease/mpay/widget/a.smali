.class public Lcom/netease/mpay/widget/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/a$a;,
        Lcom/netease/mpay/widget/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/a$a;Z)V
    .locals 6

    const/16 v5, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->a:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->o:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p6}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->z:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->v:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->w:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$f;->y:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$f;->G:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netease/mpay/widget/d;

    invoke-direct {v0, p0, p5}, Lcom/netease/mpay/widget/d;-><init>(Lcom/netease/mpay/widget/a;Lcom/netease/mpay/widget/a$a;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/a$b;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->a:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->o:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p7}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->z:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->v:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->y:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$f;->w:I

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netease/mpay/widget/b;

    invoke-direct {v0, p0, p6}, Lcom/netease/mpay/widget/b;-><init>(Lcom/netease/mpay/widget/a;Lcom/netease/mpay/widget/a$b;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/widget/c;

    invoke-direct {v0, p0, p6}, Lcom/netease/mpay/widget/c;-><init>(Lcom/netease/mpay/widget/a;Lcom/netease/mpay/widget/a$b;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method static synthetic a(Lcom/netease/mpay/widget/a;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez p1, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-lez p2, :cond_1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/widget/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
