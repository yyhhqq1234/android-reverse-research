.class public Lcom/tencent/friday/uikit/c/b;
.super Ljava/lang/Object;
.source "MsgCenter.java"

# interfaces
.implements Lcom/tencent/friday/uikit/c/a;


# static fields
.field private static volatile a:Lcom/tencent/friday/uikit/c/b;


# instance fields
.field private b:Lcom/tencent/friday/uikit/c/c;

.field private c:Lcom/tencent/friday/uikit/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/friday/uikit/c/b;->a:Lcom/tencent/friday/uikit/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/friday/uikit/c/d;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/c/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/c/b;->c:Lcom/tencent/friday/uikit/c/d;

    .line 29
    new-instance v0, Lcom/tencent/friday/uikit/c/c;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/c/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/c/b;->b:Lcom/tencent/friday/uikit/c/c;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/c/b;)Lcom/tencent/friday/uikit/c/c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/b;->b:Lcom/tencent/friday/uikit/c/c;

    return-object v0
.end method

.method public static b()Lcom/tencent/friday/uikit/c/b;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/tencent/friday/uikit/c/b;->a:Lcom/tencent/friday/uikit/c/b;

    if-nez v0, :cond_0

    .line 39
    const-class v1, Lcom/tencent/friday/uikit/c/b;

    monitor-enter v1

    .line 40
    :try_start_0
    new-instance v0, Lcom/tencent/friday/uikit/c/b;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/c/b;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/c/b;->a:Lcom/tencent/friday/uikit/c/b;

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    sget-object v0, Lcom/tencent/friday/uikit/c/b;->a:Lcom/tencent/friday/uikit/c/b;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/b;->c:Lcom/tencent/friday/uikit/c/d;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/c/d;->a()V

    .line 81
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/b;->b:Lcom/tencent/friday/uikit/c/c;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/c/c;->a()V

    .line 82
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/b;->c:Lcom/tencent/friday/uikit/c/d;

    invoke-virtual {v0, p1}, Lcom/tencent/friday/uikit/c/d;->a(I)V

    .line 99
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/b;->c:Lcom/tencent/friday/uikit/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/friday/uikit/c/d;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 92
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/IFridayCallBack;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/friday/uikit/c/b;->c:Lcom/tencent/friday/uikit/c/d;

    invoke-virtual {v0, p1}, Lcom/tencent/friday/uikit/c/d;->a(Lcom/tencent/friday/uikit/IFridayCallBack;)V

    .line 72
    return-void
.end method

.method public declared-synchronized a([B[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/friday/uikit/d/c;->b()Lcom/tencent/friday/uikit/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/c;->e()Landroid/app/Activity;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    const-string v0, "activity has detached"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit p0

    return-object v2

    .line 60
    :cond_0
    :try_start_1
    new-instance v1, Lcom/tencent/friday/uikit/c/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/friday/uikit/c/b$1;-><init>(Lcom/tencent/friday/uikit/c/b;[B[B)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
