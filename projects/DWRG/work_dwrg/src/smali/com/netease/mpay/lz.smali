.class Lcom/netease/mpay/lz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/lq;


# direct methods
.method constructor <init>(Lcom/netease/mpay/lq;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->h(Lcom/netease/mpay/lq;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v1}, Lcom/netease/mpay/lq;->i(Lcom/netease/mpay/lq;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->e(Lcom/netease/mpay/lq;)V

    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->j(Lcom/netease/mpay/lq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->g(Lcom/netease/mpay/lq;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    iget-object v0, v0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    iget-object v1, v1, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$d;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    iget-object v2, v2, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$d;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v3}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/lz;->a:Lcom/netease/mpay/lq;

    invoke-static {v1}, Lcom/netease/mpay/lq;->d(Lcom/netease/mpay/lq;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
