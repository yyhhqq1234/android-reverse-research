.class public Lcom/tencent/mna/base/jni/entity/CdnNegRet;
.super Ljava/lang/Object;
.source "CdnNegRet.java"


# instance fields
.field public negErrno:I

.field public proxyIp:I

.field public proxyPort:I

.field public token:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->negErrno:I

    .line 15
    iput p2, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    .line 16
    iput p3, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyPort:I

    .line 17
    iput p4, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->token:I

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    const-string v1, "negError:%d, proxyIp:%s, proxyPort:%d, token:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->negErrno:I

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    .line 24
    invoke-static {v4}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyPort:I

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->token:I

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 22
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
