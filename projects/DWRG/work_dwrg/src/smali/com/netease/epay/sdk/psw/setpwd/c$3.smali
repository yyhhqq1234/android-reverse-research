.class Lcom/netease/epay/sdk/psw/setpwd/c$3;
.super Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.source "SetShortyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/setpwd/c;
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
    .line 82
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength(Ljava/lang/String;)V
    .locals 4
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->a(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/psw/setpwd/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/netease/epay/sdk/base/util/DelayedTask;

    const/16 v1, 0xc8

    new-instance v2, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;-><init>(Lcom/netease/epay/sdk/psw/setpwd/c$3;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/DelayedTask;-><init>(ILcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;)V

    .line 98
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/DelayedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->a(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/psw/setpwd/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/psw/setpwd/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4e24\u6b21\u8f93\u5165\u7684\u652f\u4ed8\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "setPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/SetShortPwdController;

    .line 105
    if-eqz v0, :cond_2

    .line 106
    new-instance v2, Lcom/netease/epay/sdk/psw/setpwd/a;

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/psw/setpwd/SetPwdFragmentActivity;

    invoke-direct {v2, v3, v1}, Lcom/netease/epay/sdk/psw/setpwd/a;-><init>(Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/setpwd/a;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->dismissAllowingStateLoss()V

    goto :goto_0
.end method
