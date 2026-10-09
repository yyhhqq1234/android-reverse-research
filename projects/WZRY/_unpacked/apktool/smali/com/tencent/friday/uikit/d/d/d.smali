.class public Lcom/tencent/friday/uikit/d/d/d;
.super Landroid/widget/TextView;
.source "JLabel.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/d;->a:I

    .line 49
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/d;->b:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;Z)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/d;->a:I

    .line 58
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/d;->b:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/d;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;)V

    .line 60
    iput-boolean p3, p0, Lcom/tencent/friday/uikit/d/d/d;->c:Z

    .line 61
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/d;->c()V

    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/d;->c:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/d;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 1

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;)V
    .locals 4

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 75
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 75
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 79
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getText()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V

    .line 80
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getHighlightedTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/friday/uikit/d/d/d;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 81
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getFont()Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V

    .line 82
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getTextAlignment()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setUKTextAlignment(I)V

    .line 83
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;->getEllipsis()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setEllipsis(I)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 165
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;

    .line 166
    if-eqz v0, :cond_7

    .line 167
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 170
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 173
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 176
    :cond_2
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/d;->setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V

    .line 179
    :cond_3
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_4

    .line 180
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/d;->setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 182
    :cond_4
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    if-eqz v1, :cond_5

    .line 183
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setFont:Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/d;->setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V

    .line 186
    :cond_5
    iget v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    if-eqz v1, :cond_6

    .line 187
    iget v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setTextAlignment:I

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/d;->setUKTextAlignment(I)V

    .line 190
    :cond_6
    iget v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    if-eqz v1, :cond_7

    .line 191
    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabelMethod;->setEllipsis:I

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setEllipsis(I)V

    .line 194
    :cond_7
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/d;->a()V

    .line 211
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 213
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/d;->c:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/d;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setEllipsis(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/d;->setSingleLine(Z)V

    goto :goto_0

    .line 152
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/d;->setSingleLine(Z)V

    goto :goto_0

    .line 156
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/d;->setSingleLine(Z)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/d;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/tencent/friday/uikit/d/c/c;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V

    .line 129
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/d;->a:I

    goto :goto_0
.end method

.method public setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 1

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method

.method public setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 1

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-static {p1}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/d;->setTextColor(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public setUKTextAlignment(I)V
    .locals 0

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/tencent/friday/uikit/d/c/e;->a(Landroid/widget/TextView;I)V

    .line 138
    return-void
.end method
