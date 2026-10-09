.class public Lcom/tencent/mna/base/jni/entity/CdnMasterRet;
.super Ljava/lang/Object;
.source "CdnMasterRet.java"


# instance fields
.field public exportIp:I

.field public exportPort:I

.field public masterErrno:I

.field public negIp:I

.field public negPort:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    .line 16
    iput p2, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    .line 17
    iput p3, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negPort:I

    .line 18
    iput p4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    .line 19
    iput p5, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportPort:I

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    const-string v1, "errno:%d, negip:%s, negport:%d, exportIp:%s, exportPort:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    .line 26
    invoke-static {v4}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negPort:I

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    .line 28
    invoke-static {v4}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportPort:I

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 24
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
