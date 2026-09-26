.class public Lcom/netease/epay/sdk/base/event/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# instance fields
.field public activity:Landroid/support/v4/app/FragmentActivity;

.field public code:Ljava/lang/String;

.field public isSuccess:Z

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 39
    iget-object v0, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V
    .locals 2
    .param p1, "code"    # Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "code"    # Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    .line 26
    const-string v0, "000000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    .line 27
    iput-object p3, p0, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 28
    return-void
.end method
