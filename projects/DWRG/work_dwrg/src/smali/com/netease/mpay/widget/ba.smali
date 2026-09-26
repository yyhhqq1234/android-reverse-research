.class public Lcom/netease/mpay/widget/ba;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/ba$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/AutoCompleteTextView;ILjava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;[Ljava/lang/String;[Ljava/lang/String;)Landroid/text/TextWatcher;
    .locals 9

    if-nez p7, :cond_0

    const/4 v0, 0x6

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "163.com"

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const-string v1, "qq.com"

    aput-object v1, v8, v0

    const/4 v0, 0x2

    const-string v1, "126.com"

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const-string v1, "yeah.net"

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const-string v1, "sina.com"

    aput-object v1, v8, v0

    const/4 v0, 0x5

    const-string v1, "gmail.com"

    aput-object v1, v8, v0

    :goto_0
    invoke-static {p1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/EditText;)V

    new-instance v0, Lcom/netease/mpay/widget/bb;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/widget/bb;-><init>(Landroid/content/Context;ILjava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/widget/AutoCompleteTextView;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0

    :cond_0
    move-object/from16 v8, p7

    goto :goto_0
.end method

.method public static a(Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    const-string v0, "@163.com"

    invoke-static {p0, v0}, Lcom/netease/mpay/widget/ba;->a(Landroid/widget/AutoCompleteTextView;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/widget/AutoCompleteTextView;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v3, v1, :cond_0

    if-le v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
