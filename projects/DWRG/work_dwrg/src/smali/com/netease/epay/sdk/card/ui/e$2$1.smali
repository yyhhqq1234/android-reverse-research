.class Lcom/netease/epay/sdk/card/ui/e$2$1;
.super Ljava/lang/Object;
.source "ForgetPwdValidateFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/ui/e$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/ui/e$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/ui/e$2;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netease/epay/sdk/card/ui/e$2$1;->a:Lcom/netease/epay/sdk/card/ui/e$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mmyy"    # Ljava/lang/String;
    .param p2, "yymm"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$2$1;->a:Lcom/netease/epay/sdk/card/ui/e$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/ui/e$2;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/ui/e;->c(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$2$1;->a:Lcom/netease/epay/sdk/card/ui/e$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/ui/e$2;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/card/ui/e;->a(Lcom/netease/epay/sdk/card/ui/e;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    return-void
.end method
