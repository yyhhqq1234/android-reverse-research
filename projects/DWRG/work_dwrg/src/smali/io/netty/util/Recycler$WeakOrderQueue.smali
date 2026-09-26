.class final Lio/netty/util/Recycler$WeakOrderQueue;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakOrderQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$WeakOrderQueue$Link;
    }
.end annotation


# static fields
.field private static final LINK_CAPACITY:I = 0x10


# instance fields
.field private head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

.field private final id:I

.field private next:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V
    .locals 2
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack",
            "<*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "stack":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Lio/netty/util/Recycler;->access$2()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 164
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->owner:Ljava/lang/ref/WeakReference;

    .line 166
    monitor-enter p1

    .line 167
    :try_start_0
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$0(Lio/netty/util/Recycler$Stack;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 168
    invoke-static {p1, p0}, Lio/netty/util/Recycler$Stack;->access$1(Lio/netty/util/Recycler$Stack;Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 166
    monitor-exit p1

    .line 170
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$0(Lio/netty/util/Recycler$WeakOrderQueue;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    return-object v0
.end method

.method static synthetic access$1(Lio/netty/util/Recycler$WeakOrderQueue;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->owner:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2(Lio/netty/util/Recycler$WeakOrderQueue;Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    return-void
.end method


# virtual methods
.method add(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 5

    .prologue
    .local p1, "handle":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle;"
    const/4 v4, 0x0

    .line 173
    iget v3, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    invoke-static {p1, v3}, Lio/netty/util/Recycler$DefaultHandle;->access$0(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 175
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 177
    .local v0, "tail":Lio/netty/util/Recycler$WeakOrderQueue$Link;, "Lio/netty/util/Recycler$WeakOrderQueue$Link;"
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v2

    .local v2, "writeIndex":I
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 178
    new-instance v1, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {v1, v4}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    invoke-static {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1(Lio/netty/util/Recycler$WeakOrderQueue$Link;Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    .end local v0    # "tail":Lio/netty/util/Recycler$WeakOrderQueue$Link;, "Lio/netty/util/Recycler$WeakOrderQueue$Link;"
    .local v1, "tail":Lio/netty/util/Recycler$WeakOrderQueue$Link;, "Lio/netty/util/Recycler$WeakOrderQueue$Link;"
    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 179
    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v2

    move-object v0, v1

    .line 181
    .end local v1    # "tail":Lio/netty/util/Recycler$WeakOrderQueue$Link;, "Lio/netty/util/Recycler$WeakOrderQueue$Link;"
    .restart local v0    # "tail":Lio/netty/util/Recycler$WeakOrderQueue$Link;, "Lio/netty/util/Recycler$WeakOrderQueue$Link;"
    :cond_0
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$2(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v3

    aput-object p1, v3, v2

    .line 182
    invoke-static {p1, v4}, Lio/netty/util/Recycler$DefaultHandle;->access$1(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)V

    .line 185
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->lazySet(I)V

    .line 186
    return-void
.end method

.method hasFinalData()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$3(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v0

    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method transfer(Lio/netty/util/Recycler$Stack;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "to":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    const/16 v12, 0x10

    const/4 v10, 0x0

    .line 196
    iget-object v3, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 197
    .local v3, "head":Lio/netty/util/Recycler$WeakOrderQueue$Link;, "Lio/netty/util/Recycler$WeakOrderQueue$Link;"
    if-nez v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v10

    .line 201
    :cond_1
    invoke-static {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$3(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 202
    invoke-static {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 205
    invoke-static {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object v3

    iput-object v3, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 208
    :cond_2
    invoke-static {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$3(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v7

    .line 209
    .local v7, "start":I
    invoke-virtual {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v2

    .line 210
    .local v2, "end":I
    if-eq v7, v2, :cond_0

    .line 214
    sub-int v0, v2, v7

    .line 215
    .local v0, "count":I
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$2(Lio/netty/util/Recycler$Stack;)I

    move-result v10

    add-int/2addr v10, v0

    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v11

    array-length v11, v11

    if-le v10, v11, :cond_3

    .line 216
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v10

    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$2(Lio/netty/util/Recycler$Stack;)I

    move-result v11

    add-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0x2

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lio/netty/util/Recycler$DefaultHandle;

    invoke-static {p1, v10}, Lio/netty/util/Recycler$Stack;->access$4(Lio/netty/util/Recycler$Stack;[Lio/netty/util/Recycler$DefaultHandle;)V

    .line 219
    :cond_3
    invoke-static {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$2(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v6

    .line 220
    .local v6, "src":[Lio/netty/util/Recycler$DefaultHandle;
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v9

    .line 221
    .local v9, "trg":[Lio/netty/util/Recycler$DefaultHandle;
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$2(Lio/netty/util/Recycler$Stack;)I

    move-result v4

    .local v4, "size":I
    move v5, v4

    .end local v4    # "size":I
    .local v5, "size":I
    move v8, v7

    .line 222
    .end local v7    # "start":I
    .local v8, "start":I
    :goto_1
    if-lt v8, v2, :cond_5

    .line 233
    invoke-static {p1, v5}, Lio/netty/util/Recycler$Stack;->access$5(Lio/netty/util/Recycler$Stack;I)V

    .line 235
    if-ne v2, v12, :cond_4

    invoke-static {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 236
    invoke-static {v3}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object v10

    iput-object v10, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 239
    :cond_4
    invoke-static {v3, v2}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$5(Lio/netty/util/Recycler$WeakOrderQueue$Link;I)V

    .line 240
    const/4 v10, 0x1

    goto :goto_0

    .line 223
    :cond_5
    aget-object v1, v6, v8

    .line 224
    .local v1, "element":Lio/netty/util/Recycler$DefaultHandle;, "Lio/netty/util/Recycler$DefaultHandle;"
    invoke-static {v1}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v10

    if-nez v10, :cond_7

    .line 225
    invoke-static {v1}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v10

    invoke-static {v1, v10}, Lio/netty/util/Recycler$DefaultHandle;->access$4(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 229
    :cond_6
    invoke-static {v1, p1}, Lio/netty/util/Recycler$DefaultHandle;->access$1(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)V

    .line 230
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "size":I
    .restart local v4    # "size":I
    aput-object v1, v9, v5

    .line 231
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "start":I
    .restart local v7    # "start":I
    const/4 v10, 0x0

    aput-object v10, v6, v8

    move v5, v4

    .end local v4    # "size":I
    .restart local v5    # "size":I
    move v8, v7

    .end local v7    # "start":I
    .restart local v8    # "start":I
    goto :goto_1

    .line 226
    :cond_7
    invoke-static {v1}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v10

    invoke-static {v1}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v11

    if-eq v10, v11, :cond_6

    .line 227
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "recycled already"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
