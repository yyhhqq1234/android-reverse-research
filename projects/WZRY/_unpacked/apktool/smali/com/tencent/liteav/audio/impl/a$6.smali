.class Lcom/tencent/liteav/audio/impl/a$6;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->a(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;ILjava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    iput p2, p0, Lcom/tencent/liteav/audio/impl/a$6;->a:I

    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/a$6;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x320

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/audio/impl/a$6;->a:I

    if-eq v0, v1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/a$6;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    if-ne v0, v1, :cond_3

    .line 174
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/a/b;->a()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/a/b;)Lcom/tencent/liteav/audio/impl/a/b;

    .line 176
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Encoder/a;->unInit()V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/Encoder/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    .line 179
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->m(Lcom/tencent/liteav/audio/impl/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$6$1;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/a$6$1;-><init>(Lcom/tencent/liteav/audio/impl/a$6;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeDestoryRecordProcessor(J)V

    .line 193
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;J)J

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->m(Lcom/tencent/liteav/audio/impl/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$6$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/a$6$2;-><init>(Lcom/tencent/liteav/audio/impl/a$6;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
