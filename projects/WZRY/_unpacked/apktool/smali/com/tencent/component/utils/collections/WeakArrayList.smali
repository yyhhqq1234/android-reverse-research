.class public Lcom/tencent/component/utils/collections/WeakArrayList;
.super Ljava/util/AbstractList;
.source "WeakArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private data:[Ljava/lang/Object;

.field private enquedElement:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/utils/collections/ReferenceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transient queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/collections/WeakArrayList;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/component/utils/collections/WeakArrayList;-><init>(I)V

    .line 123
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 100
    iput-boolean v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->enquedElement:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    .line 112
    if-gez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    .line 115
    iput v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 94
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 100
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->enquedElement:Z

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    array-length v2, v2

    iput v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/tencent/component/utils/collections/WeakArrayList;->createRef(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v4

    aput-object v4, v3, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    goto :goto_0

    .line 141
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "original == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    if-gez p1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/component/utils/collections/WeakArrayList;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 206
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    .line 207
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 209
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 210
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 212
    :cond_2
    sub-int v3, p2, p1

    .line 213
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 215
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    return-object v2
.end method

.method private createRef(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/ref/Reference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/tencent/component/utils/collections/WeakArrayList;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/component/utils/collections/WeakArrayList;->NULL_VALUE:Ljava/lang/Object;

    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p0
.end method

.method private static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/tencent/component/utils/collections/WeakArrayList;->NULL_VALUE:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/utils/collections/WeakArrayList;->assertRange(IZ)V

    .line 350
    iget v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/component/utils/collections/WeakArrayList;->ensureCapacity(I)V

    .line 351
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/tencent/component/utils/collections/WeakArrayList;->createRef(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v1

    aput-object v1, v0, p1

    .line 353
    iget v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    .line 354
    iget v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    .line 355
    return-void
.end method

.method public addReferenceListener(Lcom/tencent/component/utils/collections/ReferenceListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tencent/component/utils/collections/ReferenceListener;

    .prologue
    .line 384
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 385
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    .line 388
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/utils/collections/ReferenceListener;>;"
    monitor-enter v0

    .line 389
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected assertRange(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "allowLast"    # Z

    .prologue
    .line 294
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakArrayList;->expurge()I

    move-result v0

    .line 295
    .local v0, "csize":I
    if-gez p1, :cond_0

    .line 296
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid negative value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    if-eqz p2, :cond_1

    if-le p1, v0, :cond_1

    .line 298
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_1
    if-nez p2, :cond_2

    if-lt p1, v0, :cond_2

    .line 300
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_2
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 4
    .param p1, "minCapacity"    # I

    .prologue
    .line 182
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    iget v3, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    .line 183
    iget-object v3, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    array-length v1, v3

    .line 184
    .local v1, "oldCapacity":I
    if-le p1, v1, :cond_1

    .line 185
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    .line 186
    .local v2, "oldData":[Ljava/lang/Object;
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 187
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 188
    move v0, p1

    .line 190
    :cond_0
    invoke-static {v2, v0}, Lcom/tencent/component/utils/collections/WeakArrayList;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    .line 192
    .end local v0    # "newCapacity":I
    .end local v2    # "oldData":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public expurge()I
    .locals 8

    .prologue
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 241
    :goto_0
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 242
    iput-boolean v6, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->enquedElement:Z

    goto :goto_0

    .line 247
    :cond_0
    iget-boolean v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->enquedElement:Z

    if-eqz v4, :cond_6

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    if-ge v0, v4, :cond_5

    .line 252
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aget-object v3, v4, v0

    check-cast v3, Ljava/lang/ref/Reference;

    .line 253
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->isEnqueued()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 254
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    .line 255
    :cond_2
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aput-object v7, v4, v0

    .line 251
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_3
    if-eq v0, v1, :cond_4

    .line 259
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aget-object v5, v5, v0

    aput-object v5, v4, v1

    .line 260
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aput-object v7, v4, v0

    .line 262
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 265
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->enquedElement:Z

    .line 274
    .end local v0    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 275
    iput-boolean v6, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->enquedElement:Z

    goto :goto_3

    .line 268
    .end local v1    # "j":I
    :cond_6
    iget v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    .restart local v1    # "j":I
    goto :goto_3

    .line 278
    :cond_7
    iget v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    .line 279
    .local v2, "oldSize":I
    iput v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    .line 281
    if-ge v1, v2, :cond_8

    .line 282
    sub-int v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/tencent/component/utils/collections/WeakArrayList;->fireReferenceRelease(I)V

    .line 285
    :cond_8
    iget v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    return v4
.end method

.method protected fireReferenceRelease(I)V
    .locals 4
    .param p1, "released"    # I

    .prologue
    .line 413
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    .line 414
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/utils/collections/ReferenceListener;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/utils/collections/ReferenceListener;

    .line 416
    .local v1, "listener":Lcom/tencent/component/utils/collections/ReferenceListener;
    invoke-interface {v1, p1}, Lcom/tencent/component/utils/collections/ReferenceListener;->referenceReleased(I)V

    goto :goto_0

    .line 419
    .end local v1    # "listener":Lcom/tencent/component/utils/collections/ReferenceListener;
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/tencent/component/utils/collections/WeakArrayList;->assertRange(IZ)V

    .line 318
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aget-object v1, v1, p1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 320
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 321
    invoke-static {v0}, Lcom/tencent/component/utils/collections/WeakArrayList;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/tencent/component/utils/collections/WeakArrayList;->assertRange(IZ)V

    .line 367
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aget-object v1, v2, p1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 368
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, "oldValue":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 372
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    iget v5, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 374
    iget v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    .line 375
    iget v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    .line 376
    invoke-static {v0}, Lcom/tencent/component/utils/collections/WeakArrayList;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public removeReferenceListener(Lcom/tencent/component/utils/collections/ReferenceListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tencent/component/utils/collections/ReferenceListener;

    .prologue
    .line 398
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    .line 399
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/utils/collections/ReferenceListener;>;"
    if-eqz v0, :cond_1

    .line 400
    monitor-enter v0

    .line 401
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->listeners:Ljava/util/List;

    .line 403
    :cond_0
    monitor-exit v0

    .line 405
    :cond_1
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/tencent/component/utils/collections/WeakArrayList;->assertRange(IZ)V

    .line 334
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aget-object v1, v2, p1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 335
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, "oldValue":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 339
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/tencent/component/utils/collections/WeakArrayList;->createRef(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v3

    aput-object v3, v2, p1

    .line 340
    iget v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    .line 341
    invoke-static {v0}, Lcom/tencent/component/utils/collections/WeakArrayList;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakArrayList;->expurge()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    if-ge v1, v4, :cond_2

    .line 155
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aget-object v3, v4, v1

    check-cast v3, Ljava/lang/ref/Reference;

    .line 156
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 158
    :goto_1
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    if-nez v2, :cond_1

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .local v2, "obj":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 159
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 162
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public trimToSize()V
    .locals 3

    .prologue
    .line 225
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakArrayList;, "Lcom/tencent/component/utils/collections/WeakArrayList<TT;>;"
    iget v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->modCount:I

    .line 226
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    array-length v0, v1

    .line 227
    .local v0, "oldCapacity":I
    iget v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    if-ge v1, v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->size:I

    invoke-static {v1, v2}, Lcom/tencent/component/utils/collections/WeakArrayList;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/component/utils/collections/WeakArrayList;->data:[Ljava/lang/Object;

    .line 230
    :cond_0
    return-void
.end method
