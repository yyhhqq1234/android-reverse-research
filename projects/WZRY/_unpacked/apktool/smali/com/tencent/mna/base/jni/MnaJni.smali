.class Lcom/tencent/mna/base/jni/MnaJni;
.super Ljava/lang/Object;
.source "MnaJni.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clear()V
.end method

.method public static native closeFd(I)V
.end method

.method public static native detectLocalIpStack()I
.end method

.method public static native dns(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getDirectDelay(IIIILjava/lang/String;I)I
.end method

.method public static native getFd(I)I
.end method

.method public static native getInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getMatchDirectDelay(IIIILjava/lang/String;I)I
.end method

.method public static native getSoVersion()I
.end method

.method public static native getTcpFd(I)I
.end method

.method public static native getTcpV6Fd(I)I
.end method

.method public static native getV6DirectDelay(I[BIILjava/lang/String;I)I
.end method

.method public static native getV6Fd(I)I
.end method

.method public static native getV6MatchDirectDelay(I[BIILjava/lang/String;I)I
.end method

.method public static native hookClose(Ljava/lang/String;J)I
.end method

.method public static native hookUdpConnectSendMsg(Ljava/lang/String;JJJ)I
.end method

.method public static native hookUdpConnectSendTo(Ljava/lang/String;JJJ)I
.end method

.method public static native hookUdpSend(Ljava/lang/String;JJJ)I
.end method

.method public static native hookUdpSendMsg(Ljava/lang/String;JJ)I
.end method

.method public static native hookUdpSendTo(Ljava/lang/String;JJ)I
.end method

.method public static native init(IZLjava/lang/String;)V
.end method

.method public static native kartinNotify(JLjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V
.end method

.method public static native nHook(Z)V
.end method

.method public static native notify(JIILjava/lang/String;)V
.end method

.method public static native requestCloud(ZILjava/lang/String;ILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;
.end method

.method public static native sendToUnity(Ljava/lang/String;)I
.end method

.method public static native setFdTos(II)I
.end method

.method public static native setHookIps([Ljava/lang/String;)V
.end method

.method public static native setHookPort(I)V
.end method

.method public static native setIsLoadMap(Z)V
.end method

.method public static native setIsShouldSpeed(Z)V
.end method

.method public static native setLoadMapSwitch(I)V
.end method

.method public static native setMobileVip(Ljava/lang/String;)V
.end method

.method public static native setPkg(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native startDoubleNeg(ILjava/lang/String;ILjava/lang/String;)Z
.end method

.method public static native startUdpRecvLoop(II)V
.end method

.method public static native startUdpSendLoop(ILjava/lang/String;IIIII)V
.end method

.method public static native startV6DoubleNeg(I[BILjava/lang/String;)Z
.end method

.method public static native startV6UdpSendLoop(I[BIIIII)V
.end method

.method public static native switchNetworkBindingIdle()V
.end method

.method public static native switchNetworkBindingToMobile()V
.end method

.method public static native switchNetworkBindingToWifi()V
.end method

.method public static native turnDoubleSend(IIII)V
.end method

.method public static native turnFilter(ZI)V
.end method

.method public static native turnHookedFdTos(I)V
.end method

.method public static native unhookClose(Ljava/lang/String;)I
.end method

.method public static native unhookUdpConnectSendMsg(Ljava/lang/String;)I
.end method

.method public static native unhookUdpConnectSendTo(Ljava/lang/String;)I
.end method

.method public static native unhookUdpSend(Ljava/lang/String;)I
.end method

.method public static native unhookUdpSendMsg(Ljava/lang/String;)I
.end method

.method public static native unhookUdpSendTo(Ljava/lang/String;)I
.end method

.method static native uploadPingValue(IIIILjava/lang/String;I)I
.end method
