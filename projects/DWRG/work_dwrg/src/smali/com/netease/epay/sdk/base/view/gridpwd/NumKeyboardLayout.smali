.class public Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;
.super Landroid/widget/LinearLayout;
.source "NumKeyboardLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;
    }
.end annotation


# instance fields
.field private keyDelete:Landroid/view/View;

.field private keyHide:Landroid/view/View;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private numberKeyClickListner:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setOrientation(I)V

    .line 31
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_keyboard_row:I

    invoke-static {p1, v0, p0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keys:Ljava/util/List;

    .line 33
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_0:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 34
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_1:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 35
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_2:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 36
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_3:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 37
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_4:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 38
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_5:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 39
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_6:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 40
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_7:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 41
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_8:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 42
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_9:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setNumberKey(I)V

    .line 43
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_d:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keyDelete:Landroid/view/View;

    .line 44
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_keyb_hide:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keyHide:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keyDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keyHide:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->setImportantForAccessibility(I)V

    .line 51
    :cond_0
    return-void
.end method

.method private digRandomNumberKeys()V
    .locals 5

    .prologue
    .line 83
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keys:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    .line 88
    rsub-int/lit8 v0, v1, 0xa

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 89
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method private setNumberKey(I)V
    .locals 2
    .param p1, "keyViewResId"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 64
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->numberKeyClickListner:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;

    if-nez v0, :cond_1

    .line 80
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keyDelete:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->numberKeyClickListner:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;->onBackSpace()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->keyHide:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->numberKeyClickListner:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;->hide()V

    goto :goto_0

    .line 77
    :cond_3
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->numberKeyClickListner:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;->numberInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnNumberKeyClickListner(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->numberKeyClickListner:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;

    .line 96
    return-void
.end method
