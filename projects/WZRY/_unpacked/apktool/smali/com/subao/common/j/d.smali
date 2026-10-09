.class public final Lcom/subao/common/j/d;
.super Ljava/lang/Object;
.source "IPInfoQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/d$g;,
        Lcom/subao/common/j/d$f;,
        Lcom/subao/common/j/d$c;,
        Lcom/subao/common/j/d$d;,
        Lcom/subao/common/j/d$b;,
        Lcom/subao/common/j/d$e;,
        Lcom/subao/common/j/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/j/d$c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static b:Lcom/subao/common/j/d$e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final c:Lcom/subao/common/m/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/subao/common/j/d$f;

    invoke-direct {v0}, Lcom/subao/common/j/d$f;-><init>()V

    sput-object v0, Lcom/subao/common/j/d;->b:Lcom/subao/common/j/d$e;

    .line 50
    new-instance v0, Lcom/subao/common/m/c;

    invoke-direct {v0}, Lcom/subao/common/m/c;-><init>()V

    sput-object v0, Lcom/subao/common/j/d;->c:Lcom/subao/common/m/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/common/j/d;->a(Lcom/subao/common/j/d$c;)V

    .line 57
    return-void
.end method

.method static declared-synchronized a(Lcom/subao/common/j/d$c;)V
    .locals 2
    .param p0    # Lcom/subao/common/j/d$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    const-class v0, Lcom/subao/common/j/d;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/subao/common/j/d;->a:Lcom/subao/common/j/d$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/subao/common/j/d;->a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;Lcom/subao/common/j/d$e;)V

    .line 104
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;Lcom/subao/common/e/al;)V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/subao/common/j/d$g;

    invoke-direct {v0, p3}, Lcom/subao/common/j/d$g;-><init>(Lcom/subao/common/e/al;)V

    invoke-static {p0, p1, p2, v0}, Lcom/subao/common/j/d;->a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;Lcom/subao/common/j/d$e;)V

    .line 120
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;Lcom/subao/common/j/d$e;)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/subao/common/j/d$b;

    invoke-direct {v0, p1, p2}, Lcom/subao/common/j/d$b;-><init>(Lcom/subao/common/j/d$a;Ljava/lang/Object;)V

    .line 136
    new-instance v1, Lcom/subao/common/j/d$d;

    invoke-direct {v1, p3, p0, v0}, Lcom/subao/common/j/d$d;-><init>(Lcom/subao/common/j/d$e;Ljava/lang/String;Lcom/subao/common/j/d$b;)V

    .line 137
    sget-object v0, Lcom/subao/common/j/d;->c:Lcom/subao/common/m/c;

    invoke-virtual {v0, v1}, Lcom/subao/common/m/c;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public static a(ZLcom/subao/common/e/al;)V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/subao/common/j/d;->b:Lcom/subao/common/j/d$e;

    invoke-interface {v0}, Lcom/subao/common/j/d$e;->a()Z

    move-result v0

    .line 81
    if-eqz p0, :cond_1

    .line 82
    new-instance v1, Lcom/subao/common/j/d$g;

    invoke-direct {v1, p1}, Lcom/subao/common/j/d$g;-><init>(Lcom/subao/common/e/al;)V

    sput-object v1, Lcom/subao/common/j/d;->b:Lcom/subao/common/j/d$e;

    .line 83
    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/subao/common/j/d;->a()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Lcom/subao/common/j/d$f;

    invoke-direct {v0}, Lcom/subao/common/j/d$f;-><init>()V

    sput-object v0, Lcom/subao/common/j/d;->b:Lcom/subao/common/j/d$e;

    goto :goto_0
.end method

.method public static declared-synchronized b()Lcom/subao/common/j/d$c;
    .locals 5

    .prologue
    .line 61
    const-class v1, Lcom/subao/common/j/d;

    monitor-enter v1

    :try_start_0
    const-class v2, Lcom/subao/common/j/d;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    sget-object v0, Lcom/subao/common/j/d;->a:Lcom/subao/common/j/d$c;

    .line 63
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    const-string v2, "SubaoNet"

    invoke-static {v2}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "SubaoNet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMyInfo(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :cond_0
    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/subao/common/j/d;->b()Lcom/subao/common/j/d$c;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/subao/common/j/d$c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/subao/common/j/d$c;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d()Lcom/subao/common/j/d$e;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/subao/common/j/d;->b:Lcom/subao/common/j/d$e;

    return-object v0
.end method
