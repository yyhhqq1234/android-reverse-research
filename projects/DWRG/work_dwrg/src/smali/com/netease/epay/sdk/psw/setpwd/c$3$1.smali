.class Lcom/netease/epay/sdk/psw/setpwd/c$3$1;
.super Ljava/lang/Object;
.source "SetShortyFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/setpwd/c$3;->onMaxLength(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/epay/sdk/psw/setpwd/c$3;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/setpwd/c$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->b:Lcom/netease/epay/sdk/psw/setpwd/c$3;

    iput-object p2, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelayed()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->b:Lcom/netease/epay/sdk/psw/setpwd/c$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->b:Lcom/netease/epay/sdk/psw/setpwd/c$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->b:Lcom/netease/epay/sdk/psw/setpwd/c$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->a(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/psw/setpwd/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/setpwd/b;->a(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->b:Lcom/netease/epay/sdk/psw/setpwd/c$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;->b(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 95
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->b:Lcom/netease/epay/sdk/psw/setpwd/c$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/c$3$1;->b:Lcom/netease/epay/sdk/psw/setpwd/c$3;

    iget-object v1, v1, Lcom/netease/epay/sdk/psw/setpwd/c$3;->a:Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->a(Landroid/view/View;)V

    goto :goto_0
.end method
