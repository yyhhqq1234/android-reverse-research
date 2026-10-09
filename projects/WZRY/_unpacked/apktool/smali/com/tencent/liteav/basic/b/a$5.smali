.class Lcom/tencent/liteav/basic/b/a$5;
.super Ljava/lang/Object;
.source "TXCVideoJitterBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/b/a;->a(Lcom/tencent/liteav/basic/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/f/b;

.field final synthetic b:Lcom/tencent/liteav/basic/b/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/b/a;Lcom/tencent/liteav/basic/f/b;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/liteav/basic/b/a$5;->b:Lcom/tencent/liteav/basic/b/a;

    iput-object p2, p0, Lcom/tencent/liteav/basic/b/a$5;->a:Lcom/tencent/liteav/basic/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$5;->b:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/basic/b/a;->f(Lcom/tencent/liteav/basic/b/a;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a$5;->a:Lcom/tencent/liteav/basic/f/b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$5;->b:Lcom/tencent/liteav/basic/b/a;

    invoke-static {v0}, Lcom/tencent/liteav/basic/b/a;->g(Lcom/tencent/liteav/basic/b/a;)J

    .line 149
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a$5;->b:Lcom/tencent/liteav/basic/b/a;

    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a$5;->a:Lcom/tencent/liteav/basic/f/b;

    iget-wide v2, v1, Lcom/tencent/liteav/basic/f/b;->h:J

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/basic/b/a;->a(Lcom/tencent/liteav/basic/b/a;J)V

    .line 150
    return-void
.end method
