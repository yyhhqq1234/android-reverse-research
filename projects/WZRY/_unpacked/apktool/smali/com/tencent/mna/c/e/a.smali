.class public Lcom/tencent/mna/c/e/a;
.super Ljava/lang/Object;
.source "TCallAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/b/a/f;


# instance fields
.field private a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

.field private b:Lcom/tencent/mna/b/a/c/a;

.field private c:Lcom/tencent/mna/b/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    .line 19
    new-instance v0, Lcom/tencent/mna/b/a/c/a;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    .line 139
    new-instance v0, Lcom/tencent/mna/c/e/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/mna/c/e/a$1;-><init>(Lcom/tencent/mna/c/e/a;)V

    iput-object v0, p0, Lcom/tencent/mna/c/e/a;->c:Lcom/tencent/mna/b/a/h;

    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    invoke-direct {p0, p1}, Lcom/tencent/mna/c/e/a;->b(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 73
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    iget v0, v0, Lcom/tencent/mna/b/a/c/a;->f:I

    return v0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 169
    if-lez p1, :cond_0

    .line 172
    :goto_0
    return p1

    :cond_0
    const v0, 0xee48

    sub-int p1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 24
    invoke-static {v5}, Lcom/tencent/mna/base/jni/f;->a(Z)I

    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    invoke-direct {p0, v1}, Lcom/tencent/mna/c/e/a;->a(I)I

    move-result v0

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    sget-object v1, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 31
    invoke-static {p1, v1}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    .line 33
    iget-object v2, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    if-eqz v2, :cond_2

    .line 34
    const-string v2, "[N]TCall\u8c03\u5ea6\u9519\u8bef\u7801:%d, masterIp:%s, proxyIp:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v4, v4, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->tunnelErrno:I

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v4, v4, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->masterIp:I

    .line 36
    invoke-static {v4}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v5, v5, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    .line 37
    invoke-static {v5}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 34
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    if-nez v2, :cond_3

    .line 41
    const v0, 0x11171

    invoke-direct {p0, v0}, Lcom/tencent/mna/c/e/a;->a(I)I

    move-result v0

    goto :goto_0

    .line 45
    :cond_3
    iget-object v2, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    iget-object v3, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v3, v3, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->masterIp:I

    invoke-static {v3}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mna/b/a/c/a;->a:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    iget-object v3, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v3, v3, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    invoke-static {v3}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mna/b/a/c/a;->c:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    iget-object v3, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v3, v3, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    invoke-static {v3}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mna/b/a/c/a;->d:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v2, v2, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->tunnelErrno:I

    if-eqz v2, :cond_4

    .line 50
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->tunnelErrno:I

    invoke-direct {p0, v0}, Lcom/tencent/mna/c/e/a;->a(I)I

    move-result v0

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {}, Lcom/tencent/mna/base/a/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {}, Lcom/tencent/mna/base/a/a;->d()I

    move-result v3

    .line 56
    invoke-static {}, Lcom/tencent/mna/base/a/a;->Q()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {p1, p1, p2, v1, v4}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    invoke-direct {p0, v5}, Lcom/tencent/mna/c/e/a;->a(I)I

    move-result v0

    goto/16 :goto_0

    .line 63
    :cond_5
    invoke-static {p1, v2, v3, v1, v4}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-direct {p0, v1}, Lcom/tencent/mna/c/e/a;->a(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method public b()Lcom/tencent/mna/b/a/e;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    new-instance v0, Lcom/tencent/mna/b/a/e;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/e;-><init>()V

    .line 89
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->a:J

    .line 90
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->b:J

    .line 92
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->c:J

    .line 93
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->f()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->d:J

    .line 95
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->e:J

    .line 96
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->f:J

    .line 97
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->i()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->g:J

    .line 100
    invoke-static {}, Lcom/tencent/mna/base/jni/f;->j()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/mna/b/a/e;->h:J

    .line 101
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

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/tencent/mna/b/a/e;->h:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 107
    :cond_1
    return-object v0
.end method

.method public c()Lcom/tencent/mna/b/a/h;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->c:Lcom/tencent/mna/b/a/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->a:Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;->accessIp:I

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->b(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0.0.0.0"

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/tencent/mna/b/a/c/a;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    iget-object v0, v0, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    iget-object v0, v0, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v0, v0, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameArea:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    invoke-static {}, Lcom/tencent/mna/base/jni/f;->a()Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/c/e/a;->b:Lcom/tencent/mna/b/a/c/a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "TCallAccelerator"

    return-object v0
.end method
