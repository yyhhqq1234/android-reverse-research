.class public Lcom/tencent/tp/a/af;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/a/af$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/AlertDialog;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/tp/a/af$a;

.field private g:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/af$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    new-instance v0, Lcom/tencent/tp/a/ag;

    invoke-direct {v0, p0}, Lcom/tencent/tp/a/ag;-><init>(Lcom/tencent/tp/a/af;)V

    iput-object v0, p0, Lcom/tencent/tp/a/af;->g:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tp/a/af;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tp/a/af;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tp/a/af;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tp/a/af;->f:Lcom/tencent/tp/a/af$a;

    return-void
.end method

.method private a(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/tp/a/af;)Lcom/tencent/tp/a/af$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/af;->f:Lcom/tencent/tp/a/af$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/16 v4, 0xa

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    invoke-direct {p0, v1, v4}, Lcom/tencent/tp/a/af;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lcom/tencent/tp/a/af;->a(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    invoke-direct {p0, v3, v4}, Lcom/tencent/tp/a/af;->a(Landroid/content/Context;I)I

    move-result v3

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/tencent/tp/a/af;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "#FFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x2

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "#000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v4, v1, v2, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/a/af;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/tencent/tp/a/af;->g:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    new-instance v1, Lcom/tencent/tp/a/ah;

    invoke-direct {v1, p0}, Lcom/tencent/tp/a/ah;-><init>(Lcom/tencent/tp/a/af;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lcom/tencent/tp/a/af;->b()V

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/tp/a/af;->b:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/a/af;->a:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
