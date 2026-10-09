.class public Lcom/tencent/mna/c/a/a;
.super Ljava/lang/Object;
.source "CdnAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/f;


# instance fields
.field private a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

.field private b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

.field private c:Lcom/tencent/mna/b/a/c/a;

.field private d:Lcom/tencent/mna/b/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    .line 17
    iput-object v0, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    .line 18
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    .line 111
    new-instance v0, Lcom/tencent/mna/c/a/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/mna/c/a/a$1;-><init>(Lcom/tencent/mna/c/a/a;)V

    iput-object v0, p0, Lcom/tencent/mna/c/a/a;->d:Lcom/tencent/mna/b/a/h;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iput-object p1, v0, Lcom/tencent/mna/b/a/c/a;->a:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    invoke-static {v1}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->b:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    invoke-static {v1}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->c:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    invoke-static {v1}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->d:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iput v3, v0, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 156
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v2, v2, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->g:Ljava/lang/String;

    .line 157
    return v3
.end method

.method static synthetic a(Lcom/tencent/mna/c/a/a;)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iput-object p1, v0, Lcom/tencent/mna/b/a/c/a;->a:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iput p2, v0, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 163
    return p2
.end method

.method private c(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iput-object p1, v0, Lcom/tencent/mna/b/a/c/a;->a:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    invoke-static {v1}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->b:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->exportIp:I

    invoke-static {v1}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->d:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    iput p2, v0, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 171
    return p2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->h()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 11

    .prologue
    .line 22
    const-string v0, "101.226.141.225"

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
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

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 27
    sget-object v4, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 28
    const/16 v1, 0x1f9a

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/a;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    .line 29
    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    if-nez v1, :cond_0

    .line 30
    const v1, 0xc738

    invoke-direct {p0, v0, v1}, Lcom/tencent/mna/c/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]Cdn\u8c03\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    invoke-virtual {v2}, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->masterErrno:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/mna/c/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v5, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negIp:I

    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->a:Lcom/tencent/mna/base/jni/entity/CdnMasterRet;

    iget v6, v1, Lcom/tencent/mna/base/jni/entity/CdnMasterRet;->negPort:I

    move-object v7, p1

    move v8, p2

    move-object v9, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/mna/base/jni/a;->a(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    .line 39
    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    if-nez v1, :cond_2

    .line 40
    const v1, 0xf230

    invoke-direct {p0, v0, v1}, Lcom/tencent/mna/c/a/a;->c(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 42
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]Cdn\u534f\u5546:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    invoke-virtual {v2}, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->negErrno:I

    if-eqz v1, :cond_3

    .line 44
    iget-object v1, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->negErrno:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/mna/c/a/a;->c(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 47
    :cond_3
    invoke-direct {p0, v0}, Lcom/tencent/mna/c/a/a;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/tencent/mna/b/a/e;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 62
    new-instance v0, Lcom/tencent/mna/b/a/e;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/e;-><init>()V

    .line 63
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->a:J

    .line 64
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->b:J

    .line 66
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->c:J

    .line 67
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->d:J

    .line 69
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->e:J

    .line 70
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->f:J

    .line 71
    invoke-static {}, Lcom/tencent/mna/base/jni/a;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->g:J

    .line 72
    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->a:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->e:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->f:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :cond_1
    return-object v0
.end method

.method public c()Lcom/tencent/mna/b/a/h;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->d:Lcom/tencent/mna/b/a/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyIp:I

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->b:Lcom/tencent/mna/base/jni/entity/CdnNegRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/CdnNegRet;->proxyPort:I

    goto :goto_0
.end method

.method public f()Lcom/tencent/mna/b/a/c/a;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/mna/c/a/a;->c:Lcom/tencent/mna/b/a/c/a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "CdnAccelerator"

    return-object v0
.end method
