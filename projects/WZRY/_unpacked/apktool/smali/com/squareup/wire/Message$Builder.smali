.class public abstract Lcom/squareup/wire/Message$Builder;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 284
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/squareup/wire/Message;

    .prologue
    .line 291
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/squareup/wire/Message;->access$000(Lcom/squareup/wire/Message;)Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap;

    invoke-static {p1}, Lcom/squareup/wire/Message;->access$000(Lcom/squareup/wire/Message;)Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/UnknownFieldMap;-><init>(Lcom/squareup/wire/UnknownFieldMap;)V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    .line 295
    :cond_0
    return-void
.end method

.method protected static checkForNulls(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, "element":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 350
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 354
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method private ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap;

    invoke-direct {v0}, Lcom/squareup/wire/UnknownFieldMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    return-object v0
.end method


# virtual methods
.method public addFixed32(II)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .prologue
    .line 308
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/wire/UnknownFieldMap;->addFixed32(ILjava/lang/Integer;)V

    .line 309
    return-void
.end method

.method public addFixed64(IJ)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # J

    .prologue
    .line 315
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/wire/UnknownFieldMap;->addFixed64(ILjava/lang/Long;)V

    .line 316
    return-void
.end method

.method public addLengthDelimited(ILokio/ByteString;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Lokio/ByteString;

    .prologue
    .line 322
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/UnknownFieldMap;->addLengthDelimited(ILokio/ByteString;)V

    .line 323
    return-void
.end method

.method public addVarint(IJ)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # J

    .prologue
    .line 301
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/wire/UnknownFieldMap;->addVarint(ILjava/lang/Long;)V

    .line 302
    return-void
.end method

.method public abstract build()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public checkRequiredFields()V
    .locals 2

    .prologue
    .line 336
    .local p0, "this":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    invoke-static {}, Lcom/squareup/wire/Message;->access$100()Lcom/squareup/wire/Wire;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->builderAdapter(Ljava/lang/Class;)Lcom/squareup/wire/BuilderAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/BuilderAdapter;->checkRequiredFields(Lcom/squareup/wire/Message$Builder;)V

    .line 337
    return-void
.end method
