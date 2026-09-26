.class public Lcom/netease/epay/sdk/psw/SetShortPwdController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "SetShortPwdController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/controller/BaseController",
        "<",
        "Lcom/netease/epay/sdk/psw/setpwd/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/support/v4/app/FragmentActivity;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/netease/epay/sdk/NetCallback;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 1
    .param p1, "params"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 110
    new-instance v0, Lcom/netease/epay/sdk/psw/SetShortPwdController$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/SetShortPwdController$2;-><init>(Lcom/netease/epay/sdk/psw/SetShortPwdController;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->h:Lcom/netease/epay/sdk/NetCallback;

    .line 55
    const-string v0, "isNeedPsw"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a:Z

    .line 56
    const-string v0, "isForced"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->b:Z

    .line 57
    const-string v0, "isFragment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->c:Z

    .line 58
    const-string v0, "isForgetPwd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->d:Z

    .line 59
    const-string v0, "qvhua_finishBtnString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->g:Ljava/lang/String;

    .line 60
    const-string v0, "key_setpd_exit_warming_infos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->f:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/SetShortPwdController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 130
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/netease/epay/sdk/controller/ControllerResult;

    invoke-direct {v0, p1, p2}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->e:Landroid/support/v4/app/FragmentActivity;

    iput-object v1, v0, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 133
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    invoke-direct {v0, p1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/SetShortPwdController;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/psw/SetShortPwdController;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->e:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/epay/sdk/psw/SetShortPwdController;)Lcom/netease/epay/sdk/NetCallback;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->h:Lcom/netease/epay/sdk/NetCallback;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/psw/setpwd/a;)V
    .locals 5

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/netease/epay/sdk/psw/setpwd/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/psw/setpwd/a;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 83
    iget-object v0, p1, Lcom/netease/epay/sdk/psw/setpwd/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "000000"

    .line 84
    :goto_0
    iget-object v1, p1, Lcom/netease/epay/sdk/psw/setpwd/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u8bbe\u7f6e\u5bc6\u7801\u6210\u529f"

    .line 85
    :goto_1
    iget-object v2, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-eqz v2, :cond_3

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v3, "psw"

    iget-object v4, p1, Lcom/netease/epay/sdk/psw/setpwd/a;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    new-instance v3, Lcom/netease/epay/sdk/controller/ControllerResult;

    invoke-direct {v3, v0, v1}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object v2, v3, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 108
    :goto_2
    return-void

    .line 83
    :cond_1
    const-string v0, "-100"

    goto :goto_0

    .line 84
    :cond_2
    const-string v1, "\u7528\u6237\u624b\u52a8\u9000\u51fa\u8be5\u4e1a\u52a1"

    goto :goto_1

    .line 92
    :cond_3
    new-instance v2, Lcom/netease/epay/sdk/base/event/BaseEvent;

    invoke-direct {v2, v0, v1}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_2

    .line 96
    :cond_4
    iget-object v0, p1, Lcom/netease/epay/sdk/psw/setpwd/a;->activity:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->e:Landroid/support/v4/app/FragmentActivity;

    .line 97
    new-instance v0, Lcom/netease/epay/sdk/base/util/DelayedTask;

    const/16 v1, 0xc8

    new-instance v2, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;-><init>(Lcom/netease/epay/sdk/psw/SetShortPwdController;Lcom/netease/epay/sdk/psw/setpwd/a;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/DelayedTask;-><init>(ILcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;)V

    .line 107
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/DelayedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public synthetic deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/netease/epay/sdk/psw/setpwd/a;

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/setpwd/a;)V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->c:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->clearAllFragments(Landroid/support/v4/app/FragmentActivity;)V

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v1, "is_forced"

    iget-boolean v2, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-class v1, Lcom/netease/epay/sdk/psw/setpwd/SetPwdFragmentActivity;

    invoke-static {p1, v1, v0}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v1, "key_setpd_exit_warming_infos"

    iget-object v2, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "qvhua_finishBtnString"

    iget-object v2, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-class v1, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;

    invoke-static {p1, v1, v0}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
