.class Lcom/tencent/liteav/audio/impl/a$1;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/f;

.field final synthetic b:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/f;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$1;->b:Lcom/tencent/liteav/audio/impl/a;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/a$1;->a:Lcom/tencent/liteav/audio/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$1;->b:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$1;->a:Lcom/tencent/liteav/audio/f;

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/f;)Lcom/tencent/liteav/audio/f;

    .line 72
    return-void
.end method
