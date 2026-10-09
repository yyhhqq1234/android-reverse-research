.class public Lcom/tencent/liteav/audio/b;
.super Ljava/lang/Object;
.source "TXCAudioRecorder.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field static g:Lcom/tencent/liteav/audio/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget v0, Lcom/tencent/liteav/basic/a/a;->e:I

    sput v0, Lcom/tencent/liteav/audio/b;->a:I

    .line 11
    sget v0, Lcom/tencent/liteav/basic/a/a;->f:I

    sput v0, Lcom/tencent/liteav/audio/b;->b:I

    .line 12
    sget v0, Lcom/tencent/liteav/basic/a/a;->h:I

    sput v0, Lcom/tencent/liteav/audio/b;->c:I

    .line 13
    sget v0, Lcom/tencent/liteav/audio/d;->n:I

    sput v0, Lcom/tencent/liteav/audio/b;->d:I

    .line 14
    sget v0, Lcom/tencent/liteav/audio/d;->z:I

    sput v0, Lcom/tencent/liteav/audio/b;->e:I

    .line 16
    sget v0, Lcom/tencent/liteav/audio/d;->y:I

    sput v0, Lcom/tencent/liteav/audio/b;->f:I

    .line 22
    new-instance v0, Lcom/tencent/liteav/audio/b;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/b;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/b;->g:Lcom/tencent/liteav/audio/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/liteav/audio/b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/liteav/audio/b;->g:Lcom/tencent/liteav/audio/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetTraeConfig(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->b(I)V

    .line 44
    return-void
.end method

.method public a(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/tencent/liteav/audio/d;->A:I

    if-ne p1, v0, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setHeadsetOn(Z)V

    .line 75
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/audio/impl/a;->a(ILandroid/content/Context;)V

    .line 76
    return-void
.end method

.method public a(Lcom/tencent/liteav/audio/f;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/f;)V

    .line 32
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->a(Z)V

    .line 28
    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->a([B)V

    .line 140
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/a;->c()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->a(I)V

    .line 52
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->b(Z)V

    .line 100
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/a;->b()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->c(I)V

    .line 64
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->c(Z)V

    .line 120
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/a;->d()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->d(I)V

    .line 144
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/impl/a;->d(Z)V

    .line 148
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/a;->e()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/a;->f()Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/a;->g()I

    move-result v0

    return v0
.end method
