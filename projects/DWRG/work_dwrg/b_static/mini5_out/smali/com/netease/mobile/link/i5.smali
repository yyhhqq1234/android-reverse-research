.class public final Lcom/netease/mobile/link/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/i5$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/netease/mobile/link/h5;",
            ">;I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    new-array v1, v0, [Lcom/netease/mobile/link/i5$a;

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v3, 0x1010098

    const-string v4, "textColor"

    invoke-direct {v2, v3, v4}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v4, 0x10100d4

    const-string v5, "background"

    invoke-direct {v2, v4, v5}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v5, 0x1010119

    const-string v6, "src"

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v5, 0x1010129

    const-string v6, "divider"

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v5, 0x101009a

    const-string v6, "textColorHint"

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v5, 0x101009b

    const-string v6, "textColorLink"

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v5, 0x1010176

    const-string v6, "popupBackground"

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v5, 0x1010362

    const-string v6, "textCursorDrawable"

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x7

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/mobile/link/i5$a;

    const v5, 0x1010095

    const-string v6, "textSize"

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/i5$a;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x8

    aput-object v2, v1, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, v1, v2

    new-array v6, v4, [I

    iget v7, v5, Lcom/netease/mobile/link/i5$a;->a:I

    aput v7, v6, v3

    invoke-virtual {p1, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v6, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/netease/mobile/link/i5$a;->b:Ljava/lang/String;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/netease/mobile/link/i;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/h5;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 2
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    sget-object v0, Lcom/netease/mobile/link/w;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/netease/mobile/link/w;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/j5;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mobile/link/j5;->b:Z

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/netease/mobile/link/j5;->b:Z

    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/netease/mobile/link/h6;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object p1

    .line 1
    new-instance p2, Lcom/netease/mobile/link/j5$d;

    .line 2
    invoke-direct {p2}, Lcom/netease/mobile/link/j5$d;-><init>()V

    .line 3
    iput-object p2, p1, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    return-object v1

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_b

    invoke-interface {p3, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "background"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "style"

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "src"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "popupBackground"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "drawableTop"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "drawableLeft"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "drawableRight"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "drawableBottom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "textColor"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "textColorHint"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "textColorLink"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, "divider"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const-string v6, "textSize"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "text"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "textCursorDrawable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    const-string v6, "@"

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :try_start_0
    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p3}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    invoke-virtual {p0, p2, v0, v4}, Lcom/netease/mobile/link/i5;->a(Landroid/content/Context;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_4

    .line 7
    :cond_9
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 8
    :catch_0
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 9
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/netease/mobile/link/i;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/h5;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_a

    .line 10
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_a

    :cond_c
    const/4 v2, -0x1

    const/16 v3, 0x2e

    .line 13
    :try_start_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v2, v3, :cond_f

    const-string v2, "View"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "android.view."

    invoke-virtual {v2, p1, v3, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    goto :goto_5

    :cond_d
    move-object v2, v1

    :goto_5
    if-nez v2, :cond_e

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "android.widget."

    invoke-virtual {v2, p1, v3, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    :cond_e
    if-nez v2, :cond_10

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v2, "android.webkit."

    goto :goto_6

    :cond_f
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    move-object v2, v1

    :goto_6
    invoke-virtual {p2, p1, v2, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    invoke-static {p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    :cond_10
    :goto_7
    if-eqz v2, :cond_13

    instance-of p1, v2, Landroid/widget/TextView;

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lcom/netease/mobile/link/j5$d;->c:Landroid/graphics/Typeface;

    goto :goto_8

    :cond_11
    move-object p1, v1

    :goto_8
    if-eqz p1, :cond_13

    .line 15
    move-object p1, v2

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object p2

    .line 16
    iget-object p2, p2, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    if-eqz p2, :cond_12

    iget-object v1, p2, Lcom/netease/mobile/link/j5$d;->c:Landroid/graphics/Typeface;

    .line 17
    :cond_12
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mobile/link/h5;

    invoke-virtual {p2, v2}, Lcom/netease/mobile/link/h5;->a(Landroid/view/View;)V

    goto :goto_9

    :cond_14
    move-object v1, v2

    :cond_15
    :goto_a
    return-object v1
.end method
