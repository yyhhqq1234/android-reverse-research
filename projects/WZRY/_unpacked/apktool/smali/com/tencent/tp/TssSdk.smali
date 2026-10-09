.class public Lcom/tencent/tp/TssSdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/TssSdk$ISendDataToSvr;
    }
.end annotation


# static fields
.field public static final TSS_SDK_VERSION:Ljava/lang/String; = "3.3.17(2018/03/07)-jar-version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "tersafe"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/tencent/tp/TssIOCtlResult;

    invoke-direct {v1}, Lcom/tencent/tp/TssIOCtlResult;-><init>()V

    iput-object p0, v1, Lcom/tencent/tp/TssIOCtlResult;->cmd:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tp/TssSdk;->getsdkantidata(Lcom/tencent/tp/TssIOCtlResult;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/tencent/tp/TssIOCtlResult;->response:Ljava/lang/String;

    goto :goto_0
.end method

.method public static native forceExit()V
.end method

.method public static native getsdkantidata(Lcom/tencent/tp/TssIOCtlResult;)I
.end method

.method public static native hasMatchRate(I)I
.end method

.method public static native init(Lcom/tencent/tp/TssSdkInitInfo;)V
.end method

.method public static native isRookitRunning()I
.end method

.method public static native isToastEnabled()I
.end method

.method public static native loadConfig(Ljava/lang/Object;)V
.end method

.method public static native loadMalwareScanInfo(Ljava/lang/Object;)V
.end method

.method public static native loadMessageBoxInfo(Ljava/lang/Object;)V
.end method

.method public static native loadRootkitTipStr(Ljava/lang/Object;)V
.end method

.method public static native onruntimeinfo([BI)V
.end method

.method public static native senddatatosdk([BI)V
.end method

.method public static native senddatatosvr([BI)V
.end method

.method public static native setcancelupdaterootkit()V
.end method

.method public static native setgamestatus(Lcom/tencent/tp/TssSdkGameStatusInfo;)V
.end method

.method public static native setrootkittipstate(I)V
.end method

.method public static native setsenddatatosvrcb(Lcom/tencent/tp/TssSdk$ISendDataToSvr;)V
.end method

.method public static native setuserinfo(Lcom/tencent/tp/TssSdkUserInfo;)V
.end method

.method public static native setuserinfoex(Lcom/tencent/tp/TssSdkUserInfoEx;)V
.end method
