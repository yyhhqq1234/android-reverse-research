.class public final Lcom/google/tango/loader/ObjectWrapper;
.super Lcom/google/tango/loader/IObjectWrapper$Stub;
.source "ObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/tango/loader/IObjectWrapper$Stub;"
    }
.end annotation


# instance fields
.field private final wrappedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/google/tango/loader/ObjectWrapper;, "Lcom/google/tango/loader/ObjectWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/google/tango/loader/IObjectWrapper$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/tango/loader/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static unwrap(Lcom/google/tango/loader/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p0, "remote"    # Lcom/google/tango/loader/IObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tango/loader/IObjectWrapper;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x1

    .line 54
    instance-of v6, p0, Lcom/google/tango/loader/ObjectWrapper;

    if-eqz v6, :cond_0

    .line 55
    check-cast p0, Lcom/google/tango/loader/ObjectWrapper;

    .end local p0    # "remote":Lcom/google/tango/loader/IObjectWrapper;
    iget-object v6, p0, Lcom/google/tango/loader/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    .line 77
    :goto_0
    return-object v6

    .line 57
    .restart local p0    # "remote":Lcom/google/tango/loader/IObjectWrapper;
    :cond_0
    if-nez p0, :cond_1

    .line 58
    const/4 v6, 0x0

    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {p0}, Lcom/google/tango/loader/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 66
    .local v3, "remoteBinder":Landroid/os/IBinder;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 67
    .local v4, "remoteClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    .local v0, "allFields":[Ljava/lang/reflect/Field;
    array-length v6, v0

    if-ne v6, v7, :cond_4

    .line 69
    const/4 v6, 0x0

    aget-object v2, v0, v6

    .line 70
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_3

    .line 71
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 74
    .local v5, "wrappedObject":Ljava/lang/Object;
    invoke-virtual {p1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 75
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "remoteBinder is the wrong class."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    .end local v5    # "wrappedObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Binder object is null."

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 77
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "wrappedObject":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    goto :goto_0

    .line 80
    .end local v5    # "wrappedObject":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "remoteBinder is the wrong class."

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 82
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Could not access the field in remoteBinder."

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 86
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 93
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/google/tango/loader/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/tango/loader/IObjectWrapper;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/tango/loader/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/google/tango/loader/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
