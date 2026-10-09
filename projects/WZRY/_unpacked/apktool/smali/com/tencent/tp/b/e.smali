.class public Lcom/tencent/tp/b/e;
.super Ljava/lang/Object;


# static fields
.field private static c:I


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/b/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget v0, Lcom/tencent/tp/b/e;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e()I
    .locals 2

    sget v0, Lcom/tencent/tp/b/e;->c:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/tencent/tp/b/e;->c:I

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 6

    const/16 v5, 0xf

    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/tencent/tp/b/e;->c()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tp/b/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/tp/b/e;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method protected a(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 4

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/tencent/tp/b/e;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/tp/b/e;->c:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tp/b/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tp/b/e;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/tencent/tp/b/e;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/tencent/tp/b/e;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/tencent/tp/b/e;->b:Landroid/app/AlertDialog;

    new-instance v1, Lcom/tencent/tp/b/f;

    invoke-direct {v1, p0}, Lcom/tencent/tp/b/f;-><init>(Lcom/tencent/tp/b/e;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/tencent/tp/b/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/tp/b/e;->b:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tp/b/e;->a(Landroid/content/Context;Landroid/app/AlertDialog;)V

    return-void
.end method

.method protected a(Landroid/widget/TextView;)V
    .locals 3

    const/16 v2, 0x14

    const/16 v1, 0xa

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/tencent/tp/b/e;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/b/e;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/b/e;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected b(Landroid/widget/TextView;)V
    .locals 4

    const/16 v0, 0x4c

    const/16 v1, 0x8c

    const/16 v2, 0xf9

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tp/q;->a(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/tencent/tp/c/j;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method protected c()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected d()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method
