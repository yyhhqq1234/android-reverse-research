.class public Lcom/tencent/friday/uikit/d/d/b/d;
.super Landroid/widget/BaseAdapter;
.source "JTableViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/friday/uikit/d/d/b/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/d;->a:Ljava/util/ArrayList;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/d;->f:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/d;->g:Z

    .line 31
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/b/d;->e:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/tencent/friday/uikit/d/d/b/d;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;

    .line 33
    iput-object p3, p0, Lcom/tencent/friday/uikit/d/d/b/d;->a:Ljava/util/ArrayList;

    .line 34
    iput p5, p0, Lcom/tencent/friday/uikit/d/d/b/d;->d:I

    .line 35
    iput p4, p0, Lcom/tencent/friday/uikit/d/d/b/d;->c:I

    .line 36
    iput-boolean p6, p0, Lcom/tencent/friday/uikit/d/d/b/d;->g:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/friday/uikit/d/d/b/d;->f:I

    .line 59
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b/c;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/b/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/b/d;->b:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;

    iget v3, p0, Lcom/tencent/friday/uikit/d/d/b/d;->c:I

    iget v4, p0, Lcom/tencent/friday/uikit/d/d/b/d;->d:I

    iget-boolean v5, p0, Lcom/tencent/friday/uikit/d/d/b/d;->g:Z

    invoke-direct/range {v0 .. v5}, Lcom/tencent/friday/uikit/d/d/b/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;IIZ)V

    .line 66
    new-instance v1, Lcom/tencent/friday/uikit/d/d/b/d$a;

    invoke-direct {v1, p0}, Lcom/tencent/friday/uikit/d/d/b/d$a;-><init>(Lcom/tencent/friday/uikit/d/d/b/d;)V

    .line 67
    iget-object v2, v0, Lcom/tencent/friday/uikit/d/d/b/c;->b:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/tencent/friday/uikit/d/d/b/d$a;->a(Lcom/tencent/friday/uikit/d/d/b/d$a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 68
    iget-object v2, v0, Lcom/tencent/friday/uikit/d/d/b/c;->a:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/tencent/friday/uikit/d/d/b/d$a;->b(Lcom/tencent/friday/uikit/d/d/b/d$a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v1

    move-object v3, v0

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;

    .line 77
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/tencent/friday/uikit/d/d/b/d$a;->a(Lcom/tencent/friday/uikit/d/d/b/d$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 78
    invoke-static {v4}, Lcom/tencent/friday/uikit/d/d/b/d$a;->a(Lcom/tencent/friday/uikit/d/d/b/d$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 79
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 80
    if-ne v1, v7, :cond_1

    move v5, v6

    .line 81
    :goto_1
    if-ge v5, v7, :cond_1

    .line 82
    invoke-static {v4}, Lcom/tencent/friday/uikit/d/d/b/d$a;->a(Lcom/tencent/friday/uikit/d/d/b/d$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/friday/uikit/d/d/c;

    .line 83
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    invoke-virtual {v1, v2}, Lcom/tencent/friday/uikit/d/d/c;->setImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    .line 81
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/d/b/d$a;

    move-object v4, v0

    move-object v3, p2

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;->getTexts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Lcom/tencent/friday/uikit/d/d/b/d$a;->b(Lcom/tencent/friday/uikit/d/d/b/d$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 89
    invoke-static {v4}, Lcom/tencent/friday/uikit/d/d/b/d$a;->b(Lcom/tencent/friday/uikit/d/d/b/d$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 90
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;->getTexts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 91
    if-ne v7, v1, :cond_2

    move v5, v6

    .line 92
    :goto_2
    if-ge v5, v7, :cond_2

    .line 93
    invoke-static {v4}, Lcom/tencent/friday/uikit/d/d/b/d$a;->b(Lcom/tencent/friday/uikit/d/d/b/d$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/friday/uikit/d/d/d;

    .line 94
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;->getTexts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {v1, v2}, Lcom/tencent/friday/uikit/d/d/d;->setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V

    .line 92
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 97
    :cond_2
    iget v0, p0, Lcom/tencent/friday/uikit/d/d/b/d;->f:I

    if-ltz v0, :cond_3

    move-object v0, v3

    .line 98
    check-cast v0, Lcom/tencent/friday/uikit/d/d/b/c;

    .line 99
    iget v1, p0, Lcom/tencent/friday/uikit/d/d/b/d;->f:I

    if-ne v1, p1, :cond_4

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/d/d/b/c;->setSelected(Z)V

    .line 107
    :cond_3
    :goto_3
    return-object v3

    .line 102
    :cond_4
    invoke-virtual {v0, v6}, Lcom/tencent/friday/uikit/d/d/b/c;->setSelected(Z)V

    goto :goto_3
.end method
