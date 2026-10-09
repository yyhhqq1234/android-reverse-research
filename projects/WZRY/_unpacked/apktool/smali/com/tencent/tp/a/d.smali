.class public Lcom/tencent/tp/a/d;
.super Lcom/tencent/tp/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V
    .locals 11

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/tencent/tp/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/tp/a/a$a;)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/d;->d()V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2

    iget v0, p0, Lcom/tencent/tp/a/d;->q:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/a/d;->t:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/d;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/tp/a/d;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/tencent/tp/a/d;->q:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->g(Landroid/content/Context;)Lcom/tencent/tp/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/a/d;->t:Landroid/widget/Button;

    iget-object v0, v0, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/h;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tp/a/d;->r:Z

    :cond_0
    iget v0, p0, Lcom/tencent/tp/a/d;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/tp/a/d;->q:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tp/a/d;->e()V

    goto :goto_0
.end method

.method protected s()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/tencent/tp/a/d;->q:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/d;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tp/a/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tp/a/d;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
