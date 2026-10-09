.class public Lcom/tencent/friday/uikit/d/d/h;
.super Landroid/widget/ScrollView;
.source "JTextBox.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/h;->a:I

    .line 41
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/h;->b:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/h;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V

    .line 43
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/h;->c()V

    .line 44
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;I)V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/tencent/friday/uikit/d/d/d;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/friday/uikit/d/d/d;-><init>(Landroid/content/Context;)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Lcom/tencent/friday/uikit/d/d/d;->setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {v0, p2}, Lcom/tencent/friday/uikit/d/d/d;->setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 86
    :cond_1
    if-eqz p3, :cond_2

    .line 87
    invoke-virtual {v0, p3}, Lcom/tencent/friday/uikit/d/d/d;->setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V

    .line 88
    :cond_2
    invoke-virtual {v0, p4}, Lcom/tencent/friday/uikit/d/d/d;->setUKTextAlignment(I)V

    .line 90
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/tencent/friday/uikit/d/d/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/h;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 102
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V
    .locals 4

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/h;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 56
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 56
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 60
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getText()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getFont()Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;->getTextAlignment()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/d/h;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;I)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 115
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;

    .line 116
    if-eqz v0, :cond_2

    .line 117
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 120
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 123
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 124
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBoxMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v0}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 127
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/h;->a()V

    .line 107
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/h;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 97
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/h;->a:I

    goto :goto_0
.end method
