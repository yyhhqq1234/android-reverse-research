.class public Lcom/tencent/tp/a/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "("

.field public static final b:Ljava/lang/String; = ")"

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xff

    invoke-static {v3, v3, v3, v3}, Lcom/tencent/tp/a/h;->a(IIII)I

    move-result v0

    sput v0, Lcom/tencent/tp/a/h;->c:I

    invoke-static {v3, v4, v4, v3}, Lcom/tencent/tp/a/h;->a(IIII)I

    move-result v0

    sput v0, Lcom/tencent/tp/a/h;->d:I

    const/4 v0, 0x6

    const/16 v1, 0xa2

    const/16 v2, 0x44

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tp/a/h;->a(IIII)I

    move-result v0

    sput v0, Lcom/tencent/tp/a/h;->e:I

    invoke-static {v4, v4, v3, v3}, Lcom/tencent/tp/a/h;->a(IIII)I

    move-result v0

    sput v0, Lcom/tencent/tp/a/h;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method public static a(IIII)I
    .locals 2

    and-int/lit16 v0, p3, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tp/a/m;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/tp/a/n;->a(Ljava/lang/String;Z)Lcom/tencent/tp/a/m;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/tencent/tp/a/n;->a(Ljava/lang/String;Z)Lcom/tencent/tp/a/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, v2, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/n;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    new-instance v1, Lcom/tencent/tp/a/m;

    invoke-direct {v1}, Lcom/tencent/tp/a/m;-><init>()V

    iput-object v0, v1, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    iget v0, v2, Lcom/tencent/tp/a/m;->b:I

    iput v0, v1, Lcom/tencent/tp/a/m;->b:I

    iget v0, v2, Lcom/tencent/tp/a/m;->c:I

    iput v0, v1, Lcom/tencent/tp/a/m;->c:I

    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tss_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1

    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Lcom/tencent/tp/a/m;
    .locals 2

    :try_start_0
    const-string v0, "bail_dlg_title.png"

    invoke-static {p0, v0}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tp/a/n;->a(Ljava/lang/String;Z)Lcom/tencent/tp/a/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Lcom/tencent/tp/a/m;
    .locals 2

    :try_start_0
    const-string v0, "bail_dlg_body.png"

    invoke-static {p0, v0}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tp/a/n;->a(Ljava/lang/String;Z)Lcom/tencent/tp/a/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Lcom/tencent/tp/a/m;
    .locals 2

    :try_start_0
    const-string v0, "bail_html_content_bg.png"

    invoke-static {p0, v0}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tp/a/n;->a(Ljava/lang/String;Z)Lcom/tencent/tp/a/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Lcom/tencent/tp/a/m;
    .locals 2

    const-string v0, "btn_cancel.png"

    const-string v1, "btn_cancel_pressed.png"

    invoke-static {p0, v0, v1}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tp/a/m;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Lcom/tencent/tp/a/m;
    .locals 2

    const-string v0, "btn_ok.png"

    const-string v1, "btn_ok_pressed.png"

    invoke-static {p0, v0, v1}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tp/a/m;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lcom/tencent/tp/a/m;
    .locals 2

    const-string v0, "btn_gray.png"

    const-string v1, "btn_gray.png"

    invoke-static {p0, v0, v1}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tp/a/m;

    move-result-object v0

    return-object v0
.end method
