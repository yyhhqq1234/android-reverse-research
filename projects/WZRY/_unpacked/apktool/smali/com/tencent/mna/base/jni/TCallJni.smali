.class Lcom/tencent/mna/base/jni/TCallJni;
.super Ljava/lang/Object;
.source "TCallJni.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native connectNegotiate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native createTunnel(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;
.end method

.method public static native getExportDelay(Ljava/lang/String;)I
.end method

.method public static native getExportInfo()Lcom/tencent/mna/base/jni/entity/TCallExportInfo;
.end method

.method public static native getExportIp()Ljava/lang/String;
.end method

.method public static native getForwardDelay(IIIII)I
.end method

.method public static native getMatchForwardDelay(IIIIILjava/lang/String;)I
.end method

.method public static native getTCallClosePtr()J
.end method

.method public static native getTCallConnectPtr()J
.end method

.method public static native getTCallRecvFromPtr()J
.end method

.method public static native getTCallRecvMsgPtr()J
.end method

.method public static native getTCallRecvPtr()J
.end method

.method public static native getTCallSendMsgPtr()J
.end method

.method public static native getTCallSendPtr()J
.end method

.method public static native getTCallSendToPtr()J
.end method

.method public static native tcallInit(Z)I
.end method
