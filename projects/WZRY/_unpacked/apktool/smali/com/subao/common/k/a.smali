.class public Lcom/subao/common/k/a;
.super Ljava/lang/Object;
.source "CellularOperator.java"

# interfaces
.implements Lcom/subao/common/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/k/a$b;,
        Lcom/subao/common/k/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/k/a$b;

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/subao/common/k/a$a;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/subao/common/k/a$b;

    invoke-direct {v0, p1}, Lcom/subao/common/k/a$b;-><init>(Lcom/subao/common/k/a$a;)V

    iput-object v0, p0, Lcom/subao/common/k/a;->a:Lcom/subao/common/k/a$b;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/subao/common/k/a$a;)Lcom/subao/common/k/a;
    .locals 3

    .prologue
    .line 47
    invoke-static {p0}, Lcom/subao/common/k/b;->a(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/subao/common/k/a;

    invoke-direct {v0, p1}, Lcom/subao/common/k/a;-><init>(Lcom/subao/common/k/a$a;)V

    .line 49
    sget-object v1, Lcom/subao/common/k/b$e;->a:Lcom/subao/common/k/b$e;

    iget-object v2, v0, Lcom/subao/common/k/a;->a:Lcom/subao/common/k/a$b;

    invoke-static {v1, v2}, Lcom/subao/common/k/b;->a(Lcom/subao/common/k/b$e;Lcom/subao/common/k/b$a;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/subao/common/k/a;->b:Ljava/lang/Object;

    .line 51
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/subao/common/k/a;->a:Lcom/subao/common/k/a$b;

    invoke-virtual {v0, p1}, Lcom/subao/common/k/a$b;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/k/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/subao/common/k/a;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/subao/common/k/b;->a(Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subao/common/k/a;->b:Ljava/lang/Object;

    .line 61
    :cond_0
    monitor-exit p0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
