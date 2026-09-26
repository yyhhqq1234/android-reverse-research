.class Lcom/netease/epay/sdk/base/view/AgreementTextView$1;
.super Ljava/lang/Object;
.source "AgreementTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/AgreementTextView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/AgreementTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView$1;->this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView$1;->this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->access$000(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView$1;->this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->access$100(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SignAgreementInfo;

    iget-object v2, v0, Lcom/netease/epay/sdk/base/model/SignAgreementInfo;->agreementTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView$1;->this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 65
    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->access$100(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SignAgreementInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SignAgreementInfo;->agreementAddress:Ljava/lang/String;

    const/4 v3, 0x1

    .line 64
    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/base/util/JumpUtil;->gotoServePact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/AgreementTextView$1;->this$0:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->access$200(Lcom/netease/epay/sdk/base/view/AgreementTextView;)Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/actionsheet/CustomActionSheet;->dismiss()V

    .line 67
    return-void
.end method
