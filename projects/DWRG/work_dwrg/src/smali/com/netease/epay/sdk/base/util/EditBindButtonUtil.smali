.class public Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;
.super Ljava/lang/Object;
.source "EditBindButtonUtil.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private btn:Landroid/widget/Button;

.field private editTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/Button;)V
    .locals 2
    .param p1, "b"    # Landroid/widget/Button;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->btn:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->editTexts:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addEditText(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "e"    # Landroid/widget/TextView;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->btn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    :cond_0
    move v1, v2

    move v0, v3

    .line 61
    :goto_1
    iget-object v4, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    instance-of v4, v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    if-eqz v4, :cond_2

    .line 64
    check-cast v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->checkTextWrong(Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_2
    move v4, v0

    .line 68
    :goto_3
    if-nez v4, :cond_4

    .line 72
    :goto_4
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 64
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_5
    move v4, v0

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_5

    .line 61
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_5
    move v4, v0

    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 48
    return-void
.end method

.method public clearEditTexts()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 52
    return-void
.end method

.method public setButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "btn"    # Landroid/widget/Button;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->btn:Landroid/widget/Button;

    .line 44
    return-void
.end method
