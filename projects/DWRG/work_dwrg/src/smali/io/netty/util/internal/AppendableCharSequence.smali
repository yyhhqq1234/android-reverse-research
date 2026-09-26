.class public final Lio/netty/util/internal/AppendableCharSequence;
.super Ljava/lang/Object;
.source "AppendableCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# instance fields
.field private chars:[C

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (length: >= 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 30
    return-void
.end method

.method private constructor <init>([C)V
    .locals 1
    .param p1, "chars"    # [C

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 34
    array-length v0, p1

    iput v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 35
    return-void
.end method

.method private static expand([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "neededSpace"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 125
    array-length v1, p0

    .line 128
    .local v1, "newCapacity":I
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 130
    if-gez v1, :cond_1

    .line 131
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 134
    :cond_1
    if-gt p1, v1, :cond_0

    .line 136
    new-array v0, v1, [C

    .line 137
    .local v0, "newArray":[C
    invoke-static {p0, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-object v0
.end method


# virtual methods
.method public append(C)Lio/netty/util/internal/AppendableCharSequence;
    .locals 5
    .param p1, "c"    # C

    .prologue
    const/4 v4, 0x0

    .line 57
    iget v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    iget-object v3, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 58
    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 60
    .local v1, "old":[C
    array-length v2, v1

    shl-int/lit8 v0, v2, 0x1

    .line 61
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 62
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 64
    :cond_0
    new-array v2, v0, [C

    iput-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 65
    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .end local v0    # "len":I
    .end local v1    # "old":[C
    :cond_1
    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    aput-char p1, v2, v3

    .line 68
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 7
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v4, p3, :cond_0

    .line 79
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 81
    :cond_0
    sub-int v1, p3, p2

    .line 82
    .local v1, "length":I
    iget-object v4, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v4, v4

    iget v5, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_1

    .line 83
    iget-object v4, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v5, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/2addr v5, v1

    iget v6, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-static {v4, v5, v6}, Lio/netty/util/internal/AppendableCharSequence;->expand([CII)[C

    move-result-object v4

    iput-object v4, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 85
    :cond_1
    instance-of v4, p1, Lio/netty/util/internal/AppendableCharSequence;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 87
    check-cast v2, Lio/netty/util/internal/AppendableCharSequence;

    .line 88
    .local v2, "seq":Lio/netty/util/internal/AppendableCharSequence;
    iget-object v3, v2, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 89
    .local v3, "src":[C
    iget-object v4, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v5, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-static {v3, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v4, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 97
    .end local v2    # "seq":Lio/netty/util/internal/AppendableCharSequence;
    .end local v3    # "src":[C
    :cond_2
    return-object p0

    .line 93
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 94
    iget-object v4, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v5, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 44
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-le p1, v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 106
    return-void
.end method

.method public subSequence(II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 52
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>([C)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/AppendableCharSequence;->subSequence(II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 117
    sub-int v0, p2, p1

    .line 118
    .local v0, "length":I
    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v1, :cond_0

    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-le v0, v1, :cond_1

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 121
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    const/4 v2, 0x0

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
