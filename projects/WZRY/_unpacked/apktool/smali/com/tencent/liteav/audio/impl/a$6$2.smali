.class Lcom/tencent/liteav/audio/impl/a$6$2;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/a$6;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a$6;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/a$6;->b:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v2, v2, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/a;->c(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Ljava/lang/ref/WeakReference;I)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/a/b;->a()V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/a/b;)Lcom/tencent/liteav/audio/impl/a/b;

    .line 203
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->n(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a/a;

    invoke-direct {v1}, Lcom/tencent/liteav/audio/impl/a/a;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/a/b;)Lcom/tencent/liteav/audio/impl/a/b;

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/liteav/audio/impl/a/a;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/a/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->o(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/a/a;->b(Z)V

    .line 206
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/a/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->p(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/a/a;->a(I)V

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->l(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/impl/a/b;->a(Z)V

    .line 210
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->g(Lcom/tencent/liteav/audio/impl/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v2, v2, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/a;->h(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v3, v3, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/a;->i(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v4, v4, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/a;->j(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v5, v5, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v6, v6, Lcom/tencent/liteav/audio/impl/a$6;->b:Ljava/lang/ref/WeakReference;

    invoke-interface/range {v0 .. v6}, Lcom/tencent/liteav/audio/impl/a/b;->a(Landroid/content/Context;IIIILjava/lang/ref/WeakReference;)V

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$6$2;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->k(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->c(I)V

    .line 213
    return-void
.end method
