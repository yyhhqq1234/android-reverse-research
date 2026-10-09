.class Lcom/tencent/mna/base/jni/CdnJni;
.super Ljava/lang/Object;
.source "CdnJni.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native endCdnSpeed()I
.end method

.method public static native getCdnConnectPtr()J
.end method

.method public static native getCdnRecvFromPtr()J
.end method

.method public static native getCdnRecvMsgPtr()J
.end method

.method public static native getCdnRecvPtr()J
.end method

.method public static native getCdnSendMsgPtr()J
.end method

.method public static native getCdnSendPtr()J
.end method

.method public static native getCdnSendToPtr()J
.end method

.method public static native getExportDelay(III)I
.end method

.method public static native getForwardDelay(IIIII)I
.end method

.method public static native getMatchForwardDelay(IIIIILjava/lang/String;)I
.end method

.method public static native getV6ExportDelay(III)I
.end method

.method public static native reqMaster(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;
.end method

.method public static native reqNeg(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CdnNegRet;
.end method
