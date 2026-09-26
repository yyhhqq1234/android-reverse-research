.class final Lio/netty/util/Recycler$Stack;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cursor:Lio/netty/util/Recycler$WeakOrderQueue;

.field private elements:[Lio/netty/util/Recycler$DefaultHandle;

.field private volatile head:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final maxCapacity:I

.field final parent:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/Recycler$WeakOrderQueue;

.field private size:I

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;Ljava/lang/Thread;I)V
    .locals 1
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler",
            "<TT;>;",
            "Ljava/lang/Thread;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler<TT;>.Stack<TT;>;"
    .local p1, "parent":Lio/netty/util/Recycler;, "Lio/netty/util/Recycler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    .line 261
    iput-object p2, p0, Lio/netty/util/Recycler$Stack;->thread:Ljava/lang/Thread;

    .line 262
    iput p3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 263
    invoke-static {}, Lio/netty/util/Recycler;->access$3()I

    move-result v0

    new-array v0, v0, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 264
    return-void
.end method

.method static synthetic access$0(Lio/netty/util/Recycler$Stack;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    return-object v0
.end method

.method static synthetic access$1(Lio/netty/util/Recycler$Stack;Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    return-void
.end method

.method static synthetic access$2(Lio/netty/util/Recycler$Stack;)I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    return v0
.end method

.method static synthetic access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-object v0
.end method

.method static synthetic access$4(Lio/netty/util/Recycler$Stack;[Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-void
.end method

.method static synthetic access$5(Lio/netty/util/Recycler$Stack;I)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lio/netty/util/Recycler$Stack;->size:I

    return-void
.end method


# virtual methods
.method newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 1

    .prologue
    .line 350
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler<TT;>.Stack<TT;>;"
    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$Stack;)V

    return-object v0
.end method

.method pop()Lio/netty/util/Recycler$DefaultHandle;
    .locals 5

    .prologue
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler<TT;>.Stack<TT;>;"
    const/4 v4, 0x0

    .line 267
    iget v1, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 268
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 269
    invoke-virtual {p0}, Lio/netty/util/Recycler$Stack;->scavenge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget v1, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 274
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 275
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aget-object v0, v2, v1

    .line 276
    .local v0, "ret":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle;"
    invoke-static {v0}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v2

    invoke-static {v0}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 277
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "recycled multiple times"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_2
    invoke-static {v0, v4}, Lio/netty/util/Recycler$DefaultHandle;->access$4(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 280
    invoke-static {v0, v4}, Lio/netty/util/Recycler$DefaultHandle;->access$0(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 281
    iput v1, p0, Lio/netty/util/Recycler$Stack;->size:I

    goto :goto_0
.end method

.method push(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 3

    .prologue
    .line 331
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler<TT;>.Stack<TT;>;"
    .local p1, "item":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle;"
    invoke-static {p1}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v1

    invoke-static {p1}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "recycled already"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    invoke-static {}, Lio/netty/util/Recycler;->access$4()I

    move-result v1

    invoke-static {p1, v1}, Lio/netty/util/Recycler$DefaultHandle;->access$0(Lio/netty/util/Recycler$DefaultHandle;I)V

    invoke-static {p1, v1}, Lio/netty/util/Recycler$DefaultHandle;->access$4(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 336
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 337
    .local v0, "size":I
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 338
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    if-ne v0, v1, :cond_1

    .line 347
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    shl-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 345
    :cond_2
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aput-object p1, v1, v0

    .line 346
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/util/Recycler$Stack;->size:I

    goto :goto_0
.end method

.method scavenge()Z
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler<TT;>.Stack<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/Recycler$Stack;->scavengeSome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 293
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 294
    const/4 v0, 0x0

    goto :goto_0
.end method

.method scavengeSome()Z
    .locals 5

    .prologue
    .line 298
    .local p0, "this":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler<TT;>.Stack<TT;>;"
    const/4 v3, 0x0

    .line 299
    .local v3, "success":Z
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .local v0, "cursor":Lio/netty/util/Recycler$WeakOrderQueue;, "Lio/netty/util/Recycler$WeakOrderQueue;"
    iget-object v2, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 300
    .local v2, "prev":Lio/netty/util/Recycler$WeakOrderQueue;, "Lio/netty/util/Recycler$WeakOrderQueue;"
    :goto_0
    if-nez v0, :cond_0

    .line 325
    :goto_1
    iput-object v2, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 326
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 327
    return v3

    .line 301
    :cond_0
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    const/4 v3, 0x1

    .line 303
    goto :goto_1

    .line 305
    :cond_1
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->access$0(Lio/netty/util/Recycler$WeakOrderQueue;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v1

    .line 306
    .local v1, "next":Lio/netty/util/Recycler$WeakOrderQueue;, "Lio/netty/util/Recycler$WeakOrderQueue;"
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->access$1(Lio/netty/util/Recycler$WeakOrderQueue;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 310
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->hasFinalData()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    :cond_2
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 317
    :cond_3
    if-eqz v2, :cond_4

    .line 318
    invoke-static {v2, v1}, Lio/netty/util/Recycler$WeakOrderQueue;->access$2(Lio/netty/util/Recycler$WeakOrderQueue;Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 323
    :cond_4
    :goto_2
    move-object v0, v1

    goto :goto_0

    .line 321
    :cond_5
    move-object v2, v0

    goto :goto_2
.end method
