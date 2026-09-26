.class public abstract Lcom/netease/epay/sdk/psw/verifypwd/e;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "VerifyPwdBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/psw/verifypwd/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/epay/sdk/psw/verifypwd/e$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/e;->a:Lcom/netease/epay/sdk/psw/verifypwd/e$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/e;->a:Lcom/netease/epay/sdk/psw/verifypwd/e$a;

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/psw/verifypwd/e$a;->a(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public abstract b()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/e;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->ftb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 31
    new-instance v2, Lcom/netease/epay/sdk/psw/verifypwd/e$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/psw/verifypwd/e$1;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    iget v0, v0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->a:I

    .line 42
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 43
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/b;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/verifypwd/b;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/e;->a:Lcom/netease/epay/sdk/psw/verifypwd/e$a;

    .line 49
    :cond_0
    :goto_0
    return-object v1

    .line 44
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 45
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/c;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/verifypwd/c;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/e;->a:Lcom/netease/epay/sdk/psw/verifypwd/e$a;

    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 47
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/a;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/verifypwd/a;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/e;->a:Lcom/netease/epay/sdk/psw/verifypwd/e$a;

    goto :goto_0
.end method
