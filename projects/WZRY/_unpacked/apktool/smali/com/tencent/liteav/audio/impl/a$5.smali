.class Lcom/tencent/liteav/audio/impl/a$5;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;ZLjava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$5;->c:Lcom/tencent/liteav/audio/impl/a;

    iput-boolean p2, p0, Lcom/tencent/liteav/audio/impl/a$5;->a:Z

    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/a$5;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$5;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a$5;->a:Z

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$5;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->b(Lcom/tencent/liteav/audio/impl/a;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$5;->c:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$5;->b:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a$5;->c:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/a;->c(Lcom/tencent/liteav/audio/impl/a;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Ljava/lang/ref/WeakReference;I)V

    .line 122
    :cond_0
    return-void
.end method
