.class public Lcom/tencent/tp/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/ITssJavaMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->initialize2()V

    return-void
.end method

.method public invokeForceUpdateRootkitAppRequest()V
    .locals 0

    invoke-static {}, Lcom/tencent/tp/y;->invokeForceUpdateRootkitAppRequest()V

    return-void
.end method

.method public invokeRootkitAppRequest()V
    .locals 0

    invoke-static {}, Lcom/tencent/tp/y;->invokeRootkitAppRequest()V

    return-void
.end method

.method public invokeRootkitIsRunningTip()V
    .locals 0

    invoke-static {}, Lcom/tencent/tp/y;->invokeRootkitIsRunningTip()V

    return-void
.end method

.method public scan()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0, v1, v1}, Lcom/tencent/tp/TssSdkSafeScan;->scan(ZZZ)V

    return-void
.end method

.method public showMsgBoxEx()V
    .locals 0

    return-void
.end method
