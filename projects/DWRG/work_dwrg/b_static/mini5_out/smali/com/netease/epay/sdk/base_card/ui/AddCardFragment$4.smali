.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;
.super Ljava/lang/Object;
.source "AddCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->initAddCardView()V
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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$100(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u8bf7\u9009\u62e9\u94f6\u884c\u5361\u7c7b\u578b"

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getTextWithoutSpace()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_2

    .line 12
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/VerticalTwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/VerticalTwoButtonMessageFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    .line 41
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/epay/sdk/base/ui/VerticalTwoButtonMessageFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    const-string v0, "cardNoIncompletePop"

    const/4 v1, 0x0

    const-string v2, "enter"

    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->nextClick(Ljava/lang/String;)V

    return-void
.end method
