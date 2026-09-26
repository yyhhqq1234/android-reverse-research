.class public Lcom/netease/epay/sdk/base/view/AgreementTextView;
.super Landroid/widget/TextView;
.source "AgreementTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

.field private adapter:Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

.field private agreementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private sheetContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0, p0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->agreementList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    return-object v0
.end method


# virtual methods
.method public disMissSheet()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method

.method public isActionSheetShow()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->agreementList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->sheetContentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_service_sheet:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->sheetContentView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->sheetContentView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->lv_banks_service:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 61
    new-instance v1, Lcom/netease/epay/sdk/base/view/AgreementTextView$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/view/AgreementTextView$1;-><init>(Lcom/netease/epay/sdk/base/view/AgreementTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->adapter:Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->sheetContentView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->tv_cancel_service:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    new-instance v1, Lcom/netease/epay/sdk/base/view/AgreementTextView$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/view/AgreementTextView$2;-><init>(Lcom/netease/epay/sdk/base/view/AgreementTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->sheetContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->actionSheet:Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->sheetContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->show(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->adapter:Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->adapter:Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setAgreementList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "agreementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SignAgreementInfo;>;"
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->agreementList:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->adapter:Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1, p1}, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->adapter:Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView;->adapter:Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->setDatas(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
