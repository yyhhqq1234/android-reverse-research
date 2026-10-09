.class public interface abstract Lcom/tencent/tp/ITssNativeMethod;
.super Ljava/lang/Object;


# virtual methods
.method public abstract forceExit()V
.end method

.method public abstract hasMatchRate(I)I
.end method

.method public abstract isRookitRunning()I
.end method

.method public abstract isToastEnabled()I
.end method

.method public abstract loadConfig(Ljava/lang/Object;)V
.end method

.method public abstract loadMalwareScanInfo(Ljava/lang/Object;)V
.end method

.method public abstract loadMessageBoxInfo(Ljava/lang/Object;)V
.end method

.method public abstract loadRootkitTipStr(Ljava/lang/Object;)V
.end method

.method public abstract onRuntimeInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract sendStringToSvr(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract setcancelupdaterootkit()V
.end method

.method public abstract setrootkittipstate(I)V
.end method
