.class Lcom/tencent/liteav/audio/impl/a$7;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;I)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$7;->b:Lcom/tencent/liteav/audio/impl/a;

    iput p2, p0, Lcom/tencent/liteav/audio/impl/a$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$7;->b:Lcom/tencent/liteav/audio/impl/a;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/a$7;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->b(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 235
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$7;->b:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$7;->b:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/impl/a$7;->a:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/impl/Encoder/a;->setReverbType(I)V

    .line 236
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a$7;->a:I

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeTraeSetReverb(I)V

    .line 237
    return-void
.end method
