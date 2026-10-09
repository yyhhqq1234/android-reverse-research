.class public Lcom/tencent/friday/uikit/d/d/b/e;
.super Landroid/widget/ListView;
.source "JVerticalTableview.java"

# interfaces
.implements Lcom/tencent/friday/uikit/d/d/b/a;


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/tencent/friday/uikit/d/d/b/d;

.field private g:Z

.field private h:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->a:I

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->b:I

    .line 47
    iput v1, p0, Lcom/tencent/friday/uikit/d/d/b/e;->c:I

    .line 51
    iput-boolean v1, p0, Lcom/tencent/friday/uikit/d/d/b/e;->e:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->g:Z

    .line 237
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b/e$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/b/e$1;-><init>(Lcom/tencent/friday/uikit/d/d/b/e;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/friday/uikit/d/d/b/e;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V

    .line 69
    return-void
.end method

.method private a(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v1, p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/b/e;I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/tencent/friday/uikit/d/d/b/e;->a(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/b/e;->d:Landroid/content/Context;

    .line 76
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/b/e;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 77
    iput-boolean p3, p0, Lcom/tencent/friday/uikit/d/d/b/e;->g:Z

    .line 78
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/e;->c()V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/b/e;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/friday/uikit/d/d/b/e;)Lcom/tencent/friday/uikit/d/d/b/d;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->f:Lcom/tencent/friday/uikit/d/d/b/d;

    return-object v0
.end method

.method private b(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lcom/tencent/friday/uikit/d/d/b/e;)Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/b/e;->d()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, p0, Lcom/tencent/friday/uikit/d/d/b/e;->a:I

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;II)V

    return-object v0
.end method

.method private setNeedSelectedState(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->e:Z

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->e:Z

    goto :goto_0
.end method

.method private setRowWidth(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 1

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->width:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->g:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/b/e;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V
    .locals 4

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 91
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 91
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 95
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getBackgroundImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setBackgroudImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    .line 96
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getSeperatorColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setSeperatorColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 98
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getSelectedStatusEnabled()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setNeedSelectedState(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 99
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getCellStyle()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getCellDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/friday/uikit/d/d/b/e;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/friday/uikit/d/d/b/e;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getCellSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setRowHeight(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V

    .line 167
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getCellSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setRowWidth(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V

    .line 168
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b/d;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/b/e;->d:Landroid/content/Context;

    iget v4, p0, Lcom/tencent/friday/uikit/d/d/b/e;->b:I

    iget v5, p0, Lcom/tencent/friday/uikit/d/d/b/e;->c:I

    iget-boolean v6, p0, Lcom/tencent/friday/uikit/d/d/b/e;->e:Z

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/friday/uikit/d/d/b/d;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;IIZ)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->f:Lcom/tencent/friday/uikit/d/d/b/d;

    .line 169
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->f:Lcom/tencent/friday/uikit/d/d/b/d;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->f:Lcom/tencent/friday/uikit/d/d/b/d;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/b/d;->notifyDataSetChanged()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string/jumbo v0, "tableview parameter format is wrong"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 220
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;

    .line 221
    if-eqz v0, :cond_2

    .line 222
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 225
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 228
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 229
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v0}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 232
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/e;->a()V

    .line 212
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 216
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->g:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/b/e;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 201
    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->a:I

    return v0
.end method

.method public getView()Landroid/widget/AdapterView;
    .locals 0

    .prologue
    .line 265
    return-object p0
.end method

.method public setBackgroudImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V
    .locals 1

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->a:I

    goto :goto_0
.end method

.method public setOuterItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/tencent/friday/uikit/d/d/b/e;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    return-void
.end method

.method public setRowHeight(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 1

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->height:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/e;->c:I

    goto :goto_0
.end method

.method public setSeperatorColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 2

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/e;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
