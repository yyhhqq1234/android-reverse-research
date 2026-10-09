.class final Lcom/squareup/wire/UnknownFieldMap;
.super Ljava/lang/Object;
.source "UnknownFieldMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/UnknownFieldMap$1;,
        Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$FieldValue;,
        Lcom/squareup/wire/UnknownFieldMap$UnknownFieldType;
    }
.end annotation


# instance fields
.field fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/UnknownFieldMap$FieldValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

.method constructor <init>(Lcom/squareup/wire/UnknownFieldMap;)V
    .locals 2
    .param p1, "other"    # Lcom/squareup/wire/UnknownFieldMap;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iget-object v0, p1, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 187
    :cond_0
    return-void
.end method

.method private addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
    .locals 5
    .param p2, "tag"    # I
    .param p4, "wireType"    # Lcom/squareup/wire/WireType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/UnknownFieldMap$FieldValue;",
            ">;>;ITT;",
            "Lcom/squareup/wire/WireType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 215
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;"
    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    sget-object v2, Lcom/squareup/wire/UnknownFieldMap$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-virtual {p4}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported wireType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->varint(ILjava/lang/Long;)Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;

    move-result-object v0

    .line 230
    .local v0, "fieldValue":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/UnknownFieldMap$FieldValue;

    invoke-virtual {v2}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/wire/WireType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getWireType()Lcom/squareup/wire/WireType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 231
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wire type differs from previous type for tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v0    # "fieldValue":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->fixed32(ILjava/lang/Integer;)Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;

    move-result-object v0

    .restart local v0    # "fieldValue":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    goto :goto_0

    .line 223
    .end local v0    # "fieldValue":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->fixed64(ILjava/lang/Long;)Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;

    move-result-object v0

    .restart local v0    # "fieldValue":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    goto :goto_0

    .line 225
    .end local v0    # "fieldValue":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :pswitch_3
    check-cast p3, Lokio/ByteString;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2, p3}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->lengthDelimited(ILokio/ByteString;)Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;

    move-result-object v0

    .line 226
    .restart local v0    # "fieldValue":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    goto :goto_0

    .line 233
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/UnknownFieldMap$FieldValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method addFixed32(ILjava/lang/Integer;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 195
    return-void
.end method

.method addFixed64(ILjava/lang/Long;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 199
    return-void
.end method

.method addLengthDelimited(ILokio/ByteString;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Lokio/ByteString;

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 203
    return-void
.end method

.method addVarint(ILjava/lang/Long;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/squareup/wire/UnknownFieldMap;->ensureFieldMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->addElement(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 191
    return-void
.end method

.method getSerializedSize()I
    .locals 6

    .prologue
    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "size":I
    iget-object v5, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 239
    iget-object v5, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/UnknownFieldMap$FieldValue;

    .line 242
    .local v4, "value":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    invoke-virtual {v4}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->getSerializedSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 243
    goto :goto_0

    .line 246
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    :cond_1
    return v3
.end method

.method write(Lcom/squareup/wire/WireOutput;)V
    .locals 6
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v5, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 251
    iget-object v5, p0, Lcom/squareup/wire/UnknownFieldMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 253
    .local v3, "tag":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/UnknownFieldMap$FieldValue;

    .line 254
    .local v4, "value":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    invoke-virtual {v4, v3, p1}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->write(ILcom/squareup/wire/WireOutput;)V

    goto :goto_0

    .line 258
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/squareup/wire/UnknownFieldMap$FieldValue;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "tag":I
    .end local v4    # "value":Lcom/squareup/wire/UnknownFieldMap$FieldValue;
    :cond_1
    return-void
.end method
