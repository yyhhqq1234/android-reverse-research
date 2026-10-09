.class final Lcom/tencent/component/plugin/PluginReporter$Pool;
.super Ljava/lang/Object;
.source "PluginReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginReporter$Pool$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFactory:Lcom/tencent/component/plugin/PluginReporter$Pool$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/plugin/PluginReporter$Pool$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mPoolSize:I


# direct methods
.method public constructor <init>(ILcom/tencent/component/plugin/PluginReporter$Pool$Factory;)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/component/plugin/PluginReporter$Pool$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/tencent/component/plugin/PluginReporter$Pool;, "Lcom/tencent/component/plugin/PluginReporter$Pool<TT;>;"
    .local p2, "factory":Lcom/tencent/component/plugin/PluginReporter$Pool$Factory;, "Lcom/tencent/component/plugin/PluginReporter$Pool$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mPoolSize:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mList:Ljava/util/ArrayList;

    .line 50
    iput-object p2, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mFactory:Lcom/tencent/component/plugin/PluginReporter$Pool$Factory;

    .line 51
    return-void
.end method

.method private newObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/tencent/component/plugin/PluginReporter$Pool;, "Lcom/tencent/component/plugin/PluginReporter$Pool<TT;>;"
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mFactory:Lcom/tencent/component/plugin/PluginReporter$Pool$Factory;

    invoke-interface {v0}, Lcom/tencent/component/plugin/PluginReporter$Pool$Factory;->create()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/tencent/component/plugin/PluginReporter$Pool;, "Lcom/tencent/component/plugin/PluginReporter$Pool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginReporter$Pool;->newObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 54
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized recycle(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/tencent/component/plugin/PluginReporter$Pool;, "Lcom/tencent/component/plugin/PluginReporter$Pool<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mPoolSize:I

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginReporter$Pool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
