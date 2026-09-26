.class Lcom/netease/epay/sdk/pay/ui/card/a$3;
.super Landroid/text/style/ClickableSpan;
.source "AddCard1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V
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
    .line 143
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/a$3;->b:Lcom/netease/epay/sdk/pay/ui/card/a;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/card/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getInstance_ShowMode(Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a$3;->b:Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/pay/ui/card/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "chooseCardBank"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 146
    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getMainColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 147
    return-void
.end method
