.class final Lio/netty/buffer/PoolSubpage;
.super Ljava/lang/Object;
.source "PoolSubpage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bitmap:[J

.field private bitmapLength:I

.field final chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;"
        }
    .end annotation
.end field

.field doNotDestroy:Z

.field elemSize:I

.field private maxNumElems:I

.field private final memoryMapIdx:I

.field next:Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation
.end field

.field private nextAvail:I

.field private numAvail:I

.field private final pageSize:I

.field prev:Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final runOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lio/netty/buffer/PoolSubpage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/buffer/PoolSubpage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "pageSize"    # I

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    .line 43
    iput v0, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    .line 44
    iput v0, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    .line 45
    iput v0, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    .line 46
    iput p1, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    .line 47
    iput-object v1, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 48
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolChunk;IIII)V
    .locals 1
    .param p2, "memoryMapIdx"    # I
    .param p3, "runOffset"    # I
    .param p4, "pageSize"    # I
    .param p5, "elemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    .line 52
    iput p2, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    .line 53
    iput p3, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    .line 54
    iput p4, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    .line 55
    ushr-int/lit8 v0, p4, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 56
    invoke-virtual {p0, p5}, Lio/netty/buffer/PoolSubpage;->init(I)V

    .line 57
    return-void
.end method

.method private addToPool()V
    .locals 3

    .prologue
    .line 142
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v1, v1, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    invoke-virtual {v1, v2}, Lio/netty/buffer/PoolArena;->findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v0

    .line 143
    .local v0, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    sget-boolean v1, Lio/netty/buffer/PoolSubpage;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 144
    :cond_1
    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 145
    iget-object v1, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object v1, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 146
    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object p0, v1, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 147
    iput-object p0, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 148
    return-void
.end method

.method private findNextAvail()I
    .locals 10

    .prologue
    .line 172
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 173
    .local v0, "bitmap":[J
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 174
    .local v1, "bitmapLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 180
    const/4 v5, -0x1

    :goto_1
    return v5

    .line 175
    :cond_0
    aget-wide v2, v0, v4

    .line 176
    .local v2, "bits":J
    const-wide/16 v6, -0x1

    xor-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 177
    invoke-direct {p0, v4, v2, v3}, Lio/netty/buffer/PoolSubpage;->findNextAvail0(IJ)I

    move-result v5

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private findNextAvail0(IJ)I
    .locals 8
    .param p1, "i"    # I
    .param p2, "bits"    # J

    .prologue
    .line 184
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v2, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    .line 185
    .local v2, "maxNumElems":I
    shl-int/lit8 v0, p1, 0x6

    .line 187
    .local v0, "baseVal":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v4, 0x40

    if-lt v1, v4, :cond_1

    .line 198
    :cond_0
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 188
    :cond_1
    const-wide/16 v4, 0x1

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 189
    or-int v3, v0, v1

    .line 190
    .local v3, "val":I
    if-ge v3, v2, :cond_0

    goto :goto_1

    .line 196
    .end local v3    # "val":I
    :cond_2
    const/4 v4, 0x1

    ushr-long/2addr p2, v4

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getNextAvail()I
    .locals 2

    .prologue
    .line 163
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 164
    .local v0, "nextAvail":I
    if-ltz v0, :cond_0

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 168
    .end local v0    # "nextAvail":I
    :goto_0
    return v0

    .restart local v0    # "nextAvail":I
    :cond_0
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->findNextAvail()I

    move-result v0

    goto :goto_0
.end method

.method private removeFromPool()V
    .locals 3

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const/4 v2, 0x0

    .line 151
    sget-boolean v0, Lio/netty/buffer/PoolSubpage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object v1, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 153
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iput-object v1, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 154
    iput-object v2, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 155
    iput-object v2, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 156
    return-void
.end method

.method private setNextAvail(I)V
    .locals 0
    .param p1, "bitmapIdx"    # I

    .prologue
    .line 159
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iput p1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 160
    return-void
.end method

.method private toHandle(I)J
    .locals 5
    .param p1, "bitmapIdx"    # I

    .prologue
    .line 202
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-long v2, p1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method allocate()J
    .locals 10

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const-wide/16 v8, 0x1

    .line 82
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    if-nez v3, :cond_0

    .line 83
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lio/netty/buffer/PoolSubpage;->toHandle(I)J

    move-result-wide v4

    .line 100
    :goto_0
    return-wide v4

    .line 86
    :cond_0
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v3, :cond_2

    .line 87
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->getNextAvail()I

    move-result v0

    .line 91
    .local v0, "bitmapIdx":I
    ushr-int/lit8 v1, v0, 0x6

    .line 92
    .local v1, "q":I
    and-int/lit8 v2, v0, 0x3f

    .line 93
    .local v2, "r":I
    sget-boolean v3, Lio/netty/buffer/PoolSubpage;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v4, v3, v1

    ushr-long/2addr v4, v2

    and-long/2addr v4, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 94
    :cond_3
    iget-object v3, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v4, v3, v1

    shl-long v6, v8, v2

    or-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 96
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-nez v3, :cond_4

    .line 97
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->removeFromPool()V

    .line 100
    :cond_4
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolSubpage;->toHandle(I)J

    move-result-wide v4

    goto :goto_0
.end method

.method free(I)Z
    .locals 10
    .param p1, "bitmapIdx"    # I

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const-wide/16 v8, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    iget v4, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    if-nez v4, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 113
    :cond_1
    ushr-int/lit8 v0, p1, 0x6

    .line 114
    .local v0, "q":I
    and-int/lit8 v1, p1, 0x3f

    .line 115
    .local v1, "r":I
    sget-boolean v4, Lio/netty/buffer/PoolSubpage;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v4, v4, v0

    ushr-long/2addr v4, v1

    and-long/2addr v4, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 116
    :cond_2
    iget-object v4, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v6, v4, v0

    shl-long/2addr v8, v1

    xor-long/2addr v6, v8

    aput-wide v6, v4, v0

    .line 118
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolSubpage;->setNextAvail(I)V

    .line 120
    iget v4, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-nez v4, :cond_3

    .line 121
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->addToPool()V

    goto :goto_0

    .line 125
    :cond_3
    iget v4, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    iget v5, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    if-ne v4, v5, :cond_0

    .line 129
    iget-object v4, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iget-object v5, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-eq v4, v5, :cond_0

    .line 135
    iput-boolean v3, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    .line 136
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->removeFromPool()V

    move v2, v3

    .line 137
    goto :goto_0
.end method

.method init(I)V
    .locals 4
    .param p1, "elemSize"    # I

    .prologue
    .line 60
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    .line 61
    iput p1, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    .line 62
    if-eqz p1, :cond_1

    .line 63
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    div-int/2addr v1, p1

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 65
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    ushr-int/lit8 v1, v1, 0x6

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 66
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    and-int/lit8 v1, v1, 0x3f

    if-eqz v1, :cond_0

    .line 67
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 70
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    if-lt v0, v1, :cond_2

    .line 75
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->addToPool()V

    .line 76
    return-void

    .line 71
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-boolean v0, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": not in use)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elemSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
