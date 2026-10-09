.class public Lcom/tencent/liteav/audio/c;
.super Ljava/lang/Object;
.source "TXCMixPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/audio/g;


# static fields
.field static d:Lcom/tencent/liteav/audio/c;


# instance fields
.field a:Lcom/tencent/liteav/audio/a;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/g;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/tencent/liteav/audio/c;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/c;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/c;->d:Lcom/tencent/liteav/audio/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/tencent/liteav/audio/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/audio/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/c;->a:Lcom/tencent/liteav/audio/a;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/c;->c:Z

    .line 22
    return-void
.end method

.method public static a()Lcom/tencent/liteav/audio/c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/liteav/audio/c;->d:Lcom/tencent/liteav/audio/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/audio/g;)V
    .locals 1

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public a(F)Z
    .locals 1

    .prologue
    .line 142
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setMicVolume(F)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    const-string v1, "MixPlayer"

    const-string v2, "You must start audio record before start bgm!"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->c()I

    move-result v1

    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/audio/b;->b()I

    move-result v2

    sget v3, Lcom/tencent/liteav/audio/d;->H:I

    invoke-static {p1, v1, v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->playBGM(Ljava/lang/String;III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setBGMNotify(Lcom/tencent/liteav/audio/g;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->a:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/a;->b()I

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 172
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->getBGMDuration(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->stopBGM()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/c;->c:Z

    .line 83
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->a:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/a;->c()I

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public b(F)Z
    .locals 1

    .prologue
    .line 157
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->setBgmVolume(F)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->pauseBGM()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->resumeBGM()V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onMixPcmData([B)V
    .locals 4

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->a:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/tencent/liteav/basic/f/a;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/f/a;-><init>()V

    .line 243
    iput-object p1, v0, Lcom/tencent/liteav/basic/f/a;->f:[B

    .line 244
    sget v1, Lcom/tencent/liteav/basic/a/a;->n:I

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->d:I

    .line 245
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->c()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->a:I

    .line 246
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->b()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->b:I

    .line 247
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->d()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->c:I

    .line 248
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/liteav/basic/f/a;->e:J

    .line 249
    iget-object v1, p0, Lcom/tencent/liteav/audio/c;->a:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/audio/a;->a(Lcom/tencent/liteav/basic/f/a;)I

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 253
    if-eqz v0, :cond_1

    .line 254
    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/g;->onMixPcmData([B)V

    .line 257
    :cond_1
    return-void
.end method

.method public onMixPlayBegin()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/tencent/liteav/audio/g;->onMixPlayBegin()V

    .line 197
    :cond_0
    return-void
.end method

.method public onMixPlayComplete(I)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/g;->onMixPlayComplete(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public onMixPlayProgress(JJ)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/g;->onMixPlayProgress(JJ)V

    .line 207
    :cond_0
    return-void
.end method

.method public onPCMData([B)V
    .locals 4

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/c;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->a:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/tencent/liteav/basic/f/a;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/f/a;-><init>()V

    .line 223
    iput-object p1, v0, Lcom/tencent/liteav/basic/f/a;->f:[B

    .line 224
    sget v1, Lcom/tencent/liteav/basic/a/a;->n:I

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->d:I

    .line 225
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->c()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->a:I

    .line 226
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->b()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->b:I

    .line 227
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/b;->d()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->c:I

    .line 228
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/liteav/basic/f/a;->e:J

    .line 229
    iget-object v1, p0, Lcom/tencent/liteav/audio/c;->a:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/audio/a;->a(Lcom/tencent/liteav/basic/f/a;)I

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/audio/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 233
    if-eqz v0, :cond_1

    .line 234
    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/g;->onPCMData([B)V

    .line 237
    :cond_1
    return-void
.end method
