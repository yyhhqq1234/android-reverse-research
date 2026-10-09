.class public Lcom/tencent/tp/TssNativeMethodImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/ITssNativeMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceExit()V
    .locals 0

    invoke-static {}, Lcom/tencent/tp/TssSdk;->forceExit()V

    return-void
.end method

.method public hasMatchRate(I)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/tp/TssSdk;->hasMatchRate(I)I

    move-result v0

    return v0
.end method

.method public isRookitRunning()I
    .locals 1

    invoke-static {}, Lcom/tencent/tp/TssSdk;->isRookitRunning()I

    move-result v0

    return v0
.end method

.method public isToastEnabled()I
    .locals 1

    invoke-static {}, Lcom/tencent/tp/TssSdk;->isToastEnabled()I

    move-result v0

    return v0
.end method

.method public loadConfig(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tp/TssSdk;->loadConfig(Ljava/lang/Object;)V

    return-void
.end method

.method public loadMalwareScanInfo(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tp/TssSdk;->loadMalwareScanInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public loadMessageBoxInfo(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tp/TssSdk;->loadMessageBoxInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public loadRootkitTipStr(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tp/TssSdk;->loadRootkitTipStr(Ljava/lang/Object;)V

    return-void
.end method

.method public onRuntimeInfo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/tencent/tp/TssSdk;->onruntimeinfo([BI)V

    :cond_0
    return-void
.end method

.method public sendStringToSvr(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/tencent/tp/TssSdk;->senddatatosvr([BI)V

    :cond_0
    return-void
.end method

.method public setcancelupdaterootkit()V
    .locals 0

    invoke-static {}, Lcom/tencent/tp/TssSdk;->setcancelupdaterootkit()V

    return-void
.end method

.method public setrootkittipstate(I)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tp/TssSdk;->setrootkittipstate(I)V

    return-void
.end method
