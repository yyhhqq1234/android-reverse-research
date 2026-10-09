.class public Lcom/tencent/friday/uikit/d/d/c;
.super Landroid/widget/ImageView;
.source "JImageView.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/c;->a:I

    .line 38
    iput-boolean v1, p0, Lcom/tencent/friday/uikit/d/d/c;->d:Z

    .line 45
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/tencent/friday/uikit/d/d/c;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;ZZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;ZZ)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/c;->a:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/c;->d:Z

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/friday/uikit/d/d/c;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;ZZ)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;ZZ)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/c;->c:Landroid/content/Context;

    .line 64
    iput-boolean p3, p0, Lcom/tencent/friday/uikit/d/d/c;->b:Z

    .line 65
    iput-boolean p4, p0, Lcom/tencent/friday/uikit/d/d/c;->d:Z

    .line 66
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/c;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V

    .line 67
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/c;->c()V

    .line 69
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/c;->b:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/c;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V
    .locals 4

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/c;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 81
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 81
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 86
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getNinePatchConfig()Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->width:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    .line 89
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->height:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    .line 90
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/tencent/friday/uikit/d/c/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;IIZ)V

    .line 92
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/c;->setBackGround(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;->getImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/c;->setImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 140
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;

    .line 141
    if-eqz v0, :cond_3

    .line 142
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 145
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 148
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 151
    :cond_2
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    if-eqz v1, :cond_3

    .line 152
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageViewMethod;->setImage:Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/c;->setImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    .line 155
    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/c;->a()V

    .line 172
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 174
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/c;->b:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/c;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 161
    :cond_0
    return-void
.end method

.method public setBackGround(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/c;->d:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/friday/uikit/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/friday/uikit/a/b/c;->a(Landroid/widget/ImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/c;->a:I

    goto :goto_0
.end method

.method public setImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V
    .locals 1

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getUrl()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getUrl()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/friday/uikit/a/b/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/c;->d:Z

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/friday/uikit/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/friday/uikit/a/b/c;->a(Landroid/widget/ImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
