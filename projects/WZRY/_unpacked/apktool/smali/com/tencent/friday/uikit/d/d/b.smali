.class public Lcom/tencent/friday/uikit/d/d/b;
.super Landroid/widget/AbsoluteLayout;
.source "JCheckBox.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/friday/uikit/d/d/c;

.field private d:Lcom/tencent/friday/uikit/d/d/c;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b;->e:Z

    .line 41
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/b;->b:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, v1, v1, v0, v0}, Lcom/tencent/friday/uikit/d/d/b;->layout(IIII)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V

    .line 44
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b;->c()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/b;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/b;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/tencent/friday/uikit/d/d/b;->e:Z

    return p1
.end method

.method private d()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, p0, Lcom/tencent/friday/uikit/d/d/b;->a:I

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;II)V

    return-object v0
.end method

.method private e()Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-boolean v2, p0, Lcom/tencent/friday/uikit/d/d/b;->e:Z

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>(Z)V

    invoke-direct {v0, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/b;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 127
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 56
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v3

    .line 57
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v5

    .line 56
    invoke-static {p0, v0, v3, v4, v5}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 58
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getBackgroundImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/tencent/friday/uikit/d/d/c;

    iget-object v3, p0, Lcom/tencent/friday/uikit/d/d/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getBackgroundImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/tencent/friday/uikit/d/d/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/d/d/c;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getIsChecked()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getIsChecked()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b;->e:Z

    .line 66
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getCheckedImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lcom/tencent/friday/uikit/d/d/c;

    iget-object v3, p0, Lcom/tencent/friday/uikit/d/d/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getCheckedImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/tencent/friday/uikit/d/d/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->c:Lcom/tencent/friday/uikit/d/d/c;

    .line 68
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->c:Lcom/tencent/friday/uikit/d/d/c;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b;->addView(Landroid/view/View;)V

    .line 69
    iget-object v3, p0, Lcom/tencent/friday/uikit/d/d/b;->c:Lcom/tencent/friday/uikit/d/d/c;

    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b;->e:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/tencent/friday/uikit/d/d/c;->setVisibility(I)V

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getUncheckedImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lcom/tencent/friday/uikit/d/d/c;

    iget-object v3, p0, Lcom/tencent/friday/uikit/d/d/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;->getUncheckedImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/tencent/friday/uikit/d/d/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->d:Lcom/tencent/friday/uikit/d/d/c;

    .line 73
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->d:Lcom/tencent/friday/uikit/d/d/c;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->d:Lcom/tencent/friday/uikit/d/d/c;

    iget-boolean v3, p0, Lcom/tencent/friday/uikit/d/d/b;->e:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Lcom/tencent/friday/uikit/d/d/c;->setVisibility(I)V

    .line 80
    :cond_2
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/b$1;-><init>(Lcom/tencent/friday/uikit/d/d/b;)V

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    :cond_3
    move v0, v1

    .line 64
    goto :goto_0

    :cond_4
    move v0, v2

    .line 69
    goto :goto_1

    :cond_5
    move v2, v1

    .line 74
    goto :goto_2
.end method

.method public a(ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->c:Lcom/tencent/friday/uikit/d/d/c;

    if-eqz v0, :cond_0

    .line 97
    iget-object v3, p0, Lcom/tencent/friday/uikit/d/d/b;->c:Lcom/tencent/friday/uikit/d/d/c;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/tencent/friday/uikit/d/d/c;->setVisibility(I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->d:Lcom/tencent/friday/uikit/d/d/c;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b;->d:Lcom/tencent/friday/uikit/d/d/c;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/friday/uikit/d/d/c;->setVisibility(I)V

    .line 102
    :cond_1
    if-eqz p2, :cond_2

    .line 103
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/b;->d()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/b;->e()Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxCallbackData_ValueChanged;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/friday/uikit/c/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 105
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 97
    goto :goto_0

    :cond_4
    move v2, v1

    .line 100
    goto :goto_1
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 140
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;

    .line 141
    if-eqz v0, :cond_3

    .line 142
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 145
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 148
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 151
    :cond_2
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_3

    .line 152
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBoxMethod;->setChecked:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/friday/uikit/d/d/b;->a(ZZ)V

    .line 155
    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b;->a()V

    .line 132
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/b;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 122
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/b;->a:I

    goto :goto_0
.end method
