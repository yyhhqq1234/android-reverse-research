.class public Lcom/tencent/friday/uikit/d/d/b/b;
.super Lcom/tencent/friday/uikit/a/f/a;
.source "JHorizontalTableView.java"

# interfaces
.implements Lcom/tencent/friday/uikit/d/d/b/a;


# instance fields
.field public f:I

.field public g:I

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Lcom/tencent/friday/uikit/d/d/b/d;

.field private l:Z

.field private m:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/friday/uikit/a/f/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->f:I

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->g:I

    .line 47
    iput v1, p0, Lcom/tencent/friday/uikit/d/d/b/b;->h:I

    .line 51
    iput-boolean v1, p0, Lcom/tencent/friday/uikit/d/d/b/b;->j:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->l:Z

    .line 237
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/b/b$1;-><init>(Lcom/tencent/friday/uikit/d/d/b/b;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/friday/uikit/d/d/b/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V

    .line 73
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

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/b/b;I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/tencent/friday/uikit/d/d/b/b;->a(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCallbackData_Clicked;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/b/b;->i:Landroid/content/Context;

    .line 80
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/b/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 81
    iput-boolean p3, p0, Lcom/tencent/friday/uikit/d/d/b/b;->l:Z

    .line 82
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/b;->c()V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/b/b;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/friday/uikit/d/d/b/b;)Lcom/tencent/friday/uikit/d/d/b/d;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->k:Lcom/tencent/friday/uikit/d/d/b/d;

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

.method static synthetic c(Lcom/tencent/friday/uikit/d/d/b/b;)Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/b/b;->d()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, p0, Lcom/tencent/friday/uikit/d/d/b/b;->f:I

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

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->j:Z

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->j:Z

    goto :goto_0
.end method

.method private setRowWidth(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 1

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->width:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->g:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->l:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/b/b;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V
    .locals 4

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 95
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 95
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 99
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getBackgroundImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setBackgroudImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    .line 100
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getSeperatorColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setSeperatorColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 102
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getSelectedStatusEnabled()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setNeedSelectedState(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 103
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getCellStyle()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getCellDatas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/friday/uikit/d/d/b/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

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

    invoke-direct {p0, p1, p2}, Lcom/tencent/friday/uikit/d/d/b/b;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getCellSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setRowHeight(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V

    .line 167
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getCellSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setRowWidth(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V

    .line 168
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b/d;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/b/b;->i:Landroid/content/Context;

    iget v4, p0, Lcom/tencent/friday/uikit/d/d/b/b;->g:I

    iget v5, p0, Lcom/tencent/friday/uikit/d/d/b/b;->h:I

    iget-boolean v6, p0, Lcom/tencent/friday/uikit/d/d/b/b;->j:Z

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/friday/uikit/d/d/b/d;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;Ljava/util/ArrayList;IIZ)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->k:Lcom/tencent/friday/uikit/d/d/b/d;

    .line 169
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->k:Lcom/tencent/friday/uikit/d/d/b/d;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->k:Lcom/tencent/friday/uikit/d/d/b/d;

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
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/b;->a()V

    .line 212
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b/b;->getParent()Landroid/view/ViewParent;

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
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->l:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/b/b;->f:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 201
    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->f:I

    return v0
.end method

.method public getView()Landroid/widget/AdapterView;
    .locals 0

    .prologue
    .line 266
    return-object p0
.end method

.method public setBackgroudImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V
    .locals 1

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->i:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->f:I

    goto :goto_0
.end method

.method public setOuterItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/tencent/friday/uikit/d/d/b/b;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    return-void
.end method

.method public setRowHeight(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 1

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->height:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b/b;->h:I

    goto :goto_0
.end method

.method public setSeperatorColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
