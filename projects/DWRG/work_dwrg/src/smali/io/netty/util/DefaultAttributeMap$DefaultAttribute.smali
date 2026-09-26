.class final Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lio/netty/util/Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/DefaultAttributeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<TT;>;",
        "Lio/netty/util/Attribute",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x24ef3b9fc599cf83L


# instance fields
.field private final head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute",
            "<*>;"
        }
    .end annotation
.end field

.field private final key:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey",
            "<TT;>;"
        }
    .end annotation
.end field

.field private next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute",
            "<*>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile removed:Z


# direct methods
.method constructor <init>(Lio/netty/util/AttributeKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/AttributeKey",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 127
    iput-object p0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 128
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    .line 129
    return-void
.end method

.method constructor <init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute",
            "<*>;",
            "Lio/netty/util/AttributeKey",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p1, "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    .local p2, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 122
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 123
    iput-object p2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    .line 124
    return-void
.end method

.method static synthetic access$0(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->removed:Z

    return v0
.end method

.method static synthetic access$1(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method static synthetic access$2(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-object v0
.end method

.method static synthetic access$3(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-void
.end method

.method static synthetic access$4(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-void
.end method

.method private remove0()V
    .locals 3

    .prologue
    .line 163
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->head:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    iget-object v2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    iput-object v2, v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 172
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->next:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    iget-object v2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    iput-object v2, v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->prev:Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 163
    :cond_0
    monitor-exit v1

    .line 177
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAndRemove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->removed:Z

    .line 150
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "oldValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->remove0()V

    .line 152
    return-object v0
.end method

.method public key()Lio/netty/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->removed:Z

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->set(Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->remove0()V

    .line 160
    return-void
.end method

.method public setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 138
    :cond_0
    invoke-virtual {p0, v1, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->get()Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "old":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    goto :goto_0
.end method
