.class public abstract Lio/netty/util/internal/TypeParameterMatcher;
.super Ljava/lang/Object;
.source "TypeParameterMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;
    }
.end annotation


# static fields
.field private static final NOOP:Lio/netty/util/internal/TypeParameterMatcher;

.field private static final TEST_OBJECT:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lio/netty/util/internal/NoOpTypeParameterMatcher;

    invoke-direct {v0}, Lio/netty/util/internal/NoOpTypeParameterMatcher;-><init>()V

    sput-object v0, Lio/netty/util/internal/TypeParameterMatcher;->NOOP:Lio/netty/util/internal/TypeParameterMatcher;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/TypeParameterMatcher;->TEST_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "typeParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot determine the type of the type parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "typeParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/internal/TypeParameterMatcher;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "parameterizedSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache()Ljava/util/Map;

    move-result-object v0

    .line 68
    .local v0, "findCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 70
    .local v3, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 71
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;"
    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;"
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/internal/TypeParameterMatcher;

    .line 77
    .local v2, "matcher":Lio/netty/util/internal/TypeParameterMatcher;
    if-nez v2, :cond_1

    .line 78
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/TypeParameterMatcher;->find0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v2

    .line 79
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    return-object v2
.end method

.method private static find0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 13
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "typeParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "parameterizedSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 89
    .local v6, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v6

    .line 91
    .local v3, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, p1, :cond_b

    .line 92
    const/4 v7, -0x1

    .line 93
    .local v7, "typeParamIndex":I
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    .line 94
    .local v8, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v10, v8

    if-ge v5, v10, :cond_1

    .line 95
    aget-object v10, v8, v5

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 96
    move v7, v5

    .line 101
    :cond_1
    if-gez v7, :cond_3

    .line 102
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown type parameter \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 94
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 107
    .local v4, "genericSuperType":Ljava/lang/reflect/Type;
    instance-of v10, v4, Ljava/lang/reflect/ParameterizedType;

    if-nez v10, :cond_4

    .line 108
    const-class v0, Ljava/lang/Object;

    .line 150
    .end local v4    # "genericSuperType":Ljava/lang/reflect/Type;
    .end local v5    # "i":I
    .end local v7    # "typeParamIndex":I
    .end local v8    # "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    return-object v0

    .line 111
    .restart local v4    # "genericSuperType":Ljava/lang/reflect/Type;
    .restart local v5    # "i":I
    .restart local v7    # "typeParamIndex":I
    .restart local v8    # "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .end local v4    # "genericSuperType":Ljava/lang/reflect/Type;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 113
    .local v1, "actualTypeParams":[Ljava/lang/reflect/Type;
    aget-object v0, v1, v7

    .line 114
    .local v0, "actualTypeParam":Ljava/lang/reflect/Type;
    instance-of v10, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_5

    .line 115
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "actualTypeParam":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 117
    .restart local v0    # "actualTypeParam":Ljava/lang/reflect/Type;
    :cond_5
    instance-of v10, v0, Ljava/lang/Class;

    if-eqz v10, :cond_6

    .line 118
    check-cast v0, Ljava/lang/Class;

    goto :goto_1

    .line 120
    :cond_6
    instance-of v10, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v10, :cond_8

    move-object v10, v0

    .line 121
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 122
    .local v2, "componentType":Ljava/lang/reflect/Type;
    instance-of v10, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_7

    .line 123
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 125
    .restart local v2    # "componentType":Ljava/lang/reflect/Type;
    :cond_7
    instance-of v10, v2, Ljava/lang/Class;

    if-eqz v10, :cond_8

    .line 126
    check-cast v2, Ljava/lang/Class;

    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    const/4 v10, 0x0

    invoke-static {v2, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_8
    instance-of v10, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_a

    move-object v9, v0

    .line 131
    check-cast v9, Ljava/lang/reflect/TypeVariable;

    .line 132
    .local v9, "v":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v3, v6

    .line 133
    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/Class;

    if-nez v10, :cond_9

    .line 134
    const-class v0, Ljava/lang/Object;

    goto :goto_1

    .line 137
    :cond_9
    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p1

    .end local p1    # "parameterizedSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast p1, Ljava/lang/Class;

    .line 138
    .restart local p1    # "parameterizedSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 142
    const-class v0, Ljava/lang/Object;

    goto :goto_1

    .line 146
    .end local v9    # "v":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_a
    invoke-static {v6, p2}, Lio/netty/util/internal/TypeParameterMatcher;->fail(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 148
    .end local v0    # "actualTypeParam":Ljava/lang/reflect/Type;
    .end local v1    # "actualTypeParams":[Ljava/lang/reflect/Type;
    .end local v5    # "i":I
    .end local v7    # "typeParamIndex":I
    .end local v8    # "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 149
    if-nez v3, :cond_0

    .line 150
    invoke-static {v6, p2}, Lio/netty/util/internal/TypeParameterMatcher;->fail(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/netty/util/internal/TypeParameterMatcher;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache()Ljava/util/Map;

    move-result-object v1

    .line 36
    .local v1, "getCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lio/netty/util/internal/TypeParameterMatcher;>;"
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/internal/TypeParameterMatcher;

    .line 37
    .local v2, "matcher":Lio/netty/util/internal/TypeParameterMatcher;
    if-nez v2, :cond_2

    .line 38
    const-class v3, Ljava/lang/Object;

    if-ne p0, v3, :cond_3

    .line 39
    sget-object v2, Lio/netty/util/internal/TypeParameterMatcher;->NOOP:Lio/netty/util/internal/TypeParameterMatcher;

    .line 53
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 54
    new-instance v2, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;

    .end local v2    # "matcher":Lio/netty/util/internal/TypeParameterMatcher;
    invoke-direct {v2, p0}, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;-><init>(Ljava/lang/Class;)V

    .line 57
    .restart local v2    # "matcher":Lio/netty/util/internal/TypeParameterMatcher;
    :cond_1
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    return-object v2

    .line 40
    :cond_3
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasJavassist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    :try_start_0
    invoke-static {p0}, Lio/netty/util/internal/JavassistTypeParameterMatcherGenerator;->generate(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v2

    .line 43
    sget-object v3, Lio/netty/util/internal/TypeParameterMatcher;->TEST_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalAccessError;
    const/4 v2, 0x0

    .line 50
    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/lang/IllegalAccessError;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract match(Ljava/lang/Object;)Z
.end method
