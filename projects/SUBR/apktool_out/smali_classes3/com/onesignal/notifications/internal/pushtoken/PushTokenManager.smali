.class public final Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;
.super Ljava/lang/Object;
.source "PushTokenManager.kt"

# interfaces
.implements Lcom/onesignal/notifications/internal/pushtoken/IPushTokenManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000eH\u0002J\u0011\u0010\u0016\u001a\u00020\u0017H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;",
        "Lcom/onesignal/notifications/internal/pushtoken/IPushTokenManager;",
        "_pushRegistrator",
        "Lcom/onesignal/notifications/internal/registration/IPushRegistrator;",
        "_deviceService",
        "Lcom/onesignal/core/internal/device/IDeviceService;",
        "(Lcom/onesignal/notifications/internal/registration/IPushRegistrator;Lcom/onesignal/core/internal/device/IDeviceService;)V",
        "pushToken",
        "",
        "getPushToken",
        "()Ljava/lang/String;",
        "setPushToken",
        "(Ljava/lang/String;)V",
        "pushTokenStatus",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        "getPushTokenStatus",
        "()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        "setPushTokenStatus",
        "(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V",
        "pushStatusRuntimeError",
        "",
        "status",
        "retrievePushToken",
        "Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "com.onesignal.notifications"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _deviceService:Lcom/onesignal/core/internal/device/IDeviceService;

.field private final _pushRegistrator:Lcom/onesignal/notifications/internal/registration/IPushRegistrator;

.field private pushToken:Ljava/lang/String;

.field private pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;


# direct methods
.method public constructor <init>(Lcom/onesignal/notifications/internal/registration/IPushRegistrator;Lcom/onesignal/core/internal/device/IDeviceService;)V
    .locals 1

    const-string v0, "_pushRegistrator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_deviceService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->_pushRegistrator:Lcom/onesignal/notifications/internal/registration/IPushRegistrator;

    .line 13
    iput-object p2, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->_deviceService:Lcom/onesignal/core/internal/device/IDeviceService;

    .line 15
    sget-object p1, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    iput-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    return-void
.end method

.method private final pushStatusRuntimeError(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)Z
    .locals 1

    .line 60
    invoke-virtual {p1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result p1

    const/4 v0, -0x6

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getPushToken()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getPushTokenStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    return-object v0
.end method

.method public retrievePushToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;

    iget v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;-><init>(Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->_deviceService:Lcom/onesignal/core/internal/device/IDeviceService;

    invoke-interface {p1}, Lcom/onesignal/core/internal/device/IDeviceService;->getJetpackLibraryStatus()Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;

    move-result-object p1

    sget-object v2, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/onesignal/core/internal/device/IDeviceService$JetpackLibraryStatus;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    .line 31
    iget-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->_pushRegistrator:Lcom/onesignal/notifications/internal/registration/IPushRegistrator;

    iput-object p0, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager$retrievePushToken$1;->label:I

    invoke-interface {p1, v0}, Lcom/onesignal/notifications/internal/registration/IPushRegistrator;->registerForPush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 18
    :goto_1
    check-cast p1, Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;

    .line 33
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;->getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result v1

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->SUBSCRIBED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 34
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;->getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;->getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result v1

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->SUBSCRIBED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 40
    iget-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushToken:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 42
    iget-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    if-eq v1, v2, :cond_5

    .line 43
    iget-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-direct {v0, v1}, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushStatusRuntimeError(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    :cond_5
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;->getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    goto :goto_2

    .line 48
    :cond_6
    iget-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-direct {v0, v1}, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushStatusRuntimeError(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 49
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;->getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 52
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushToken:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string p1, "The included Jetpack/AndroidX Library is too old or incomplete."

    .line 25
    invoke-static {p1, v4, v2, v4}, Lcom/onesignal/debug/internal/logging/Logging;->fatal$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 28
    sget-object p1, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->OUTDATED_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    iput-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    goto :goto_3

    :cond_9
    const-string p1, "Could not find the Jetpack/AndroidX. Please make sure it has been correctly added to your project."

    .line 21
    invoke-static {p1, v4, v2, v4}, Lcom/onesignal/debug/internal/logging/Logging;->fatal$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 22
    sget-object p1, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->MISSING_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    iput-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    :goto_3
    move-object v0, p0

    .line 56
    :goto_4
    new-instance p1, Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;

    iget-object v1, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-direct {p1, v1, v0}, Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;-><init>(Ljava/lang/String;Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V

    return-object p1
.end method

.method public final setPushToken(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushToken:Ljava/lang/String;

    return-void
.end method

.method public final setPushTokenStatus(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;->pushTokenStatus:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    return-void
.end method
