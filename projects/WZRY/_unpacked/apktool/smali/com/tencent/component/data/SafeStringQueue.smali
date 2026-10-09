.class public Lcom/tencent/component/data/SafeStringQueue;
.super Ljava/lang/Object;
.source "SafeStringQueue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    iput-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    return-void
.end method


# virtual methods
.method public addToBuffer(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    .local v0, "dataLen":I
    iget-object v1, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    return v1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 155
    iget-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 156
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/component/data/SafeStringQueue;->bufferQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/io/Writer;[C)V
    .locals 11
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v9, p2

    if-nez v9, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v7, 0x0

    .line 79
    .local v7, "strRestLen":I
    const/4 v5, 0x0

    .line 80
    .local v5, "strLen":I
    const/4 v6, 0x0

    .line 82
    .local v6, "strPos":I
    const/4 v8, 0x0

    .line 84
    .local v8, "writeLen":I
    array-length v0, p2

    .line 85
    .local v0, "bufferLen":I
    move v2, v0

    .line 86
    .local v2, "bufferRestLen":I
    const/4 v1, 0x0

    .line 91
    .local v1, "bufferPos":I
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/component/data/SafeStringQueue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    .local v4, "str":Ljava/lang/String;
    const/4 v6, 0x0

    .line 95
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 96
    move v7, v5

    .line 99
    :cond_3
    :goto_1
    if-lez v7, :cond_2

    .line 102
    if-le v2, v7, :cond_4

    move v8, v7

    .line 104
    :goto_2
    add-int v10, v6, v8

    invoke-virtual {v4, v6, v10, p2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 106
    sub-int/2addr v2, v8

    .line 107
    add-int/2addr v1, v8

    .line 109
    sub-int/2addr v7, v8

    .line 110
    add-int/2addr v6, v8

    .line 112
    if-nez v2, :cond_3

    .line 114
    const/4 v10, 0x0

    invoke-virtual {p1, p2, v10, v0}, Ljava/io/Writer;->write([CII)V

    .line 116
    const/4 v1, 0x0

    .line 117
    move v2, v0

    goto :goto_1

    :cond_4
    move v8, v2

    .line 102
    goto :goto_2

    .line 124
    .end local v4    # "str":Ljava/lang/String;
    :cond_5
    if-lez v1, :cond_6

    .line 126
    const/4 v9, 0x0

    invoke-virtual {p1, p2, v9, v1}, Ljava/io/Writer;->write([CII)V

    .line 130
    :cond_6
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
