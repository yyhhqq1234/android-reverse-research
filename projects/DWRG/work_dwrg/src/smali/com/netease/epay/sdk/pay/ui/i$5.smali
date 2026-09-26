.class Lcom/netease/epay/sdk/pay/ui/i$5;
.super Ljava/lang/Object;
.source "PayChooserFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/i;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/i;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/i$5;->b:Lcom/netease/epay/sdk/pay/ui/i;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/i$5;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doneClick()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$5;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->reshowAllFragment(Landroid/support/v4/app/FragmentActivity;)Z

    .line 182
    return-void
.end method
