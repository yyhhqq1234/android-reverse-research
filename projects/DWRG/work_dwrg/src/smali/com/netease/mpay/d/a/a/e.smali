.class public abstract Lcom/netease/mpay/d/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/a/e$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/netease/mpay/d/a/a/e$a;

.field protected b:Landroid/widget/EditText;

.field protected c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/d/a/a/e$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/e;->a:Lcom/netease/mpay/d/a/a/e$a;

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

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/d/a/a/h;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/d/a/a/h;-><init>(Lcom/netease/mpay/d/a/a/e;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/d/a/a/i;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/d/a/a/i;-><init>(Lcom/netease/mpay/d/a/a/e;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/netease/mpay/d/a/a/j;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/a/j;-><init>(Lcom/netease/mpay/d/a/a/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/d/a/a/e;->a(Landroid/widget/EditText;Landroid/view/View;)V

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

.method static synthetic a(Lcom/netease/mpay/d/a/a/e;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/d/a/a/e;->a(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/e;->b()Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->E:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/e;->c:Landroid/widget/Button;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    new-instance v0, Lcom/netease/mpay/d/a/a/f;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/d/a/a/f;-><init>(Lcom/netease/mpay/d/a/a/e;Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    new-instance v3, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v3, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netease/mpay/d/a/a/e;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/e;->c:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/e;->b()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/e;->c:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/netease/mpay/d/a/a/g;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/a/g;-><init>(Lcom/netease/mpay/d/a/a/e;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method abstract a()Z
.end method
