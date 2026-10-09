.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;
.super Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;
.source "AddCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->addCardLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$600(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->updateScanViewVisible(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$700(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$800(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_icon_cleanup:I

    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 14
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$600(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$700(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v0, " "

    const-string v1, ""

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\d+"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$900(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const-string p4, ""

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$402(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;I)I

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$502(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;I)I

    return-void

    :cond_2
    const-string v0, " "

    .line 14
    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "\\d+"

    .line 15
    invoke-virtual {p1, p4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p4

    const-string v0, "input"

    if-nez p4, :cond_4

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 18
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "bankName"

    .line 19
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    const-string p3, "searchBankBind"

    const-string p4, "bankNameInput"

    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void

    .line 25
    :cond_4
    iget-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p3}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ne p3, p4, :cond_5

    return-void

    .line 28
    :cond_5
    iget-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p3, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$402(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;I)I

    .line 29
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p3}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$502(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;I)I

    .line 31
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)I

    move-result p2

    const/16 p3, 0xc

    if-eq p2, p3, :cond_6

    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$400(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)I

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    .line 32
    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)I

    move-result p2

    if-lt p2, p3, :cond_7

    .line 33
    :cond_6
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {p2, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->queryCardBin(Ljava/lang/String;)V

    .line 35
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 36
    iget-object p4, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p4}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v2, "cardNum"

    invoke-interface {p2, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p3, "cardPrefix"

    .line 38
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    const-string p3, "normalBind"

    const-string p4, "cardNoInput"

    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method
