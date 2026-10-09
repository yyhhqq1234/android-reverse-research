.class Lcom/tencent/liteav/audio/impl/a$8;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;Z)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$8;->b:Lcom/tencent/liteav/audio/impl/a;

    iput-boolean p2, p0, Lcom/tencent/liteav/audio/impl/a$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$8;->b:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    if-ne v0, v1, :cond_1

    .line 256
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a$8;->a:Z

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeTraeRecordSetMute(Z)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$8;->b:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$8;->b:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/a$8;->a:Z

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/impl/a/b;->a(Z)V

    goto :goto_0
.end method
