.class public Lcom/netease/mpay/widget/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/aa$b;,
        Lcom/netease/mpay/widget/aa$a;
    }
.end annotation


# direct methods
.method private static varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_4

    aget-object v0, p0, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    aget-object v0, p0, v0

    instance-of v0, v0, Landroid/view/View$OnClickListener;

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/netease/mpay/widget/aa$a;

    aget-object v0, p0, v2

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v1, p0, v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-direct {v4, v0, v1}, Lcom/netease/mpay/widget/aa$a;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Landroid/view/View$OnClickListener;II)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/ab;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/ab;-><init>(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static varargs a(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-static {p2}, Lcom/netease/mpay/widget/aa;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/aa$a;

    iget-object v3, v0, Lcom/netease/mpay/widget/aa$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/netease/mpay/widget/aa$a;->b:Landroid/view/View$OnClickListener;

    iget-object v0, v0, Lcom/netease/mpay/widget/aa$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v1, v4, v3, v0}, Lcom/netease/mpay/widget/aa;->a(Landroid/text/SpannableStringBuilder;Landroid/view/View$OnClickListener;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/netease/mpay/widget/aa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 v0, 0x1

    return v0
.end method
