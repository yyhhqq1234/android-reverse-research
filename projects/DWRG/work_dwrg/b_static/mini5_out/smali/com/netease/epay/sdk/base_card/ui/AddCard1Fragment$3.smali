.class Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;
.super Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;
.source "AddCard1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->addCardLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->updateScanViewVisible(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object p1

    sget v1, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_icon_cleanup:I

    invoke-virtual {p1, v0, v0, v1, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 15
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const-string p4, ""

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    iget-object p3, p3, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$102(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;I)I

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$202(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;I)I

    return-void

    :cond_2
    const-string p3, " "

    .line 14
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p3}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ne p3, p4, :cond_3

    return-void

    .line 18
    :cond_3
    iget-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p3, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$102(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;I)I

    .line 19
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p3}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$202(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;I)I

    .line 21
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)I

    move-result p2

    const/16 p3, 0xc

    if-eq p2, p3, :cond_4

    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$100(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)I

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    .line 22
    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)I

    move-result p2

    if-lt p2, p3, :cond_5

    .line 23
    :cond_4
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-virtual {p2, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->queryCardBin(Ljava/lang/String;)V

    .line 25
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 26
    iget-object p4, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p4}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "cardNum"

    invoke-interface {p2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p3, "cardPrefix"

    .line 28
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    const-string p3, "normalBind"

    const-string p4, "cardNoInput"

    const-string v0, "input"

    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method
