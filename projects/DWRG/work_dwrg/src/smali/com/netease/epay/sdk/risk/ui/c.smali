.class public Lcom/netease/epay/sdk/risk/ui/c;
.super Lcom/netease/epay/sdk/risk/ui/b;
.source "RiskGeneralFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;


# instance fields
.field a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Lcom/netease/mkey/loginsdk/LoginCallback;

.field private d:Landroid/widget/CheckBox;

.field private e:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/netease/epay/sdk/risk/ui/b;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->f:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->g:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->h:Z

    .line 145
    new-instance v0, Lcom/netease/epay/sdk/risk/ui/c$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/risk/ui/c$2;-><init>(Lcom/netease/epay/sdk/risk/ui/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    .line 176
    new-instance v0, Lcom/netease/epay/sdk/risk/ui/c$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/risk/ui/c$3;-><init>(Lcom/netease/epay/sdk/risk/ui/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->b:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/netease/epay/sdk/risk/ui/c$4;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/risk/ui/c$4;-><init>(Lcom/netease/epay/sdk/risk/ui/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->c:Lcom/netease/mkey/loginsdk/LoginCallback;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/risk/ui/c;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static a(Z)Lcom/netease/epay/sdk/risk/ui/c;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/netease/epay/sdk/risk/ui/c;->a(ZZ)Lcom/netease/epay/sdk/risk/ui/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZZ)Lcom/netease/epay/sdk/risk/ui/c;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/netease/epay/sdk/risk/ui/c;

    invoke-direct {v0}, Lcom/netease/epay/sdk/risk/ui/c;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v2, "getMKeyFromGeneralApp"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const-string v2, "risk_isAuthVerify"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/ui/c;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 157
    const-string v2, "generalToken"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "challengeInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "isEnterAssistPwd"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/risk/ui/c;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->e:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->e:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/c;->dismissAllowingStateLoss()V

    .line 172
    invoke-static {v1, v1}, Lcom/netease/epay/sdk/risk/ui/c;->a(ZZ)Lcom/netease/epay/sdk/risk/ui/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/c;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "epaysdk_risk"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/risk/ui/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/risk/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const-string v1, "getMKeyFromGeneralApp"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/epay/sdk/risk/ui/c;->f:Z

    .line 91
    const-string v1, "risk_isAuthVerify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->h:Z

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->f:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->getInstance()Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->getMkeyCalledlistener()Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {}, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->getInstance()Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/util/mkey/OnlyForMkey;->getMkeyCalledlistener()Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/epay/sdk/risk/util/mkey/GeneralMkeyEpayCalledListener;->called()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->g:Ljava/lang/String;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    sget v0, Lcom/netease/epay/sdk/risk/R$style;->epaysdk_BlackDialog:I

    invoke-virtual {p0, v3, v0}, Lcom/netease/epay/sdk/risk/ui/c;->setStyle(II)V

    .line 101
    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/risk/ui/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x389

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget v0, Lcom/netease/epay/sdk/risk/R$layout;->epaysdk_frag_risk_general:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 108
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->cb_set_general:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->d:Landroid/widget/CheckBox;

    .line 109
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    if-ne v0, v6, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 114
    :cond_0
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->ll_check_general_key:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 115
    sget v1, Lcom/netease/epay/sdk/risk/R$id;->et_general_pwd:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iput-object v1, p0, Lcom/netease/epay/sdk/risk/ui/c;->e:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .line 116
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/c;->e:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v4, p0, Lcom/netease/epay/sdk/risk/ui/c;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v1, v4}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V

    .line 117
    const-string v1, "com.netease.mkey"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/epay/sdk/base/util/AppUtils;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.netease.mkey"

    .line 118
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/netease/epay/sdk/risk/ui/c;->h:Z

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->tv_check_general_key:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/c;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    move-object v1, v3

    .line 131
    :goto_1
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->ftb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 132
    new-instance v2, Lcom/netease/epay/sdk/risk/ui/c$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/risk/ui/c$1;-><init>(Lcom/netease/epay/sdk/risk/ui/c;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v0, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0

    .line 122
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/UiUtil;->isLandScape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c;->e:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    goto :goto_0

    .line 128
    :cond_3
    sget v0, Lcom/netease/epay/sdk/risk/R$layout;->epaysdk_actv_progress:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 129
    iget-object v4, p0, Lcom/netease/epay/sdk/risk/ui/c;->g:Ljava/lang/String;

    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    if-ne v0, v6, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v4, v0}, Lcom/netease/epay/sdk/risk/ui/c;->a(Ljava/lang/String;Z)V

    move-object v1, v3

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method
