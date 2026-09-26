.class Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$2;
.super Ljava/lang/Object;
.source "SetPwdActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->back(Landroid/view/View;)V
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
    .line 105
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$2;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "\u5426"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$2;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "\u662f"

    return-object v0
.end method

.method public leftClick()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public rightClick()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$2;->a:Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;Ljava/lang/String;)V

    .line 109
    return-void
.end method
