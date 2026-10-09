.class public Lcom/tencent/friday/uikit/d/d/a;
.super Landroid/widget/Button;
.source "JButton.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    .line 61
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/a;->b:Landroid/content/Context;

    .line 62
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/a;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/a;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "touch click:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->b(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/a;->e()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/a;->f()Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonCallbackData_Clicked;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/friday/uikit/c/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 212
    return-void
.end method

.method private e()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, p0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;II)V

    return-object v0
.end method

.method private f()Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonCallbackData_Clicked;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonCallbackData_Clicked;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonCallbackData_Clicked;-><init>()V

    return-object v0
.end method

.method private setBackBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 236
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 75
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 75
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 79
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getText()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V

    .line 80
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getTextColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;)V

    .line 81
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getFont()Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V

    .line 82
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/tencent/friday/uikit/d/d/a;->setPadding(IIII)V

    .line 83
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getTextAlignment()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setUKTextAlignment(I)V

    .line 84
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getEllipsis()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setEllipsis(I)V

    .line 85
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getBackgroundImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setBackGroundImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V

    .line 86
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;->getDisabled()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setDisable(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 88
    new-instance v0, Lcom/tencent/friday/uikit/d/d/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/a$1;-><init>(Lcom/tencent/friday/uikit/d/d/a;)V

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/a;->c()V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 252
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;

    .line 253
    if-eqz v0, :cond_4

    .line 254
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 257
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 260
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 263
    :cond_2
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    if-eqz v1, :cond_3

    .line 264
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setText:Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/a;->setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V

    .line 266
    :cond_3
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setEnabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_4

    .line 267
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButtonMethod;->setEnabled:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setEnabled(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 272
    :cond_4
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/a;->a()V

    .line 241
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 231
    return-void
.end method

.method public setBackGroundImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V
    .locals 1

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/friday/uikit/d/c/d;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/a;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setDisable(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setEnabled(Z)V

    .line 204
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEllipsis(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/a;->setSingleLine(Z)V

    goto :goto_0

    .line 178
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/a;->setSingleLine(Z)V

    goto :goto_0

    .line 182
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/a;->setSingleLine(Z)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setEnabled(Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public setFont(Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/tencent/friday/uikit/d/c/c;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V

    .line 120
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    goto :goto_0
.end method

.method public setText(Lcom/tencent/friday/uikit/jce/UnityKit/UKString;)V
    .locals 1

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method

.method public setTextColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;)V
    .locals 3

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->getNormalColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->getHighlightedColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateColor;->getDisabledColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setUKTextAlignment(I)V
    .locals 0

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/tencent/friday/uikit/d/c/e;->a(Landroid/widget/TextView;I)V

    .line 164
    return-void
.end method
