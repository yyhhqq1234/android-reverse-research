.class public Lcom/netease/mpay/d/a/af;
.super Lcom/netease/mpay/ew;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/af$c;,
        Lcom/netease/mpay/d/a/af$b;,
        Lcom/netease/mpay/d/a/af$a;,
        Lcom/netease/mpay/d/a/af$e;,
        Lcom/netease/mpay/d/a/af$d;
    }
.end annotation


# static fields
.field private static i:Lcom/netease/mpay/widget/al;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/netease/mpay/d/a/af$d;

.field private d:Lcom/netease/mpay/d/a/af$e;

.field private e:Lcom/netease/mpay/e/b/o;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:Lcom/netease/mpay/d/a/af$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    sput-object v0, Lcom/netease/mpay/d/a/af;->i:Lcom/netease/mpay/widget/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ew;-><init>()V

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

.method static synthetic a(Lcom/netease/mpay/d/a/af;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/widget/EditText;)Lcom/netease/mpay/d/a/af$b;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/d/a/af$b;->a:Lcom/netease/mpay/d/a/af$b;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x6

    if-ge v0, v4, :cond_1

    sget-object v0, Lcom/netease/mpay/d/a/af$b;->b:Lcom/netease/mpay/d/a/af$b;

    goto :goto_0

    :cond_1
    const-string v0, ".*\\d+.*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    add-int v4, v2, v0

    const-string v0, ".*[a-zA-Z]+.*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    const-string v4, ".*[^0-9a-zA-Z]+.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    add-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    sget-object v0, Lcom/netease/mpay/d/a/af$b;->d:Lcom/netease/mpay/d/a/af$b;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    sget-object v0, Lcom/netease/mpay/d/a/af$b;->c:Lcom/netease/mpay/d/a/af$b;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/netease/mpay/d/a/af$b;->b:Lcom/netease/mpay/d/a/af$b;

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;)Lcom/netease/mpay/d/a/af$b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/af;->a(Landroid/widget/EditText;)Lcom/netease/mpay/d/a/af$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/d/a/af$e;Lcom/netease/mpay/d/a/af$d;)Lcom/netease/mpay/d/a/af;
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/af;

    invoke-direct {v0}, Lcom/netease/mpay/d/a/af;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/d/a/af;->b(Lcom/netease/mpay/d/a/af$e;Lcom/netease/mpay/d/a/af$d;)V

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/EditText;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/d/a/af;->b(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/EditText;Z)V

    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/ak;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/d/a/ak;-><init>(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/netease/mpay/d/a/al;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/d/a/al;-><init>(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/netease/mpay/d/a/am;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/d/a/am;-><init>(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/d/a/af;->b(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/d/a/af;->b(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/af;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/af;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-char v4, v2, v1

    const/16 v5, 0x21

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7e

    if-le v4, v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/af;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->an:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    invoke-interface {v1, v0}, Lcom/netease/mpay/d/a/af$d;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v7}, Lcom/netease/mpay/d/a/af;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aq:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->ar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netease/mpay/d/a/af$b;->b:Lcom/netease/mpay/d/a/af$b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->h:Lcom/netease/mpay/d/a/af$c;

    iget-object v1, v1, Lcom/netease/mpay/d/a/af$c;->d:Lcom/netease/mpay/d/a/af$b;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/netease/mpay/widget/a;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->d:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->as:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->j:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/d/a/ai;

    invoke-direct {v6, p0, v7}, Lcom/netease/mpay/d/a/ai;-><init>(Lcom/netease/mpay/d/a/af;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/a$b;Z)V

    invoke-virtual {v0}, Lcom/netease/mpay/widget/a;->a()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v7}, Lcom/netease/mpay/d/a/af;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/EditText;Z)V
    .locals 1

    if-eqz p3, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->aX:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->aW:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 3

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

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/af$d;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/f/bf;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/af;->d:Lcom/netease/mpay/d/a/af$e;

    iget-object v2, v2, Lcom/netease/mpay/d/a/af$e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/af;->d:Lcom/netease/mpay/d/a/af$e;

    iget-object v3, v3, Lcom/netease/mpay/d/a/af$e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/d/a/af;->e:Lcom/netease/mpay/e/b/o;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/netease/mpay/d/a/af;->e:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    :goto_0
    new-instance v6, Lcom/netease/mpay/d/a/an;

    invoke-direct {v6, p0}, Lcom/netease/mpay/d/a/an;-><init>(Lcom/netease/mpay/d/a/af;)V

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bf;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bf;->h()V

    return-void

    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/af;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/af;->b()V

    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

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

.method static synthetic d(Lcom/netease/mpay/d/a/af;)Lcom/netease/mpay/d/a/af$d;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/d/a/af;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/d/a/af;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/d/a/af;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/netease/mpay/d/a/af;)Lcom/netease/mpay/d/a/af$c;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->h:Lcom/netease/mpay/d/a/af$c;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/af$d;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/netease/mpay/d/a/af$e;Lcom/netease/mpay/d/a/af$d;)V
    .locals 4

    iput-object p1, p0, Lcom/netease/mpay/d/a/af;->d:Lcom/netease/mpay/d/a/af$e;

    iput-object p2, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/netease/mpay/d/a/af$a;->a:Lcom/netease/mpay/d/a/af$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/af$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/netease/mpay/d/a/af$a;->b:Lcom/netease/mpay/d/a/af$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/af$a;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/netease/mpay/d/a/af;->i:Lcom/netease/mpay/widget/al;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/d/a/af;->i:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/netease/mpay/d/a/af;->setArguments(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/mpay/ew;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/af;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/d/a/af;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v0, Lcom/netease/mpay/d/a/af;->i:Lcom/netease/mpay/widget/al;

    sget-object v2, Lcom/netease/mpay/d/a/af$a;->b:Lcom/netease/mpay/d/a/af$a;

    invoke-virtual {v2}, Lcom/netease/mpay/d/a/af$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/af$d;

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    sget-object v0, Lcom/netease/mpay/d/a/af$a;->a:Lcom/netease/mpay/d/a/af$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/af$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/af$e;

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->d:Lcom/netease/mpay/d/a/af$e;

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->d:Lcom/netease/mpay/d/a/af$e;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/af$d;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/af;->d:Lcom/netease/mpay/d/a/af$e;

    iget-object v2, v2, Lcom/netease/mpay/d/a/af$e;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->d:Lcom/netease/mpay/d/a/af$e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/af$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->e:Lcom/netease/mpay/e/b/o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->Q:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/af;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->c:Lcom/netease/mpay/d/a/af$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->g:Landroid/widget/Button;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bI:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

    new-instance v0, Lcom/netease/mpay/d/a/af$c;

    invoke-direct {v0, p0, v2}, Lcom/netease/mpay/d/a/af$c;-><init>(Lcom/netease/mpay/d/a/af;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/af;->h:Lcom/netease/mpay/d/a/af$c;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bq:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->aI:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->e:Lcom/netease/mpay/e/b/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->e:Lcom/netease/mpay/e/b/o;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b/o;->c()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bh:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

    invoke-static {v1, v0, v3, v6}, Lcom/netease/mpay/d/a/af;->b(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/EditText;Z)V

    new-instance v1, Lcom/netease/mpay/d/a/ag;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/d/a/ag;-><init>(Lcom/netease/mpay/d/a/af;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/netease/mpay/d/a/ah;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/ah;-><init>(Lcom/netease/mpay/d/a/af;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

    new-instance v3, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v3, v1}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/netease/mpay/d/a/af;->f:Landroid/widget/EditText;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bJ:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0}, Lcom/netease/mpay/d/a/af;->a(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->g:Landroid/widget/Button;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->Y:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->g:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/d/a/af;->c()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/ew;->onResume()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/af;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/d/a/aj;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/aj;-><init>(Lcom/netease/mpay/d/a/af;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
