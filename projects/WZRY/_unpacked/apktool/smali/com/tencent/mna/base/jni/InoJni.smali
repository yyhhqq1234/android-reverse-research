.class Lcom/tencent/mna/base/jni/InoJni;
.super Ljava/lang/Object;
.source "InoJni.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native endInoSpeed()I
.end method

.method public static native getExportDelay(III)I
.end method

.method public static native getForwardDelay(IIIII)I
.end method

.method public static native getInoConnectPtr()J
.end method

.method public static native getInoRecvFromPtr()J
.end method

.method public static native getInoRecvMsgPtr()J
.end method

.method public static native getInoRecvPtr()J
.end method

.method public static native getInoSendMsgPtr()J
.end method

.method public static native getInoSendPtr()J
.end method

.method public static native getInoSendToPtr()J
.end method

.method public static native getMatchForwardDelay(IIIIILjava/lang/String;)I
.end method

.method public static native getV6ExportDelay(III)I
.end method

.method public static native prepare(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public static native prepareExport(Ljava/lang/String;IZ)I
.end method
