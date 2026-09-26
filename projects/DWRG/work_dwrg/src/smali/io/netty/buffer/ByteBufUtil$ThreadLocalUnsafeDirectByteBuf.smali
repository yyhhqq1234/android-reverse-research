.class final Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadLocalUnsafeDirectByteBuf"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler",
            "<",
            "Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handle:Lio/netty/util/Recycler$Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf$1;-><init>()V

    .line 417
    sput-object v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    .line 423
    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 3

    .prologue
    .line 434
    .local p1, "handle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    const/16 v1, 0x100

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 435
    iput-object p1, p0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->handle:Lio/netty/util/Recycler$Handle;

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method static newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;
    .locals 2

    .prologue
    .line 426
    sget-object v1, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v1}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;

    .line 427
    .local v0, "buf":Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->setRefCnt(I)V

    .line 428
    return-object v0
.end method


# virtual methods
.method protected deallocate()V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->capacity()I

    move-result v0

    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->access$0()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 441
    invoke-super {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->deallocate()V

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 444
    sget-object v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    iget-object v1, p0, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->handle:Lio/netty/util/Recycler$Handle;

    invoke-virtual {v0, p0, v1}, Lio/netty/util/Recycler;->recycle(Ljava/lang/Object;Lio/netty/util/Recycler$Handle;)Z

    goto :goto_0
.end method
