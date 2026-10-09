.class public final Lcom/netease/mobile/link/u5;
.super Lcom/netease/mobile/link/h5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/h5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/h5;->d:Ljava/lang/String;

    const-string v1, "color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/netease/mobile/link/h5;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/h5;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget v1, p0, Lcom/netease/mobile/link/h5;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/netease/mobile/link/j5;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mobile/link/h5;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColorHint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget v1, p0, Lcom/netease/mobile/link/h5;->b:I

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/j5;->a(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_4

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/netease/mobile/link/h5;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textColorLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget v1, p0, Lcom/netease/mobile/link/h5;->b:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/j5;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/j5;->a(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_4
    :goto_0
    return-void
.end method
