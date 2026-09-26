.class public Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "OnlyMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;
    }
.end annotation


# static fields
.field public static final BTN_TEXT:Ljava/lang/String; = "BTN_TEXT"

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final MSG:Ljava/lang/String; = "MSG"

.field private static callback:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;


# instance fields
.field private btnText:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;
    .locals 1
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;
    .locals 3
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "btnText"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    .prologue
    .line 37
    sput-object p3, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    .line 38
    new-instance v0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "MSG"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "BTN_TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->dismissAllowingStateLoss()V

    .line 67
    sget-object v0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->code:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;->callback(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->callback:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    .line 71
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_onlymsg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 52
    sget v0, Lcom/netease/epay/sdk/base/R$id;->btn_onlymsg_confirm_c:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    const-string v3, "code"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->code:Ljava/lang/String;

    .line 56
    const-string v3, "MSG"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->msg:Ljava/lang/String;

    .line 57
    const-string v3, "BTN_TEXT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v1, Lcom/netease/epay/sdk/base/R$string;->epaysdk_known:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->btnText:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->btnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_onlymsg_msg:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object v2
.end method
