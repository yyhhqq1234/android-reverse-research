.class public Lcom/tencent/mna/c/a/b;
.super Ljava/lang/Object;
.source "CdnDgnSpeedTester.java"

# interfaces
.implements Lcom/tencent/mna/b/d/a;


# instance fields
.field private a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/c/a/b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 17
    const-string v0, "101.226.141.225"

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "masterIp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 19
    sget-object v4, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9a

    const-string v2, "0.0.0.0"

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/a;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    .line 22
    iget-object v0, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    if-nez v0, :cond_1

    .line 23
    const/4 v3, -0x1

    .line 29
    :cond_0
    :goto_0
    return v3

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdn diagnose ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    invoke-virtual {v1}, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v3, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    goto :goto_0
.end method

.method public a(I)I
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/c/a/b;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, -0x1

    .line 39
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/mna/c/a/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mna/c/a/b;->b:I

    const/16 v1, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/tencent/mna/base/jni/a;->b(III)I

    move-result v0

    goto :goto_0
.end method
