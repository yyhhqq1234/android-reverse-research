.class public Lcom/netease/epay/sdk/base/ui/NoSmsFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "NoSmsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final BANK_SEND_TEXT:Ljava/lang/String;

.field private final NOT_BANK_SEND_TEXT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.\u8bf7\u786e\u8ba4\u5f53\u524d\u662f\u5426\u4f7f\u7528\u94f6\u884c\u9884\u7559\u7684\u624b\u673a\u53f7\u7801\n2.\u8bf7\u68c0\u67e5\u77ed\u4fe1\u662f\u5426\u88ab\u624b\u673a\u5b89\u5168\u8f6f\u4ef6\u62e6\u622a\n3.\u82e5\u9884\u7559\u624b\u673a\u5df2\u505c\u7528\uff0c\u8bf7\u8054\u7cfb\u94f6\u884c\u5ba2\u670d\u54a8\u8be2\n4.\u82e5\u60a8\u5df2\u8054\u7cfb\u94f6\u884c\u66f4\u6362\u624b\u673a\u53f7\u7801\uff0c\u8bf7\u91cd\u65b0\u7ed1\u5b9a\u8be5\u94f6\u884c\u5361\u518d\u4f7f\u7528\n5.\u83b7\u53d6\u66f4\u591a\u5e2e\u52a9\uff0c\u8bf7\u62e8\u6253\u5ba2\u670d\u7535\u8bdd\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getSerivcePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->BANK_SEND_TEXT:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.\u8bf7\u68c0\u67e5\u77ed\u4fe1\u662f\u5426\u88ab\u624b\u673a\u5b89\u5168\u8f6f\u4ef6\u62e6\u622a\n2.\u82e5\u624b\u673a\u5df2\u505c\u7528\uff0c\u8bf7\u81f3\u7f51\u6613\u652f\u4ed8\u7535\u8111\u7aefepay.163.com\u66f4\u6362\u624b\u673a\u53f7\u7801\n3.\u83b7\u53d6\u66f4\u591a\u5e2e\u52a9\uff0c\u8bf7\u62e8\u6253\u5ba2\u670d\u7535\u8bdd\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getSerivcePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->NOT_BANK_SEND_TEXT:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static getInstance(Z)Lcom/netease/epay/sdk/base/ui/NoSmsFragment;
    .locals 3
    .param p0, "isBankSend"    # Z

    .prologue
    .line 33
    new-instance v0, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v2, "isBankSend"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/R$id;->btn_nosms_confirm_c:I

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->dismissAllowingStateLoss()V

    .line 61
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->reshowAllFragment(Landroid/support/v4/app/FragmentActivity;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_no_sms:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isBankSend"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tvContent:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->BANK_SEND_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tvContent:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    sget v2, Lcom/netease/epay/sdk/base/R$id;->btn_nosms_confirm_c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getSerivcePhone()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getMainColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 53
    return-object v1

    .line 46
    :cond_0
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tvHint:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tvContent:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->NOT_BANK_SEND_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
