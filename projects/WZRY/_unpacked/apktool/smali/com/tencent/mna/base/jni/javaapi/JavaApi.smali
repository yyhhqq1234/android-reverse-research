.class public Lcom/tencent/mna/base/jni/javaapi/JavaApi;
.super Ljava/lang/Object;
.source "JavaApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPushPkg(II)V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/d/b;->a(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addRecvPkg(IIIJ)V
    .locals 1

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/d/b;->a(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addSendPkg(IIJ)V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/base/d/b;->a(IIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static bindFdToMobile(I)I
    .locals 3

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b/a/b;->m()Lcom/tencent/mna/b/b/b;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2j call bindFdToMobile, fd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p0}, Lcom/tencent/mna/b/b/b;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 38
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 38
    :cond_0
    const/16 v0, -0x66

    goto :goto_0
.end method

.method public static bindFdToNetid(II)I
    .locals 3

    .prologue
    .line 17
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b/a/b;->m()Lcom/tencent/mna/b/b/b;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2j call bindFdToNetid, fd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", netId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mna/b/b/b;->a(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 25
    :goto_0
    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 25
    :cond_0
    const/16 v0, -0x65

    goto :goto_0
.end method

.method public static unbindFd(I)I
    .locals 3

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b/a/b;->m()Lcom/tencent/mna/b/b/b;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2j call unbindFd, fd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p0}, Lcom/tencent/mna/b/b/b;->b(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 51
    :cond_0
    const/16 v0, -0x67

    goto :goto_0
.end method
