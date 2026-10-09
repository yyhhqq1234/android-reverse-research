.class Lcom/tencent/mna/c/a/a$1;
.super Ljava/lang/Object;
.source "CdnAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/c/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/mna/c/a/a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/mna/c/a/a$1;->a:Lcom/tencent/mna/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/mna/c/a/a$1;->a:Lcom/tencent/mna/c/a/a;

    invoke-static {v0}, Lcom/tencent/mna/c/a/a;->a(Lcom/tencent/mna/c/a/a;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/c/a/a$1;->a:Lcom/tencent/mna/c/a/a;

    invoke-static {v0}, Lcom/tencent/mna/c/a/a;->a(Lcom/tencent/mna/c/a/a;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, -0x1

    .line 129
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/tencent/mna/base/jni/a;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public a(IIIII)I
    .locals 1

    .prologue
    .line 114
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/mna/base/jni/a;->a(IIIII)I

    move-result v0

    return v0
.end method

.method public a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 119
    invoke-static/range {p1 .. p6}, Lcom/tencent/mna/base/jni/a;->a(IIIIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/mna/c/a/a$1;->a:Lcom/tencent/mna/c/a/a;

    invoke-static {v0}, Lcom/tencent/mna/c/a/a;->a(Lcom/tencent/mna/c/a/a;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/c/a/a$1;->a:Lcom/tencent/mna/c/a/a;

    invoke-static {v0}, Lcom/tencent/mna/c/a/a;->a(Lcom/tencent/mna/c/a/a;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/c/a/a$1;->a:Lcom/tencent/mna/c/a/a;

    invoke-static {v0}, Lcom/tencent/mna/c/a/a;->a(Lcom/tencent/mna/c/a/a;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
