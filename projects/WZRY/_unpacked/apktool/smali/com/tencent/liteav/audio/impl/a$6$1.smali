.class Lcom/tencent/liteav/audio/impl/a$6$1;
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
    .line 179
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeCreateRecordProcessor()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;J)J

    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v2, v2, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/a;->g(Lcom/tencent/liteav/audio/impl/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v3, v3, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v5, v5, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/a;->h(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v6, v6, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v6}, Lcom/tencent/liteav/audio/impl/a;->i(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v7, v7, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v7}, Lcom/tencent/liteav/audio/impl/a;->j(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeRecordProcessorInit(JLandroid/content/Context;IZIII)V

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v1, v1, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->k(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->c(I)V

    .line 186
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$6$1;->a:Lcom/tencent/liteav/audio/impl/a$6;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a$6;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->l(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeTraeRecordSetMute(Z)V

    .line 188
    :cond_0
    return-void
.end method
