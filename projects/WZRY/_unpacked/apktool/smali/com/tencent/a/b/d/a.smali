.class public final Lcom/tencent/a/b/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/a/b/d/a$a;
    }
.end annotation


# static fields
.field private static e:I


# instance fields
.field private a:Lcom/tencent/a/b/d/e;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/tencent/a/b/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/a/b/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/a/b/d/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/a/b/d/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/a/b/d/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/b/d/a;->c:Ljava/util/SortedMap;

    new-instance v0, Lcom/tencent/a/b/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/a/b/d/a$a;-><init>(Lcom/tencent/a/b/d/a;B)V

    iput-object v0, p0, Lcom/tencent/a/b/d/a;->d:Lcom/tencent/a/b/d/a$a;

    iput-object p1, p0, Lcom/tencent/a/b/d/a;->a:Lcom/tencent/a/b/d/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/tencent/a/b/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/a/b/d/a;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/a/b/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/a/a/a/h;)Lcom/tencent/a/b/e/a/c;
    .locals 3

    new-instance v0, Lcom/tencent/a/b/e/a/c;

    iget-object v1, p0, Lcom/tencent/a/b/d/a;->a:Lcom/tencent/a/b/d/e;

    invoke-direct {v0, v1, p1}, Lcom/tencent/a/b/e/a/c;-><init>(Lcom/tencent/a/b/d/e;Lcom/tencent/a/a/a/h;)V

    iget-object v1, p0, Lcom/tencent/a/b/d/a;->c:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/a/b/d/a;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/a/b/d/a;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/a/b/d/e;->a(ZZ)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/a/b/d/a;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a;

    invoke-interface {v0}, Lcom/tencent/a/b/e/a;->f()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a;

    invoke-interface {v0}, Lcom/tencent/a/b/e/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    if-le v1, v3, :cond_1

    invoke-interface {v0}, Lcom/tencent/a/b/e/a;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/tencent/a/b/e/a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a;

    instance-of v2, v0, Lcom/tencent/b/a/a/g;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/tencent/b/a/a/g;

    iget-object v2, p0, Lcom/tencent/a/b/d/a;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v2}, Lcom/tencent/a/b/d/e;->d()Lcom/tencent/b/a/a/f;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/tencent/b/a/a/g;->a(Landroid/view/MotionEvent;Lcom/tencent/b/a/a/f;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/tencent/a/a/a/d;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a;

    instance-of v3, v0, Lcom/tencent/b/a/a/g;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/tencent/b/a/a/g;

    iget-object v3, p0, Lcom/tencent/a/b/d/a;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v3}, Lcom/tencent/a/b/d/e;->d()Lcom/tencent/b/a/a/f;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/tencent/b/a/a/g;->a(Lcom/tencent/a/a/a/d;Lcom/tencent/b/a/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_1
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a;

    instance-of v3, v0, Lcom/tencent/b/a/a/g;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/tencent/b/a/a/g;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/g;->a(Lcom/tencent/a/a/a/d;)V

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final a(Lcom/tencent/a/a/a/d;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a;

    instance-of v3, v0, Lcom/tencent/b/a/a/g;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/tencent/b/a/a/g;

    iget-object v3, p0, Lcom/tencent/a/b/d/a;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v3}, Lcom/tencent/a/b/d/e;->d()Lcom/tencent/b/a/a/f;

    move-result-object v3

    invoke-virtual {v0, p1, p2, v3}, Lcom/tencent/b/a/a/g;->a(Lcom/tencent/a/a/a/d;Landroid/view/MotionEvent;Lcom/tencent/b/a/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/a/b/d/a;->a()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/d/a;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/e/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method
