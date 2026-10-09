.class Lcom/tencent/pandora/MidasWrap$1;
.super Ljava/lang/Object;
.source "MidasWrap.java"

# interfaces
.implements Lcom/tencent/midas/api/IAPMidasPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/MidasWrap;->launchPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$jsonCancel:Ljava/lang/String;

.field private final synthetic val$jsonExpire:Ljava/lang/String;

.field private final synthetic val$jsonFail:Ljava/lang/String;

.field private final synthetic val$jsonSuccess:Ljava/lang/String;

.field private final synthetic val$unityMethod:Ljava/lang/String;

.field private final synthetic val$unityObject:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityObject:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonExpire:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonSuccess:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonCancel:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonFail:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V
    .locals 4
    .param p1, "paramAPMidasResponse"    # Lcom/tencent/midas/api/APMidasResponse;

    .prologue
    .line 80
    :try_start_0
    iget v1, p1, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    packed-switch v1, :pswitch_data_0

    .line 93
    :pswitch_0
    const-string v1, "Unity MidasWrap"

    const-string v2, "MidasPayCallBack default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityObject:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonFail:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 83
    :pswitch_1
    const-string v1, "Unity MidasWrap"

    const-string v2, "MidasPayCallBack PAYRESULT_SUCC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityObject:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonSuccess:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unity MidasWrap"

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    const-string v1, "Unity MidasWrap"

    const-string v2, "MidasPayCallBack PAYRESULT_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityObject:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonCancel:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public MidasPayNeedLogin()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "Unity MidasWrap"

    const-string v1, "MidasPayNeedLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/pandora/MidasWrap$1;->val$unityMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/pandora/MidasWrap$1;->val$jsonExpire:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
