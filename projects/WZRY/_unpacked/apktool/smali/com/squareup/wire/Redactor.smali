.class public Lcom/squareup/wire/Redactor;
.super Ljava/lang/Object;
.source "Redactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Redactor$FutureRedactor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NOOP_REDACTOR:Lcom/squareup/wire/Redactor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/Redactor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final redactors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Lcom/squareup/wire/Redactor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private final messageFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final messageRedactors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/Redactor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final redactedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    new-instance v0, Lcom/squareup/wire/Redactor$1;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/squareup/wire/Redactor$1;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/squareup/wire/Redactor;->NOOP_REDACTOR:Lcom/squareup/wire/Redactor;

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/Redactor",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    .local p1, "builderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "redactedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p3, "messageFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p4, "messageRedactors":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/Redactor<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/squareup/wire/Redactor;->builderConstructor:Ljava/lang/reflect/Constructor;

    .line 32
    iput-object p2, p0, Lcom/squareup/wire/Redactor;->redactedFields:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/squareup/wire/Redactor;->messageFields:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/squareup/wire/Redactor;->messageRedactors:Ljava/util/List;

    .line 35
    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/Class;)Lcom/squareup/wire/Redactor;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Redactor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v20, Lcom/squareup/wire/Redactor;

    monitor-enter v20

    :try_start_0
    sget-object v19, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/wire/Redactor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .local v8, "existingRedactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    if-eqz v8, :cond_0

    .line 94
    .end local v8    # "existingRedactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    :goto_0
    monitor-exit v20

    return-object v8

    .line 48
    .restart local v8    # "existingRedactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    :cond_0
    :try_start_1
    new-instance v11, Lcom/squareup/wire/Redactor$FutureRedactor;

    invoke-direct {v11}, Lcom/squareup/wire/Redactor$FutureRedactor;-><init>()V

    .line 49
    .local v11, "futureRedactor":Lcom/squareup/wire/Redactor$FutureRedactor;, "Lcom/squareup/wire/Redactor$FutureRedactor<TT;>;"
    sget-object v19, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "$Builder"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 53
    .local v5, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v17, "redactedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v15, "messageFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v16, "messageRedactors":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/Redactor<*>;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/reflect/Field;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_5

    aget-object v14, v4, v12

    .line 58
    .local v14, "messageField":Ljava/lang/reflect/Field;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 57
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 61
    :cond_2
    const-class v19, Lcom/squareup/wire/ProtoField;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/squareup/wire/ProtoField;

    .line 62
    .local v3, "annotation":Lcom/squareup/wire/ProtoField;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/squareup/wire/ProtoField;->redacted()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 63
    invoke-interface {v3}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v19

    sget-object v21, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 64
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v21, "Field %s is REQUIRED and cannot be redacted."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v3    # "annotation":Lcom/squareup/wire/ProtoField;
    .end local v4    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "messageField":Ljava/lang/reflect/Field;
    .end local v15    # "messageFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v16    # "messageRedactors":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/Redactor<*>;>;"
    .end local v17    # "redactedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "existingRedactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    .end local v11    # "futureRedactor":Lcom/squareup/wire/Redactor$FutureRedactor;, "Lcom/squareup/wire/Redactor$FutureRedactor<TT;>;"
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 68
    .restart local v3    # "annotation":Lcom/squareup/wire/ProtoField;
    .restart local v4    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v5    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "existingRedactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    .restart local v11    # "futureRedactor":Lcom/squareup/wire/Redactor$FutureRedactor;, "Lcom/squareup/wire/Redactor$FutureRedactor<TT;>;"
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "messageField":Ljava/lang/reflect/Field;
    .restart local v15    # "messageFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v16    # "messageRedactors":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/Redactor<*>;>;"
    .restart local v17    # "redactedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_3
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 97
    .end local v3    # "annotation":Lcom/squareup/wire/ProtoField;
    .end local v4    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "messageField":Ljava/lang/reflect/Field;
    .end local v15    # "messageFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v16    # "messageRedactors":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/Redactor<*>;>;"
    .end local v17    # "redactedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :catch_1
    move-exception v7

    .line 98
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v19, Ljava/lang/AssertionError;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "annotation":Lcom/squareup/wire/ProtoField;
    .restart local v4    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v5    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "messageField":Ljava/lang/reflect/Field;
    .restart local v15    # "messageFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v16    # "messageRedactors":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/wire/Redactor<*>;>;"
    .restart local v17    # "redactedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_4
    :try_start_6
    const-class v19, Lcom/squareup/wire/Message;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 71
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 72
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/squareup/wire/Redactor;->get(Ljava/lang/Class;)Lcom/squareup/wire/Redactor;

    move-result-object v10

    .line 75
    .local v10, "fieldRedactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<*>;"
    sget-object v19, Lcom/squareup/wire/Redactor;->NOOP_REDACTOR:Lcom/squareup/wire/Redactor;

    move-object/from16 v0, v19

    if-eq v10, v0, :cond_1

    .line 77
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 83
    .end local v3    # "annotation":Lcom/squareup/wire/ProtoField;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldRedactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<*>;"
    .end local v14    # "messageField":Ljava/lang/reflect/Field;
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 84
    sget-object v18, Lcom/squareup/wire/Redactor;->NOOP_REDACTOR:Lcom/squareup/wire/Redactor;

    .line 91
    .local v18, "redactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/squareup/wire/Redactor$FutureRedactor;->setDelegate(Lcom/squareup/wire/Redactor;)V

    .line 92
    sget-object v19, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v18

    .line 94
    goto/16 :goto_0

    .line 86
    .end local v18    # "redactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-object p0, v19, v21

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 87
    .local v6, "builderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v18, Lcom/squareup/wire/Redactor;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v6, v1, v15, v2}, Lcom/squareup/wire/Redactor;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v18    # "redactor":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    goto :goto_3
.end method


# virtual methods
.method public redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<TT;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TT;"
    const/4 v6, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-object v6

    .line 112
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/squareup/wire/Redactor;->builderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    .line 114
    .local v0, "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    iget-object v6, p0, Lcom/squareup/wire/Redactor;->redactedFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 115
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    .end local v0    # "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "builder":Lcom/squareup/wire/Message$Builder;, "Lcom/squareup/wire/Message$Builder<TT;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/squareup/wire/Redactor;->messageFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 119
    iget-object v6, p0, Lcom/squareup/wire/Redactor;->messageFields:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 120
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    iget-object v6, p0, Lcom/squareup/wire/Redactor;->messageRedactors:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/wire/Redactor;

    .line 121
    .local v5, "r":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<Lcom/squareup/wire/Message;>;"
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/wire/Message;

    invoke-virtual {v5, v6}, Lcom/squareup/wire/Redactor;->redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 124
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "r":Lcom/squareup/wire/Redactor;, "Lcom/squareup/wire/Redactor<Lcom/squareup/wire/Message;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0
.end method
