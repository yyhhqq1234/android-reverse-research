.class Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$2;
.super Ljava/lang/Object;
.source "ChooseCardBankFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 140
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$100(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->selectBank(I)V

    .line 141
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$000(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    iput v1, v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->selectIndex:I

    .line 142
    return-void
.end method
