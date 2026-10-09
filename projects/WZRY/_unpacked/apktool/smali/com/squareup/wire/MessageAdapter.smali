.class final Lcom/squareup/wire/MessageAdapter;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/MessageAdapter$1;,
        Lcom/squareup/wire/MessageAdapter$ImmutableList;,
        Lcom/squareup/wire/MessageAdapter$Storage;,
        Lcom/squareup/wire/MessageAdapter$FieldInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FULL_BLOCK:Ljava/lang/String; = "\u2588"

.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"


# instance fields
.field private final builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;>;"
        }
    .end annotation
.end field

.field private final fieldInfoMap:Lcom/squareup/wire/TagMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/TagMap",
            "<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field private final tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wire:Lcom/squareup/wire/Wire;


# direct methods
.method constructor <init>(Lcom/squareup/wire/Wire;Ljava/lang/Class;)V
    .locals 18
    .param p1, "wire"    # Lcom/squareup/wire/Wire;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Wire;",
            "Ljava/lang/Class",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    .line 137
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    .line 138
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter;->getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    .line 141
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/squareup/wire/MessageAdapter$FieldInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .local v13, "arr$":[Ljava/lang/reflect/Field;
    array-length v15, v13

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_3

    aget-object v9, v13, v14

    .line 144
    .local v9, "messageField":Ljava/lang/reflect/Field;
    const-class v2, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/squareup/wire/ProtoField;

    .line 145
    .local v12, "annotation":Lcom/squareup/wire/ProtoField;
    if-eqz v12, :cond_1

    .line 146
    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->tag()I

    move-result v3

    .line 148
    .local v3, "tag":I
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/4 v8, 0x0

    .line 151
    .local v8, "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->type()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    .line 152
    .local v5, "datatype":Lcom/squareup/wire/Message$Datatype;
    sget-object v2, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v2, :cond_2

    .line 153
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/squareup/wire/MessageAdapter;->getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v8

    .line 157
    :cond_0
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v6

    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->redacted()Z

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/squareup/wire/MessageAdapter;->getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/squareup/wire/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lcom/squareup/wire/MessageAdapter$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v3    # "tag":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v8    # "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 154
    .restart local v3    # "tag":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .restart local v8    # "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v2, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v2, :cond_0

    .line 155
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/squareup/wire/MessageAdapter;->getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_1

    .line 162
    .end local v3    # "tag":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v8    # "enumOrMessageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "messageField":Ljava/lang/reflect/Field;
    .end local v12    # "annotation":Lcom/squareup/wire/ProtoField;
    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/squareup/wire/TagMap;->of(Ljava/util/Map;)Lcom/squareup/wire/TagMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    .line 163
    return-void
.end method

.method private getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No builder field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TM;>;"
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Builder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No builder class found for message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEnumAdapter(I)Lcom/squareup/wire/EnumAdapter;
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/EnumAdapter",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 666
    .local v0, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    if-eqz v2, :cond_1

    .line 667
    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    .line 673
    :cond_0
    :goto_0
    return-object v1

    .line 669
    :cond_1
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getEnumClass(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v1

    .line 670
    .local v1, "result":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<+Lcom/squareup/wire/ProtoEnum;>;"
    if-eqz v0, :cond_0

    .line 671
    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    goto :goto_0
.end method

.method private getEnumClass(I)Ljava/lang/Class;
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v3, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 763
    .local v2, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 764
    .local v0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/wire/ProtoEnum;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 765
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    .line 766
    .local v1, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getEnumType()Ljava/lang/Class;

    move-result-object v0

    .line 770
    .end local v1    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    :cond_0
    return-object v0

    .line 763
    .end local v0    # "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/wire/ProtoEnum;>;"
    :cond_1
    iget-object v0, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    goto :goto_0
.end method

.method private getEnumSize(Lcom/squareup/wire/ProtoEnum;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;)I"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Lcom/squareup/wire/ProtoEnum;, "TE;"
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 463
    .local v0, "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<TE;>;"
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    return v1
.end method

.method private getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 202
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    .end local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 204
    .restart local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 207
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v3, Ljava/lang/Enum;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "type":Ljava/lang/reflect/Type;
    move-object v0, v1

    goto :goto_0

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExtension(I)Lcom/squareup/wire/Extension;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v1, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    .line 744
    .local v0, "registry":Lcom/squareup/wire/ExtensionRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;I)Lcom/squareup/wire/Extension;

    move-result-object v1

    goto :goto_0
.end method

.method private getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "map":Lcom/squareup/wire/ExtensionMap;, "Lcom/squareup/wire/ExtensionMap<TT;>;"
    const/4 v4, 0x0

    .line 253
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ExtensionMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 254
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ExtensionMap;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    .line 255
    .local v1, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v6

    .line 256
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v5

    .line 257
    .local v5, "tag":I
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v0

    .line 258
    .local v0, "datatype":Lcom/squareup/wire/Message$Datatype;
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v3

    .line 259
    .local v3, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 260
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    check-cast v6, Ljava/util/List;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-direct {p0, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v4, v7

    .line 253
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v6, Ljava/util/List;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-direct {p0, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    .line 266
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v5, v6, v0}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    .line 269
    .end local v0    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v1    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    .end local v3    # "label":Lcom/squareup/wire/Message$Label;
    .end local v5    # "tag":I
    .end local v6    # "value":Ljava/lang/Object;
    :cond_2
    return v4
.end method

.method private getMessageAdapter(I)Lcom/squareup/wire/MessageAdapter;
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/MessageAdapter",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 654
    .local v0, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    if-eqz v2, :cond_1

    .line 655
    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    .line 661
    :cond_0
    :goto_0
    return-object v1

    .line 657
    :cond_1
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getMessageClass(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v1

    .line 658
    .local v1, "result":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<+Lcom/squareup/wire/Message;>;"
    if-eqz v0, :cond_0

    .line 659
    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    goto :goto_0
.end method

.method private getMessageClass(I)Ljava/lang/Class;
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v3, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 679
    .local v1, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 681
    .local v2, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/squareup/wire/Message;>;"
    :goto_0
    if-nez v2, :cond_0

    .line 682
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v0

    .line 683
    .local v0, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getMessageType()Ljava/lang/Class;

    move-result-object v2

    .line 687
    .end local v0    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<Lcom/squareup/wire/ExtendableMessage<*>;*>;"
    :cond_0
    return-object v2

    .line 679
    .end local v2    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/squareup/wire/Message;>;"
    :cond_1
    iget-object v2, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    goto :goto_0
.end method

.method private getMessageSize(Lcom/squareup/wire/Message;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;)I"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    .line 469
    .local v0, "messageSize":I
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 187
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/squareup/wire/Message;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    .end local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 189
    .restart local v0    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 192
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v3, Lcom/squareup/wire/Message;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "type":Ljava/lang/reflect/Type;
    move-object v0, v1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 5
    .param p2, "tag"    # I
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .line 282
    .local v2, "packedLength":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 283
    .local v1, "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v4

    add-int/2addr v2, v4

    .line 284
    goto :goto_0

    .line 286
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p2, v4}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v4

    invoke-static {v4}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v3

    .line 287
    .local v3, "size":I
    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 288
    add-int/2addr v3, v2

    .line 289
    return v3
.end method

.method private getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 4
    .param p2, "tag"    # I
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .line 274
    .local v2, "size":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v1, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v3

    add-int/2addr v2, v3

    .line 276
    goto :goto_0

    .line 277
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return v2
.end method

.method private getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;

    .prologue
    .line 411
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "datatype"    # Lcom/squareup/wire/Message$Datatype;

    .prologue
    .line 419
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v2, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p2}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 438
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 420
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v2

    .line 437
    :goto_0
    return v2

    .line 421
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v2

    goto :goto_0

    .line 422
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    goto :goto_0

    .line 423
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    goto :goto_0

    .line 424
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v2

    goto :goto_0

    .line 425
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_5
    const/4 v2, 0x1

    goto :goto_0

    .line 426
    :pswitch_6
    check-cast p1, Lcom/squareup/wire/ProtoEnum;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getEnumSize(Lcom/squareup/wire/ProtoEnum;)I

    move-result v2

    goto :goto_0

    .line 428
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->utf8Length(Ljava/lang/String;)I

    move-result v1

    .line 429
    .local v1, "utf8Length":I
    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    .line 431
    .end local v1    # "utf8Length":I
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p1, Lokio/ByteString;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    .line 432
    .local v0, "length":I
    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    .line 433
    .end local v0    # "length":I
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p1, Lcom/squareup/wire/Message;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getMessageSize(Lcom/squareup/wire/Message;)I

    move-result v2

    goto :goto_0

    .line 435
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_a
    const/4 v2, 0x4

    goto :goto_0

    .line 437
    :pswitch_b
    const/16 v2, 0x8

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;
    .locals 6
    .param p1, "input"    # Lcom/squareup/wire/WireInput;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    .line 639
    .local v1, "length":I
    iget v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    .line 640
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Wire recursion limit exceeded"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 642
    :cond_0
    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v3

    .line 643
    .local v3, "oldLimit":I
    iget v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    .line 644
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getMessageAdapter(I)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    .line 645
    .local v0, "adapter":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<+Lcom/squareup/wire/Message;>;"
    invoke-virtual {v0, p1}, Lcom/squareup/wire/MessageAdapter;->read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;

    move-result-object v2

    .line 646
    .local v2, "message":Lcom/squareup/wire/Message;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/squareup/wire/WireInput;->checkLastTagWas(I)V

    .line 647
    iget v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    .line 648
    invoke-virtual {p1, v3}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    .line 649
    return-object v2
.end method

.method private readUnknownField(Lcom/squareup/wire/Message$Builder;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V
    .locals 4
    .param p1, "builder"    # Lcom/squareup/wire/Message$Builder;
    .param p2, "input"    # Lcom/squareup/wire/WireInput;
    .param p3, "tag"    # I
    .param p4, "type"    # Lcom/squareup/wire/WireType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v1, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-virtual {p4}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 712
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wire type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 694
    :pswitch_0
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v2

    invoke-virtual {p1, p3, v2, v3}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    .line 714
    :goto_0
    :pswitch_1
    return-void

    .line 697
    :pswitch_2
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v1

    invoke-virtual {p1, p3, v1}, Lcom/squareup/wire/Message$Builder;->addFixed32(II)V

    goto :goto_0

    .line 700
    :pswitch_3
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p1, p3, v2, v3}, Lcom/squareup/wire/Message$Builder;->addFixed64(IJ)V

    goto :goto_0

    .line 703
    :pswitch_4
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 704
    .local v0, "length":I
    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireInput;->readBytes(I)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/squareup/wire/Message$Builder;->addLengthDelimited(ILokio/ByteString;)V

    goto :goto_0

    .line 708
    .end local v0    # "length":I
    :pswitch_5
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->skipGroup()V

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;
    .locals 6
    .param p1, "input"    # Lcom/squareup/wire/WireInput;
    .param p2, "tag"    # I
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v3, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 633
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    .line 612
    :pswitch_0
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 632
    :goto_0
    return-object v3

    .line 613
    :pswitch_1
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 614
    :pswitch_2
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v3

    invoke-static {v3}, Lcom/squareup/wire/WireInput;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 615
    :pswitch_3
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/squareup/wire/WireInput;->decodeZigZag64(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 616
    :pswitch_4
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 618
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getEnumAdapter(I)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 619
    .local v0, "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<+Lcom/squareup/wire/ProtoEnum;>;"
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v2

    .line 621
    .local v2, "value":I
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/squareup/wire/EnumAdapter;->fromInt(I)Lcom/squareup/wire/ProtoEnum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 626
    .end local v0    # "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<+Lcom/squareup/wire/ProtoEnum;>;"
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "value":I
    :pswitch_6
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 627
    :pswitch_7
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readBytes()Lokio/ByteString;

    move-result-object v3

    goto :goto_0

    .line 628
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;

    move-result-object v3

    goto :goto_0

    .line 629
    :pswitch_9
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 630
    :pswitch_a
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 631
    :pswitch_b
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    .line 632
    :pswitch_c
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private setExtension(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    .locals 0
    .param p1, "builder"    # Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;",
            "Lcom/squareup/wire/Extension",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 758
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-virtual {p1, p2, p3}, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;->setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    .line 759
    return-void
.end method

.method private utf8Length(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 443
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    const/4 v1, 0x0

    .line 444
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 445
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 446
    .local v0, "ch":C
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    .line 447
    add-int/lit8 v1, v1, 0x1

    .line 444
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    .line 449
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 450
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    add-int/lit8 v1, v1, 0x4

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    :cond_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 457
    .end local v0    # "ch":C
    :cond_3
    return v1
.end method

.method private writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V
    .locals 3
    .param p2, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "value":Lcom/squareup/wire/ProtoEnum;, "TE;"
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    .line 521
    .local v0, "adapter":Lcom/squareup/wire/EnumAdapter;, "Lcom/squareup/wire/EnumAdapter<TE;>;"
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 522
    return-void
.end method

.method private writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V
    .locals 7
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Lcom/squareup/wire/WireOutput;",
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "extensionMap":Lcom/squareup/wire/ExtensionMap;, "Lcom/squareup/wire/ExtensionMap<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/squareup/wire/ExtensionMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 326
    invoke-virtual {p2, v2}, Lcom/squareup/wire/ExtensionMap;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    .line 327
    .local v1, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    invoke-virtual {p2, v2}, Lcom/squareup/wire/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v5

    .line 328
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v4

    .line 329
    .local v4, "tag":I
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v0

    .line 330
    .local v0, "datatype":Lcom/squareup/wire/Message$Datatype;
    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v3

    .line 331
    .local v3, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 332
    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    check-cast v5, Ljava/util/List;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, v5, v4, v0}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    .line 325
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v5, Ljava/util/List;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, v5, v4, v0}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 338
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1, v4, v5, v0}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 341
    .end local v0    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v1    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<TT;*>;"
    .end local v3    # "label":Lcom/squareup/wire/Message$Label;
    .end local v4    # "tag":I
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .locals 3
    .param p2, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 513
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    .line 514
    .local v0, "adapter":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    .line 515
    return-void
.end method

.method private writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 4
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p3, "tag"    # I
    .param p4, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .line 353
    .local v2, "packedLength":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 354
    .local v1, "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p4}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v3

    add-int/2addr v2, v3

    .line 355
    goto :goto_0

    .line 356
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    sget-object v3, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p1, p3, v3}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 357
    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 358
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 359
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    .line 361
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 3
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p3, "tag"    # I
    .param p4, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 346
    .local v1, "o":Ljava/lang/Object;
    invoke-direct {p0, p1, p3, v1, p4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 348
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 1
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    invoke-virtual {p4}, Lcom/squareup/wire/Message$Datatype;->wireType()Lcom/squareup/wire/WireType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 475
    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    .line 476
    return-void
.end method

.method private writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 4
    .param p1, "output"    # Lcom/squareup/wire/WireOutput;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "datatype"    # Lcom/squareup/wire/Message$Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    sget-object v2, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 506
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 484
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeSignedVarint32(I)V

    .line 508
    :goto_0
    return-void

    .line 485
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    .line 486
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    .line 487
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    .line 488
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    .line 489
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 490
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lcom/squareup/wire/ProtoEnum;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {p0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V

    goto :goto_0

    .line 492
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 493
    .local v1, "bytes":[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 494
    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_0

    .end local v1    # "bytes":[B
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    move-object v0, p2

    .line 497
    check-cast v0, Lokio/ByteString;

    .line 498
    .local v0, "byteString":Lokio/ByteString;
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 499
    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_0

    .line 501
    .end local v0    # "byteString":Lokio/ByteString;
    :pswitch_9
    check-cast p2, Lcom/squareup/wire/Message;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {p0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    goto :goto_0

    .line 502
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto :goto_0

    .line 503
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    .line 504
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto/16 :goto_0

    .line 505
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method getExtension(Ljava/lang/String;)Lcom/squareup/wire/Extension;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/Extension",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v1, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    .line 751
    .local v0, "registry":Lcom/squareup/wire/ExtensionRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/wire/Extension;

    move-result-object v1

    goto :goto_0
.end method

.method getField(Ljava/lang/String;)Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 107
    .local v0, "key":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    goto :goto_0
.end method

.method getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;
    .locals 3
    .param p2, "fieldInfo"    # Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Field is not of type \"Message\""

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 115
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0}, Lcom/squareup/wire/TagMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getSerializedSize(Lcom/squareup/wire/Message;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    const/4 v5, 0x0

    .line 221
    .local v5, "size":I
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 222
    .local v2, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    invoke-virtual {p0, p1, v2}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v7

    .line 223
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 226
    iget v6, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 227
    .local v6, "tag":I
    iget-object v0, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 228
    .local v0, "datatype":Lcom/squareup/wire/Message$Datatype;
    iget-object v4, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 230
    .local v4, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 231
    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 232
    check-cast v7, Ljava/util/List;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-direct {p0, v7, v6, v0}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_0

    .line 234
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v7, Ljava/util/List;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-direct {p0, v7, v6, v0}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_0

    .line 237
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v6, v7, v0}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_0

    .line 241
    .end local v0    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v2    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .end local v4    # "label":Lcom/squareup/wire/Message$Label;
    .end local v6    # "tag":I
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v8, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v8, :cond_4

    move-object v1, p1

    .line 242
    check-cast v1, Lcom/squareup/wire/ExtendableMessage;

    .line 243
    .local v1, "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    iget-object v8, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v8, :cond_4

    .line 244
    iget-object v8, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, v8}, Lcom/squareup/wire/MessageAdapter;->getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I

    move-result v8

    add-int/2addr v5, v8

    .line 247
    .end local v1    # "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getUnknownFieldsSerializedSize()I

    move-result v8

    add-int/2addr v5, v8

    .line 248
    return v5
.end method

.method newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/Message$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;
    .locals 26
    .param p1, "input"    # Lcom/squareup/wire/WireInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireInput;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter;->builderType:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/Message$Builder;

    .line 530
    .local v4, "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TM;>;"
    new-instance v16, Lcom/squareup/wire/MessageAdapter$Storage;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter$Storage;-><init>(Lcom/squareup/wire/MessageAdapter$1;)V

    .line 533
    .local v16, "storage":Lcom/squareup/wire/MessageAdapter$Storage;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 534
    .local v7, "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readTag()I

    move-result v19

    .line 535
    .local v19, "tagAndType":I
    shr-int/lit8 v18, v19, 0x3

    .line 536
    .local v18, "tag":I
    invoke-static/range {v19 .. v19}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v21

    .line 537
    .local v21, "wireType":Lcom/squareup/wire/WireType;
    if-nez v18, :cond_3

    .line 539
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/wire/MessageAdapter$Storage;->getTags()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 540
    .local v17, "storedTag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/squareup/wire/TagMap;->containsKey(I)Z

    move-result v9

    .line 541
    .local v9, "hasField":Z
    if-eqz v9, :cond_1

    .line 542
    invoke-virtual/range {v16 .. v17}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 603
    .end local v4    # "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TM;>;"
    .end local v7    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v9    # "hasField":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "storage":Lcom/squareup/wire/MessageAdapter$Storage;
    .end local v17    # "storedTag":I
    .end local v18    # "tag":I
    .end local v19    # "tagAndType":I
    .end local v21    # "wireType":Lcom/squareup/wire/WireType;
    :catch_0
    move-exception v6

    .line 604
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 544
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TM;>;"
    .restart local v7    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v9    # "hasField":Z
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v16    # "storage":Lcom/squareup/wire/MessageAdapter$Storage;
    .restart local v17    # "storedTag":I
    .restart local v18    # "tag":I
    .restart local v19    # "tagAndType":I
    .restart local v21    # "wireType":Lcom/squareup/wire/WireType;
    :cond_1
    :try_start_1
    move-object v0, v4

    check-cast v0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v23

    invoke-virtual/range {v16 .. v17}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 605
    .end local v4    # "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TM;>;"
    .end local v7    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .end local v9    # "hasField":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "storage":Lcom/squareup/wire/MessageAdapter$Storage;
    .end local v17    # "storedTag":I
    .end local v18    # "tag":I
    .end local v19    # "tagAndType":I
    .end local v21    # "wireType":Lcom/squareup/wire/WireType;
    :catch_1
    move-exception v6

    .line 606
    .local v6, "e":Ljava/lang/InstantiationException;
    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 548
    .end local v6    # "e":Ljava/lang/InstantiationException;
    .restart local v4    # "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TM;>;"
    .restart local v7    # "extension":Lcom/squareup/wire/Extension;, "Lcom/squareup/wire/Extension<**>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v16    # "storage":Lcom/squareup/wire/MessageAdapter$Storage;
    .restart local v18    # "tag":I
    .restart local v19    # "tagAndType":I
    .restart local v21    # "wireType":Lcom/squareup/wire/WireType;
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object v22

    return-object v22

    .line 553
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 554
    .local v8, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    if-eqz v8, :cond_4

    .line 555
    iget-object v5, v8, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 556
    .local v5, "datatype":Lcom/squareup/wire/Message$Datatype;
    iget-object v11, v8, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 568
    .local v11, "label":Lcom/squareup/wire/Message$Label;
    :goto_2
    invoke-virtual {v11}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v22

    if-eqz v22, :cond_8

    sget-object v22, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v12

    .line 571
    .local v12, "length":I
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v14

    .line 572
    .local v14, "start":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v13

    .line 573
    .local v13, "oldLimit":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v22

    int-to-long v0, v12

    move-wide/from16 v24, v0

    add-long v24, v24, v14

    cmp-long v22, v22, v24

    if-gez v22, :cond_7

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v5}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v20

    .line 575
    .local v20, "value":Ljava/lang/Object;
    sget-object v22, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    move-object/from16 v0, v22

    if-ne v5, v0, :cond_6

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 577
    check-cast v20, Ljava/lang/Integer;

    .end local v20    # "value":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    goto :goto_3

    .line 558
    .end local v5    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v11    # "label":Lcom/squareup/wire/Message$Label;
    .end local v12    # "length":I
    .end local v13    # "oldLimit":I
    .end local v14    # "start":J
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v7

    .line 559
    if-nez v7, :cond_5

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/squareup/wire/MessageAdapter;->readUnknownField(Lcom/squareup/wire/Message$Builder;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V

    goto/16 :goto_0

    .line 563
    :cond_5
    invoke-virtual {v7}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    .line 564
    .restart local v5    # "datatype":Lcom/squareup/wire/Message$Datatype;
    invoke-virtual {v7}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v11

    .restart local v11    # "label":Lcom/squareup/wire/Message$Label;
    goto :goto_2

    .line 579
    .restart local v12    # "length":I
    .restart local v13    # "oldLimit":I
    .restart local v14    # "start":J
    .restart local v20    # "value":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 582
    .end local v20    # "value":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v22

    int-to-long v0, v12

    move-wide/from16 v24, v0

    add-long v24, v24, v14

    cmp-long v22, v22, v24

    if-eqz v22, :cond_0

    .line 584
    new-instance v22, Ljava/io/IOException;

    const-string v23, "Packed data had wrong length!"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 588
    .end local v12    # "length":I
    .end local v13    # "oldLimit":I
    .end local v14    # "start":J
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v5}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v20

    .line 589
    .restart local v20    # "value":Ljava/lang/Object;
    sget-object v22, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    move-object/from16 v0, v22

    if-ne v5, v0, :cond_9

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 591
    check-cast v20, Ljava/lang/Integer;

    .end local v20    # "value":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/squareup/wire/Message$Builder;->addVarint(IJ)V

    goto/16 :goto_0

    .line 593
    .restart local v20    # "value":Ljava/lang/Object;
    :cond_9
    invoke-virtual {v11}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 594
    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 595
    :cond_a
    if-eqz v7, :cond_b

    .line 596
    move-object v0, v4

    check-cast v0, Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage$ExtendableBuilder;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 598
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public setBuilderField(Lcom/squareup/wire/Message$Builder;ILjava/lang/Object;)V
    .locals 2
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TM;>;"
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v1, p2}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-static {v1}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$100(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method toByteArray(Lcom/squareup/wire/Message;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[B"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(Lcom/squareup/wire/Message;)I

    move-result v2

    new-array v1, v2, [B

    .line 369
    .local v1, "result":[B
    :try_start_0
    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->newInstance([B)Lcom/squareup/wire/WireOutput;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-object v1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method toString(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string/jumbo v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v4, ""

    .line 385
    .local v4, "sep":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 386
    .local v1, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    invoke-virtual {p0, p1, v1}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v5

    .line 387
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 390
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v4, ", "

    .line 392
    iget-object v6, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-boolean v6, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->redacted:Z

    if-eqz v6, :cond_1

    const-string/jumbo v5, "\u2588\u2588"

    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 396
    .end local v1    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    :cond_2
    instance-of v6, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v6, :cond_3

    move-object v0, p1

    .line 397
    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    .line 398
    .local v0, "extendableMessage":Lcom/squareup/wire/ExtendableMessage;, "Lcom/squareup/wire/ExtendableMessage<*>;"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v6, "{extensions="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Lcom/squareup/wire/ExtendableMessage;->extensionsToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .end local v0    # "extendableMessage":Lcom/squareup/wire/ExtendableMessage;, "Lcom/squareup/wire/ExtendableMessage<*>;"
    :cond_3
    const-string/jumbo v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .locals 8
    .param p2, "output"    # Lcom/squareup/wire/WireOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/squareup/wire/MessageAdapter;, "Lcom/squareup/wire/MessageAdapter<TM;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    .line 295
    .local v2, "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    invoke-virtual {p0, p1, v2}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v6

    .line 296
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 299
    iget v5, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    .line 300
    .local v5, "tag":I
    iget-object v0, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 301
    .local v0, "datatype":Lcom/squareup/wire/Message$Datatype;
    iget-object v4, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    .line 303
    .local v4, "label":Lcom/squareup/wire/Message$Label;
    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 304
    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 305
    check-cast v6, Ljava/util/List;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-direct {p0, p2, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 307
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v6, Ljava/util/List;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-direct {p0, p2, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 310
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, p2, v5, v6, v0}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    .line 314
    .end local v0    # "datatype":Lcom/squareup/wire/Message$Datatype;
    .end local v2    # "fieldInfo":Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .end local v4    # "label":Lcom/squareup/wire/Message$Label;
    .end local v5    # "tag":I
    .end local v6    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v7, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v7, :cond_4

    move-object v1, p1

    .line 315
    check-cast v1, Lcom/squareup/wire/ExtendableMessage;

    .line 316
    .local v1, "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    iget-object v7, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v7, :cond_4

    .line 317
    iget-object v7, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, p2, v7}, Lcom/squareup/wire/MessageAdapter;->writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V

    .line 320
    .end local v1    # "extendableMessage":Lcom/squareup/wire/ExtendableMessage;
    :cond_4
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->writeUnknownFieldMap(Lcom/squareup/wire/WireOutput;)V

    .line 321
    return-void
.end method
