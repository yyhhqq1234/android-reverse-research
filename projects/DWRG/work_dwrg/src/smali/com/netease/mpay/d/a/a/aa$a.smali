.class Lcom/netease/mpay/d/a/a/aa$a;
.super Lcom/netease/mpay/d/a/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/aa;

.field private b:Lcom/netease/mpay/view/LoginTabView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/aa;Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/aa$a;->a:Lcom/netease/mpay/d/a/a/aa;

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/k$a;-><init>()V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->cB:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/LoginTabView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->b:Lcom/netease/mpay/view/LoginTabView;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->b:Lcom/netease/mpay/view/LoginTabView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bs:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setLabel(Ljava/lang/String;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bI:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->c:Landroid/widget/LinearLayout;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bO:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->d:Landroid/widget/EditText;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bJ:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->e:Landroid/widget/ImageView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bK:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->b:Lcom/netease/mpay/view/LoginTabView;

    new-instance v1, Lcom/netease/mpay/d/a/a/ad;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/d/a/a/ad;-><init>(Lcom/netease/mpay/d/a/a/aa$a;Lcom/netease/mpay/d/a/a/aa;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/d/a/a/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/d/a/a/ae;-><init>(Lcom/netease/mpay/d/a/a/aa$a;Lcom/netease/mpay/d/a/a/aa;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa$a;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa$a;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

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

.method static synthetic a(Lcom/netease/mpay/d/a/a/aa$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a/aa$a;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/d/a/a/aa$a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/a/aa$a;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/a/aa$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->b:Lcom/netease/mpay/view/LoginTabView;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/view/LoginTabView;->setSelected(Z)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/d/a/a/aa$a;->a(Landroid/view/View;Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/d/a/a/af;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/af;-><init>(Lcom/netease/mpay/d/a/a/aa$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/d/a/a/ag;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/ag;-><init>(Lcom/netease/mpay/d/a/a/aa$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/d/a/a/ah;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/ah;-><init>(Lcom/netease/mpay/d/a/a/aa$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$a;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa$a;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/d/a/a/aa$a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
