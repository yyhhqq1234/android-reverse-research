.class Lcom/tencent/liteav/audio/impl/a$9;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->a(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/a$9;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/a$9;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 299
    sget v0, Lcom/tencent/liteav/audio/d;->B:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeCreateRecordProcessor()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;J)J

    .line 301
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a$9;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/a;->h(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v6}, Lcom/tencent/liteav/audio/impl/a;->i(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v7}, Lcom/tencent/liteav/audio/impl/a;->j(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeRecordProcessorInit(JLandroid/content/Context;IZIII)V

    .line 302
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->l(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeTraeRecordSetMute(Z)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->n(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a/a;

    invoke-direct {v1}, Lcom/tencent/liteav/audio/impl/a/a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/a/b;)Lcom/tencent/liteav/audio/impl/a/b;

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$9;->b:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/a;->c(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Ljava/lang/ref/WeakReference;I)V

    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/liteav/audio/impl/a/a;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/a/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->o(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/a/a;->b(Z)V

    .line 308
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/a/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->p(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/a/a;->a(I)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->l(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/impl/a/b;->a(Z)V

    .line 312
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$9;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/a;->h(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/a;->i(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/a;->j(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/a$9;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/a$9;->b:Ljava/lang/ref/WeakReference;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/liteav/audio/impl/a/b;->a(Landroid/content/Context;IIIILjava/lang/ref/WeakReference;)V

    goto/16 :goto_0
.end method
