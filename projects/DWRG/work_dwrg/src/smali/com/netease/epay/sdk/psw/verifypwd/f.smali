.class public Lcom/netease/epay/sdk/psw/verifypwd/f;
.super Lcom/netease/epay/sdk/base/event/BaseEvent;
.source "VerifyPwdEvent.java"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 18
    return-void
.end method
