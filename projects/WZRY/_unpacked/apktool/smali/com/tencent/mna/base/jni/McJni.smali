.class Lcom/tencent/mna/base/jni/McJni;
.super Ljava/lang/Object;
.source "McJni.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native endMcSpeed()I
.end method

.method public static native getExportDelay(III)I
.end method

.method public static native getForwardDelay(IIIII)I
.end method

.method public static native getMatchForwardDelay(IIIIILjava/lang/String;)I
.end method

.method public static native getMcConnectPtr()J
.end method

.method public static native getMcRecvFromPtr()J
.end method

.method public static native getMcRecvMsgPtr()J
.end method

.method public static native getMcRecvPtr()J
.end method

.method public static native getMcSendMsgPtr()J
.end method

.method public static native getMcSendPtr()J
.end method

.method public static native getMcSendToPtr()J
.end method

.method public static native getV6ExportDelay(III)I
.end method

.method public static native prepare(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIIIZ)I
.end method

.method public static native prepareExport(Ljava/lang/String;IZ)I
.end method

.method public static native setIsShouldMobile(Z)V
.end method
