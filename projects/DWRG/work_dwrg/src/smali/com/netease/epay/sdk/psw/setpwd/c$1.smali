.class Lcom/netease/epay/sdk/psw/setpwd/c$1;
.super Ljava/lang/Object;
.source "SetShortyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/setpwd/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/setpwd/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/setpwd/c;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$1;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$1;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->dismissAllowingStateLoss()V

    .line 65
    const-string v0, "setPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/SetShortPwdController;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    new-instance v2, Lcom/netease/epay/sdk/psw/setpwd/a;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$1;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/psw/setpwd/SetPwdFragmentActivity;

    invoke-direct {v2, v3, v1}, Lcom/netease/epay/sdk/psw/setpwd/a;-><init>(Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/setpwd/a;)V

    .line 70
    :cond_0
    return-void
.end method
