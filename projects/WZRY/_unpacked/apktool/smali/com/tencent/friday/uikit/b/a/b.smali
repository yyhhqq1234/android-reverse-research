.class public Lcom/tencent/friday/uikit/b/a/b;
.super Ljava/lang/Object;
.source "JEventManager.java"


# static fields
.field private static volatile a:Lcom/tencent/friday/uikit/b/a/b;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/friday/uikit/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/friday/uikit/b/a/b;->a:Lcom/tencent/friday/uikit/b/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/b/a/b;->b:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public static a()Lcom/tencent/friday/uikit/b/a/b;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/tencent/friday/uikit/b/a/b;->a:Lcom/tencent/friday/uikit/b/a/b;

    if-nez v0, :cond_0

    .line 33
    const-class v1, Lcom/tencent/friday/uikit/b/a/b;

    monitor-enter v1

    .line 34
    :try_start_0
    new-instance v0, Lcom/tencent/friday/uikit/b/a/b;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/b/a/b;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/b/a/b;->a:Lcom/tencent/friday/uikit/b/a/b;

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    sget-object v0, Lcom/tencent/friday/uikit/b/a/b;->a:Lcom/tencent/friday/uikit/b/a/b;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/b/a/b;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public a(ILcom/tencent/friday/uikit/b/a/a;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/friday/uikit/b/a/b;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public a(I[B)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/friday/uikit/b/a/b;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/b/a/a;

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEvent to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "method target not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-interface {v0, p2}, Lcom/tencent/friday/uikit/b/a/a;->a([B)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/friday/uikit/b/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    return-void
.end method
