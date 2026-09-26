.class public Lcom/netease/mpay/widget/e;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

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

.method private a(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/e;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/widget/e;->a(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netease/mpay/widget/e$a;)V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->T:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/widget/f;

    invoke-direct {v1, p0, p2}, Lcom/netease/mpay/widget/f;-><init>(Lcom/netease/mpay/widget/e;Lcom/netease/mpay/widget/e$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->dm:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bI:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bJ:I

    invoke-virtual {p0, v1}, Lcom/netease/mpay/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->I:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    new-instance v2, Lcom/netease/mpay/widget/g;

    invoke-direct {v2, p0, v0, v1}, Lcom/netease/mpay/widget/g;-><init>(Lcom/netease/mpay/widget/e;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lcom/netease/mpay/widget/h;

    invoke-direct {v2, p0, p2, v0}, Lcom/netease/mpay/widget/h;-><init>(Lcom/netease/mpay/widget/e;Lcom/netease/mpay/widget/e$a;Landroid/widget/EditText;)V

    new-instance v3, Lcom/netease/mpay/widget/i;

    invoke-direct {v3, p0, v0, v1}, Lcom/netease/mpay/widget/i;-><init>(Lcom/netease/mpay/widget/e;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v3, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v3, v2}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v3, Lcom/netease/mpay/widget/j;

    invoke-direct {v3, p0, v0}, Lcom/netease/mpay/widget/j;-><init>(Lcom/netease/mpay/widget/e;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->r:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/widget/k;

    invoke-direct {v1, p0, p2}, Lcom/netease/mpay/widget/k;-><init>(Lcom/netease/mpay/widget/e;Lcom/netease/mpay/widget/e$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->x:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/netease/mpay/widget/e;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/e;->requestWindowFeature(I)Z

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->r:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/e;->setContentView(I)V

    return-void
.end method
