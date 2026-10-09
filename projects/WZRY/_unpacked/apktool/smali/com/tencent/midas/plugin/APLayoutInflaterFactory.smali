.class public Lcom/tencent/midas/plugin/APLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "APLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final constructorArgs:[Ljava/lang/Object;

.field private final constructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final constructorSign:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorMap:Ljava/util/HashMap;

    .line 21
    new-array v0, v3, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorSign:[Ljava/lang/Class;

    .line 22
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 26
    const-string/jumbo v6, "view"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 27
    const-string v6, "class"

    invoke-interface {p4, v7, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    :cond_0
    const/4 v6, -0x1

    const/16 v8, 0x2e

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v6, v8, :cond_1

    move-object v6, v7

    .line 49
    :goto_0
    return-object v6

    .line 33
    :cond_1
    iget-object v6, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    aget-object v5, v6, v9

    check-cast v5, Landroid/content/Context;

    .line 34
    .local v5, "lastContext":Landroid/content/Context;
    iget-object v6, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    aput-object p3, v6, v9

    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    iget-object v6, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 39
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-nez v2, :cond_2

    .line 42
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v8, Landroid/view/View;

    invoke-virtual {v6, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    iget-object v6, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorSign:[Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 44
    iget-object v6, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    .line 47
    .local v0, "args":[Ljava/lang/Object;
    const/4 v6, 0x1

    aput-object p4, v0, v6

    .line 48
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v8, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    aput-object v5, v8, v9

    .line 70
    iget-object v8, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    aput-object v7, v8, v10

    goto :goto_0

    .line 50
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    new-instance v4, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": Error inflating class "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 53
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "ie":Landroid/view/InflateException;
    :catchall_0
    move-exception v6

    iget-object v8, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    aput-object v5, v8, v9

    .line 70
    iget-object v8, p0, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->constructorArgs:[Ljava/lang/Object;

    aput-object v7, v8, v10

    throw v6

    .line 54
    :catch_1
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/ClassCastException;
    :try_start_2
    new-instance v4, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": Class is not a View "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v4    # "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 58
    throw v4

    .line 59
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v4    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": Class not found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v4    # "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 63
    throw v4

    .line 64
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "ie":Landroid/view/InflateException;
    :catch_3
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": Error inflating class "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_3

    const-string v6, "<unknown>"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v4    # "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    throw v4

    .line 65
    .end local v4    # "ie":Landroid/view/InflateException;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
