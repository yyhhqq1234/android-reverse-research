.class public Lcom/netease/epay/sdk/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/network/IParseCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .locals 7
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "isHome"    # Z
    .param p4, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "obj"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Z",
            "Lcom/netease/epay/sdk/base/network/NewBaseResponse",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "response":Lcom/netease/epay/sdk/base/network/NewBaseResponse;, "Lcom/netease/epay/sdk/base/network/NewBaseResponse<TT;>;"
    .local p6, "callback":Lcom/netease/epay/sdk/base/network/INetCallback;, "Lcom/netease/epay/sdk/base/network/INetCallback<TT;>;"
    if-nez p3, :cond_0

    .line 36
    :try_start_0
    new-instance v3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SERVER_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v3, v0}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/netease/epay/sdk/ResponseParser;->parseFailure(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 48
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p3}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    invoke-interface {p6, p1, v0}, Lcom/netease/epay/sdk/base/network/INetCallback;->success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 44
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/netease/epay/sdk/ResponseParser;->parseFailure(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public parseFailure(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .locals 8
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "isHome"    # Z
    .param p3, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;
    .param p4, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "obj"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "callback"    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    const-string v0, "060070"

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-interface {p6, p3}, Lcom/netease/epay/sdk/base/network/INetCallback;->parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    if-nez p1, :cond_2

    .line 62
    const/4 v0, 0x0

    invoke-interface {p6, v0, p3}, Lcom/netease/epay/sdk/base/network/INetCallback;->onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    goto :goto_0

    .line 66
    :cond_2
    if-eqz p2, :cond_3

    .line 67
    iget-object v0, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    sget-object v2, Lcom/netease/epay/sdk/Constants;->EXIT_CALLBACK:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "050002"

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "050003"

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    :cond_4
    invoke-static {p5, p3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getRiskJson(Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Lorg/json/JSONObject;

    move-result-object v6

    .line 72
    const-string v7, "risk"

    new-instance v0, Lcom/netease/epay/sdk/ResponseParser$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/ResponseParser$1;-><init>(Lcom/netease/epay/sdk/ResponseParser;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    invoke-static {v7, p1, v6, v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0

    .line 82
    :cond_5
    const-string v0, "060006"

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "060007"

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    :cond_6
    new-instance v0, Lcom/netease/epay/sdk/ResponseParser$2;

    invoke-direct {v0, p0, p3, p1, p6}, Lcom/netease/epay/sdk/ResponseParser$2;-><init>(Lcom/netease/epay/sdk/ResponseParser;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 133
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    .line 134
    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 135
    :cond_7
    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode;->serviceErrorCode:Ljava/util/List;

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    new-instance v0, Lcom/netease/epay/sdk/ResponseParser$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/netease/epay/sdk/ResponseParser$3;-><init>(Lcom/netease/epay/sdk/ResponseParser;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 169
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 172
    :cond_8
    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode;->alertErrorList:Ljava/util/List;

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    sget-object v2, Lcom/netease/epay/sdk/Constants;->EXIT_CALLBACK:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto/16 :goto_0

    .line 175
    :cond_9
    invoke-interface {p6, p1, p3}, Lcom/netease/epay/sdk/base/network/INetCallback;->onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    goto/16 :goto_0
.end method
