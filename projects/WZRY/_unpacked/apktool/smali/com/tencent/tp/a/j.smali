.class public Lcom/tencent/tp/a/j;
.super Lcom/tencent/tp/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/tencent/tp/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/tp/a/a$a;)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/j;->d()V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2

    iget v0, p0, Lcom/tencent/tp/a/j;->q:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/a/j;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/j;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/tp/a/j;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/tencent/tp/a/j;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/tp/a/j;->q:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tp/a/j;->e()V

    iget-object v0, p0, Lcom/tencent/tp/a/j;->v:Lcom/tencent/tp/a/a$a;

    invoke-interface {v0, p0}, Lcom/tencent/tp/a/a$a;->c(Lcom/tencent/tp/a/a;)V

    goto :goto_0
.end method

.method protected n()I
    .locals 1

    sget v0, Lcom/tencent/tp/a/h;->e:I

    return v0
.end method

.method protected r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tp/a/j;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tp/a/j;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
