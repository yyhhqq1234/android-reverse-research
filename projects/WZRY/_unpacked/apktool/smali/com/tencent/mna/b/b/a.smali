.class Lcom/tencent/mna/b/b/a;
.super Ljava/lang/Object;
.source "BindingConfig.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;II)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v1

    .line 29
    new-instance v2, Lcom/tencent/mna/base/a/a/b$a;

    invoke-direct {v2}, Lcom/tencent/mna/base/a/a/b$a;-><init>()V

    sget v3, Lcom/tencent/mna/a/b;->h:I

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->a(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 30
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->a(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    sget-object v3, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->b(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 32
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->c(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 33
    invoke-static {}, Lcom/tencent/mna/base/f/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->d(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    const-string v3, "0"

    .line 34
    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->e(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    const-string v3, ""

    .line 35
    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->f(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 36
    invoke-static {p1}, Lcom/tencent/mna/base/f/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->g(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 37
    invoke-static {p1}, Lcom/tencent/mna/base/f/r;->g(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->b(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 38
    invoke-static {p1}, Lcom/tencent/mna/base/f/r;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->h(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    sget-object v3, Lcom/tencent/mna/a/b;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->i(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v1}, Lcom/tencent/mna/base/a/a/b$a;->c(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 41
    invoke-static {p1, v1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/mna/base/a/a/b$a;->d(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/tencent/mna/base/a/a/b$a;->a()Lcom/tencent/mna/base/a/a/b;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/tencent/mna/base/a/a;->a(Lcom/tencent/mna/base/a/a/b;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, p2, p3}, Lcom/tencent/mna/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/tencent/mna/base/a/a/a;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, p2, p3}, Lcom/tencent/mna/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/tencent/mna/base/a/a/a;

    move-result-object v1

    .line 53
    :cond_0
    if-eqz v1, :cond_1

    .line 54
    iget-object v2, v1, Lcom/tencent/mna/base/a/a/a;->aX:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mna/b/b/a;->a:Ljava/lang/String;

    .line 55
    iget v2, v1, Lcom/tencent/mna/base/a/a/a;->aY:I

    iput v2, p0, Lcom/tencent/mna/b/b/a;->g:I

    .line 56
    iget-object v2, v1, Lcom/tencent/mna/base/a/a/a;->aZ:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mna/b/b/a;->b:Ljava/lang/String;

    .line 57
    iget v2, v1, Lcom/tencent/mna/base/a/a/a;->ba:I

    iput v2, p0, Lcom/tencent/mna/b/b/a;->h:I

    .line 58
    iget-object v2, v1, Lcom/tencent/mna/base/a/a/a;->ac:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mna/b/b/a;->c:Ljava/lang/String;

    .line 59
    iget v2, v1, Lcom/tencent/mna/base/a/a/a;->af:I

    iput v2, p0, Lcom/tencent/mna/b/b/a;->i:I

    .line 60
    iget-object v2, v1, Lcom/tencent/mna/base/a/a/a;->ad:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mna/b/b/a;->d:Ljava/lang/String;

    .line 61
    iget v2, v1, Lcom/tencent/mna/base/a/a/a;->ag:I

    iput v2, p0, Lcom/tencent/mna/b/b/a;->j:I

    .line 62
    iget-object v2, v1, Lcom/tencent/mna/base/a/a/a;->ae:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mna/b/b/a;->e:Ljava/lang/String;

    .line 63
    iget-object v2, v1, Lcom/tencent/mna/base/a/a/a;->aK:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mna/b/b/a;->f:Ljava/lang/String;

    .line 64
    iget v2, v1, Lcom/tencent/mna/base/a/a/a;->aL:I

    iput v2, p0, Lcom/tencent/mna/b/b/a;->k:I

    .line 65
    iget v1, v1, Lcom/tencent/mna/base/a/a/a;->ah:I

    iput v1, p0, Lcom/tencent/mna/b/b/a;->l:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]mobile control config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mna/b/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    .line 72
    invoke-static {}, Lcom/tencent/mna/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/tencent/mna/base/f/f;->b(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    const/4 v0, -0x3

    .line 86
    :goto_0
    return v0

    .line 68
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 76
    :cond_2
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 77
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {v5}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    iget-object v5, p0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    .line 83
    const/4 v0, -0x4

    goto :goto_0

    .line 85
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]W2M domain:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to 4GVips:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mna/b/b/a;->m:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindingConfig{mSpeedIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpeedPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEdgeIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEdgePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProxyIp1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProxyPort1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProxyIp2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProxyPort2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMutiProxyIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMutiProxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/b/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
