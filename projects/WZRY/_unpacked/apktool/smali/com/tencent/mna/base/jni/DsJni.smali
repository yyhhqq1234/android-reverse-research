.class Lcom/tencent/mna/base/jni/DsJni;
.super Ljava/lang/Object;
.source "DsJni.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native endDsSpeed()I
.end method

.method public static native getDsConnectPtr()J
.end method

.method public static native getDsRecvFromPtr()J
.end method

.method public static native getDsRecvMsgPtr()J
.end method

.method public static native getDsRecvPtr()J
.end method

.method public static native getDsSendMsgPtr()J
.end method

.method public static native getDsSendPtr()J
.end method

.method public static native getDsSendToPtr()J
.end method

.method public static native getExportDelay(III)I
.end method

.method public static native getForwardDelay(IIIII)I
.end method

.method public static native getMatchForwardDelay(IIIIILjava/lang/String;)I
.end method

.method public static native getV6ExportDelay(III)I
.end method

.method public static native prepare(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
.end method

.method public static native prepareExport(Ljava/lang/String;IZ)I
.end method

.method public static native setIsFilterOn(Z)V
.end method

.method public static native setIsShouldMobile(Z)V
.end method
