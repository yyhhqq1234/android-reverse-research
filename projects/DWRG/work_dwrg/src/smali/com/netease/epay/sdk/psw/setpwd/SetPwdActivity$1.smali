.class Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;
.super Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.source "SetPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength(Ljava/lang/String;)V
    .locals 2
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/psw/setpwd/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/psw/setpwd/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/psw/setpwd/b;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->b(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u786e\u8ba46\u4f4d\u6570\u5b57\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->c(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->d(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->d(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    .line 88
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->e(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    :cond_0
    return-void
.end method
