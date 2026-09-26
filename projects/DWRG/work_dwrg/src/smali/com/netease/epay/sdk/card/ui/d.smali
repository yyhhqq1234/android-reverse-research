.class public Lcom/netease/epay/sdk/card/ui/d;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "ForgetPwdHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/widget/ListView;

.field private b:Lcom/netease/epay/sdk/card/model/AddCardConfig;

.field private c:Lcom/netease/epay/sdk/card/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/netease/epay/sdk/card/ui/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/Card;",
            ">;)",
            "Lcom/netease/epay/sdk/card/ui/d;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "cards_list"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    new-instance v1, Lcom/netease/epay/sdk/card/ui/d;

    invoke-direct {v1}, Lcom/netease/epay/sdk/card/ui/d;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/card/ui/d;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->b:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 70
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/d;->b:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleFirstPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 71
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tv_forgetpwdhome_top_guide_x:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/d;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/d;->b:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/model/AddCardConfig;->tipsFirstPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v0, Lcom/netease/epay/sdk/card/R$id;->lv_forgetpwdhome_card_list:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/d;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->a:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    sget v0, Lcom/netease/epay/sdk/card/R$id;->btn_forgetpwdhome_next_c:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/d;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cards_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/netease/epay/sdk/card/a/a;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/epay/sdk/card/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    .line 80
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/card/R$id;->btn_forgetpwdhome_next_c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    iget v1, v1, Lcom/netease/epay/sdk/card/a/a;->a:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    .line 88
    if-eqz v0, :cond_1

    .line 89
    const-string v1, "credit"

    iget-object v2, v0, Lcom/netease/epay/sdk/base/model/Card;->cardType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 90
    iget-object v2, v0, Lcom/netease/epay/sdk/base/model/Card;->bankId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    invoke-virtual {v4, v0}, Lcom/netease/epay/sdk/card/a/a;->a(Lcom/netease/epay/sdk/base/model/Card;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->bankAccountName:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/netease/epay/sdk/card/ui/e;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/card/ui/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/d;->addNextFragment2Activity(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u94f6\u884c\u5361\u5217\u8868\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/epay/sdk/card/ui/f;

    if-eqz v1, :cond_0

    .line 48
    check-cast v0, Lcom/netease/epay/sdk/card/ui/f;

    invoke-interface {v0}, Lcom/netease/epay/sdk/card/ui/f;->a()Lcom/netease/epay/sdk/card/model/AddCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->b:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    .line 50
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    sget v0, Lcom/netease/epay/sdk/card/R$layout;->epaysdk_actv_forget_pwd_home:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    iget v0, v0, Lcom/netease/epay/sdk/card/a/a;->a:I

    if-eq v0, p3, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    iput p3, v0, Lcom/netease/epay/sdk/card/a/a;->a:I

    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/d;->c:Lcom/netease/epay/sdk/card/a/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/a/a;->notifyDataSetChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/netease/epay/sdk/card/ui/d;->a()V

    .line 62
    return-void
.end method
