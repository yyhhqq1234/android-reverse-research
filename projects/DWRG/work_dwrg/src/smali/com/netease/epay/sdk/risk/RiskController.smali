.class public Lcom/netease/epay/sdk/risk/RiskController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "RiskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/risk/RiskController$a;
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field private b:Lcom/netease/epay/sdk/risk/ui/RiskActivity;

.field private c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field private d:Lcom/netease/epay/sdk/risk/RiskController$a;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 1
    .param p1, "params"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 53
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .line 55
    const-string v0, "interceptedParams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->a:Lorg/json/JSONObject;

    .line 57
    :cond_0
    return-void
.end method

.method private a(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V
    .locals 2

    .prologue
    .line 123
    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->clearAllFragments(Landroid/support/v4/app/FragmentActivity;)V

    .line 124
    const-class v0, Lcom/netease/epay/sdk/risk/ui/RiskActivity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 125
    new-instance v0, Lcom/netease/epay/sdk/risk/RiskController$4;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/risk/RiskController$4;-><init>(Lcom/netease/epay/sdk/risk/RiskController;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->d:Lcom/netease/epay/sdk/risk/RiskController$a;

    .line 136
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/risk/ui/RiskActivity;)V
    .locals 1

    .prologue
    .line 118
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/RiskController;->b:Lcom/netease/epay/sdk/risk/ui/RiskActivity;

    .line 119
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->d:Lcom/netease/epay/sdk/risk/RiskController$a;

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/risk/RiskController$a;->a(Lcom/netease/epay/sdk/risk/ui/RiskActivity;)V

    .line 120
    return-void
.end method

.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BaseEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->b:Lcom/netease/epay/sdk/risk/ui/RiskActivity;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->b:Lcom/netease/epay/sdk/risk/ui/RiskActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/RiskActivity;->finish()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_1

    .line 143
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/risk/RiskController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 158
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    const-string v1, "000000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v2, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v3, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    goto :goto_1

    .line 154
    :cond_3
    const-string v0, "050002"

    goto :goto_1
.end method

.method public start(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 62
    const-string v0, "050002"

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    new-instance v2, Lcom/netease/epay/sdk/risk/RiskController$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/risk/RiskController$1;-><init>(Lcom/netease/epay/sdk/risk/RiskController;)V

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->clearAllFragments(Landroid/support/v4/app/FragmentActivity;)V

    .line 108
    const-class v0, Lcom/netease/epay/sdk/risk/ui/RiskActivity;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 109
    new-instance v0, Lcom/netease/epay/sdk/risk/RiskController$3;

    invoke-direct {v0, p0, v1}, Lcom/netease/epay/sdk/risk/RiskController$3;-><init>(Lcom/netease/epay/sdk/risk/RiskController;Lcom/netease/epay/sdk/base/ui/SdkFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->d:Lcom/netease/epay/sdk/risk/RiskController$a;

    .line 115
    .end local p1    # "context":Landroid/content/Context;
    :goto_1
    return-void

    .line 70
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->general:Lcom/netease/epay/sdk/base/model/General;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->general:Lcom/netease/epay/sdk/base/model/General;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/General;->isAuthVerify:Z

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/ui/c;->a(Z)Lcom/netease/epay/sdk/risk/ui/c;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->smsContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    const-string v0, "sms"

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->smsContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/risk/ui/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->cardArray:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->cardArray:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 81
    invoke-static {v0}, Lcom/netease/epay/sdk/risk/ui/a;->a(Ljava/util/ArrayList;)Lcom/netease/epay/sdk/risk/ui/a;

    move-result-object v0

    move-object v1, v0

    .line 82
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->voiceContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 83
    const-string v0, "sms_mobile_vvc"

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->voiceContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/risk/ui/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->voiceQPContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 85
    const-string v0, "sms_qp_vvc"

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->voiceQPContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/risk/ui/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->pwd:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 87
    invoke-static {}, Lcom/netease/epay/sdk/risk/ui/d;->a()Lcom/netease/epay/sdk/risk/ui/d;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->faceType:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 89
    const-string v0, "auditing"

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->faceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    new-instance v2, Lcom/netease/epay/sdk/risk/RiskController$2;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/risk/RiskController$2;-><init>(Lcom/netease/epay/sdk/risk/RiskController;)V

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 97
    :cond_8
    check-cast p1, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/risk/RiskController;->a(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    goto/16 :goto_1

    .line 102
    .restart local p1    # "context":Landroid/content/Context;
    :cond_9
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v1, "050002"

    iget-object v2, p0, Lcom/netease/epay/sdk/risk/RiskController;->c:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto/16 :goto_1
.end method
