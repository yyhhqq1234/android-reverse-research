.class Lcom/netease/epay/sdk/base/view/TipsView$1;
.super Ljava/lang/Object;
.source "TipsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/TipsView;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/TipsView;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/TipsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/TipsView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/TipsView;->access$000(Lcom/netease/epay/sdk/base/view/TipsView;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/TipsView;->access$100(Lcom/netease/epay/sdk/base/view/TipsView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/TipsView;->access$000(Lcom/netease/epay/sdk/base/view/TipsView;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$string;->epaysdk_account:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    .line 80
    invoke-virtual {v2}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/epay/sdk/base/R$string;->epaysdk_account_desc:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getSerivcePhone()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Landroid/text/SpannableString;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v0

    goto :goto_1

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$string;->epaysdk_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    .line 84
    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base/R$string;->epaysdk_phone_desc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v0

    goto :goto_1

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$string;->epaysdk_cvv:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    .line 88
    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base/R$string;->epaysdk_cvv_desc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_img_cvv:I

    .line 87
    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;

    move-result-object v0

    goto :goto_1

    .line 91
    :pswitch_4
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$string;->epaysdk_expire:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/TipsView$1;->this$0:Lcom/netease/epay/sdk/base/view/TipsView;

    .line 92
    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/TipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base/R$string;->epaysdk_expire_desc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base/R$drawable;->epaysdk_img_expire:I

    .line 91
    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/epay/sdk/base/ui/ImageMessageFragment;

    move-result-object v0

    goto/16 :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
