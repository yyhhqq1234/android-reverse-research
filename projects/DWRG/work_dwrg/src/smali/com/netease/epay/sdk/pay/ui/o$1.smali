.class Lcom/netease/epay/sdk/pay/ui/o$1;
.super Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.source "PayShortyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/o;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/o;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/o$1;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength(Ljava/lang/String;)V
    .locals 2
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o$1;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/o;->a(Lcom/netease/epay/sdk/pay/ui/o;)Lcom/netease/epay/sdk/pay/ui/o$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o$1;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/o;->a(Lcom/netease/epay/sdk/pay/ui/o;)Lcom/netease/epay/sdk/pay/ui/o$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/pay/ui/o$a;->a(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o$1;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
