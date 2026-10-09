.class public Lcom/tencent/liteav/audio/impl/b/a$a;
.super Ljava/lang/Object;
.source "TXCAudioRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:J

.field final synthetic c:Lcom/tencent/liteav/audio/impl/b/a;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/impl/b/a;[BJ)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/b/a$a;->c:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/b/a$a;->a:[B

    .line 57
    iput-wide p3, p0, Lcom/tencent/liteav/audio/impl/b/a$a;->b:J

    .line 58
    return-void
.end method
