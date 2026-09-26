.class Lcom/netease/epay/sdk/pay/ui/card/a$1;
.super Ljava/lang/Object;
.source "AddCard1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/card/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/a$1;->b:Lcom/netease/epay/sdk/pay/ui/card/a;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/card/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    const-string v0, "\u6d3b\u52a8\u8be6\u60c5"

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a$1;->b:Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/pay/ui/card/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 87
    return-void
.end method
