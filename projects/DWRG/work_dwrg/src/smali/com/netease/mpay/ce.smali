.class public Lcom/netease/mpay/ce;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ce$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Boolean;

.field private static j:Lcom/netease/mpay/ExitCallback;


# instance fields
.field private e:Lcom/netease/mpay/b/k;

.field private f:Lcom/netease/mpay/e/b/af;

.field private g:Lcom/netease/mpay/ce$a;

.field private h:Ljava/util/ArrayList;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/ce;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ce;->i:Z

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

.method static synthetic a(Lcom/netease/mpay/ce;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ce;->f:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Lcom/netease/mpay/e/b/i$a;I)V
    .locals 5

    iget-object v0, p2, Lcom/netease/mpay/e/b/i$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mpay/e/c/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/z;->a(Landroid/app/Activity;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/netease/mpay/cj;

    invoke-direct {v0, p0, p3, p2}, Lcom/netease/mpay/cj;-><init>(Lcom/netease/mpay/ce;ILcom/netease/mpay/e/b/i$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Lcom/netease/mpay/ExitCallback;)V
    .locals 0

    sput-object p0, Lcom/netease/mpay/ce;->j:Lcom/netease/mpay/ExitCallback;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ce;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/ce;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ce;->g:Lcom/netease/mpay/ce$a;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/ce;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/ce;)Lcom/netease/mpay/b/k;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/ce;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ce;->w()V

    return-void
.end method

.method private s()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->g:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->av:I

    invoke-static {v2, v3, v4}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aP:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/cf;

    invoke-direct {v1, p0}, Lcom/netease/mpay/cf;-><init>(Lcom/netease/mpay/ce;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aO:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/ch;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ch;-><init>(Lcom/netease/mpay/ce;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/mpay/ce;->t()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private t()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ce;->f:Lcom/netease/mpay/e/b/af;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v0, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-nez v0, :cond_6

    :cond_0
    new-instance v0, Lcom/netease/mpay/ce$a;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, p0, v3, v4, v8}, Lcom/netease/mpay/ce$a;-><init>(Lcom/netease/mpay/ce;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/ce;->g:Lcom/netease/mpay/ce$a;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->g()Lcom/netease/mpay/e/c/f;

    move-result-object v0

    iget-object v1, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/f;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/i;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/e/c/f;->a(Lcom/netease/mpay/e/b/i;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/ce;->f:Lcom/netease/mpay/e/b/af;

    iget-object v0, v0, Lcom/netease/mpay/e/b/af;->k:Lcom/netease/mpay/e/b/i;

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/netease/mpay/e/b/i;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/netease/mpay/e/b/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/e/c/f;->a(Lcom/netease/mpay/e/b/i;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    invoke-direct {p0}, Lcom/netease/mpay/ce;->u()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance v0, Lcom/netease/mpay/ce$a;

    iget-object v3, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget v5, v2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/netease/mpay/ce$a;-><init>(Lcom/netease/mpay/ce;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget-object v0, v0, Lcom/netease/mpay/e/b/i;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_8

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/i$a;

    invoke-direct {p0, v0, v1, v6}, Lcom/netease/mpay/ce;->a(Landroid/widget/ImageView;Lcom/netease/mpay/e/b/i$a;I)V

    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/i$a;

    invoke-direct {p0, v0, v1, v7}, Lcom/netease/mpay/ce;->a(Landroid/widget/ImageView;Lcom/netease/mpay/e/b/i$a;I)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/i$a;

    invoke-direct {p0, v0, v1, v8}, Lcom/netease/mpay/ce;->a(Landroid/widget/ImageView;Lcom/netease/mpay/e/b/i$a;I)V

    goto/16 :goto_1
.end method

.method private u()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ce;->v()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/ci;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ci;-><init>(Lcom/netease/mpay/ce;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/e/b/i$a;

    invoke-direct {v1}, Lcom/netease/mpay/e/b/i$a;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lcom/netease/mpay/e/b/i$a;->a:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/netease/mpay/e/b/i$a;->b:Ljava/lang/String;

    const-string v2, "yxzx"

    iput-object v2, v1, Lcom/netease/mpay/e/b/i$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private w()V
    .locals 3

    sget-object v1, Lcom/netease/mpay/ce;->d:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/ce;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/ce;->j:Lcom/netease/mpay/ExitCallback;

    if-eqz v0, :cond_0

    const-string v0, "ExitCallback : onExit"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ce;->i:Z

    sget-object v0, Lcom/netease/mpay/ce;->j:Lcom/netease/mpay/ExitCallback;

    invoke-interface {v0}, Lcom/netease/mpay/ExitCallback;->onExit()V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/mpay/ce;->j:Lcom/netease/mpay/ExitCallback;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/k;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    iget-object v0, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    invoke-virtual {v0}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->w:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/netease/mpay/ce;->s()V

    goto :goto_0
.end method

.method public f()V
    .locals 8

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    iget-object v0, p0, Lcom/netease/mpay/ce;->f:Lcom/netease/mpay/e/b/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ce;->f:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ce;->g:Lcom/netease/mpay/ce$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ce;->f:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ce;->g:Lcom/netease/mpay/ce$a;

    iget-object v3, v3, Lcom/netease/mpay/ce$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ce;->g:Lcom/netease/mpay/ce$a;

    iget-object v4, v4, Lcom/netease/mpay/ce$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ce;->g:Lcom/netease/mpay/ce$a;

    iget v5, v5, Lcom/netease/mpay/ce$a;->c:I

    iget-object v6, p0, Lcom/netease/mpay/ce;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "tctc_1"

    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v6, "tctc_2"

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    const-string v0, "AuthenticationCallback : onDialogFinish"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ce;->e:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    sget-object v0, Lcom/netease/mpay/ce;->j:Lcom/netease/mpay/ExitCallback;

    if-eqz v0, :cond_1

    const-string v0, "ExitCallback : onCancel"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/ce;->j:Lcom/netease/mpay/ExitCallback;

    invoke-interface {v0}, Lcom/netease/mpay/ExitCallback;->onCancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/mpay/ce;->j:Lcom/netease/mpay/ExitCallback;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public r()V
    .locals 1

    const-string v0, "ExitDialogActivity : onDetachedFromWindow"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/netease/mpay/a;->r()V

    invoke-direct {p0}, Lcom/netease/mpay/ce;->w()V

    return-void
.end method
