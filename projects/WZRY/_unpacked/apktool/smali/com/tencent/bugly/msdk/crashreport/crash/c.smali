.class public final Lcom/tencent/bugly/msdk/crashreport/crash/c;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:I

.field public static b:Z

.field public static c:I

.field public static d:Z

.field public static e:I

.field public static f:I

.field public static g:J

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Ljava/lang/String;

.field public static k:I

.field public static l:Z

.field public static m:Z

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field private static r:Lcom/tencent/bugly/msdk/crashreport/crash/c;


# instance fields
.field public final p:Lcom/tencent/bugly/msdk/crashreport/crash/b;

.field private final q:Landroid/content/Context;

.field private final s:Lcom/tencent/bugly/msdk/crashreport/crash/e;

.field private final t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

.field private u:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

.field private v:Lcom/tencent/bugly/msdk/proguard/w;

.field private final w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

.field private x:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v1, 0x5000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    sput v2, Lcom/tencent/bugly/msdk/crashreport/crash/c;->a:I

    .line 36
    sput-boolean v2, Lcom/tencent/bugly/msdk/crashreport/crash/c;->b:Z

    .line 46
    const/4 v0, 0x2

    sput v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->c:I

    .line 47
    sput-boolean v4, Lcom/tencent/bugly/msdk/crashreport/crash/c;->d:Z

    .line 48
    sput v1, Lcom/tencent/bugly/msdk/crashreport/crash/c;->e:I

    .line 49
    sput v1, Lcom/tencent/bugly/msdk/crashreport/crash/c;->f:I

    .line 50
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->g:J

    .line 51
    sput-object v3, Lcom/tencent/bugly/msdk/crashreport/crash/c;->h:Ljava/lang/String;

    .line 52
    sput-boolean v2, Lcom/tencent/bugly/msdk/crashreport/crash/c;->i:Z

    .line 53
    sput-object v3, Lcom/tencent/bugly/msdk/crashreport/crash/c;->j:Ljava/lang/String;

    .line 54
    const/16 v0, 0x1388

    sput v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->k:I

    .line 55
    sput-boolean v4, Lcom/tencent/bugly/msdk/crashreport/crash/c;->l:Z

    .line 56
    sput-boolean v2, Lcom/tencent/bugly/msdk/crashreport/crash/c;->m:Z

    .line 64
    sput-object v3, Lcom/tencent/bugly/msdk/crashreport/crash/c;->n:Ljava/lang/String;

    .line 66
    sput-object v3, Lcom/tencent/bugly/msdk/crashreport/crash/c;->o:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/msdk/proguard/w;ZLcom/tencent/bugly/msdk/BuglyStrategy$a;Lcom/tencent/bugly/msdk/proguard/o;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sput p1, Lcom/tencent/bugly/msdk/crashreport/crash/c;->a:I

    .line 96
    invoke-static {p2}, Lcom/tencent/bugly/msdk/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 97
    iput-object v2, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->q:Landroid/content/Context;

    .line 98
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->u:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    .line 99
    iput-object p3, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->v:Lcom/tencent/bugly/msdk/proguard/w;

    .line 100
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/u;->a()Lcom/tencent/bugly/msdk/proguard/u;

    move-result-object v3

    .line 103
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v4

    .line 104
    new-instance v0, Lcom/tencent/bugly/msdk/crashreport/crash/b;

    iget-object v5, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->u:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    move v1, p1

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/msdk/crashreport/crash/b;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/msdk/proguard/u;Lcom/tencent/bugly/msdk/proguard/p;Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;Lcom/tencent/bugly/msdk/BuglyStrategy$a;Lcom/tencent/bugly/msdk/proguard/o;)V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->p:Lcom/tencent/bugly/msdk/crashreport/crash/b;

    .line 106
    invoke-static {v2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v3

    .line 107
    new-instance v0, Lcom/tencent/bugly/msdk/crashreport/crash/e;

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->p:Lcom/tencent/bugly/msdk/crashreport/crash/b;

    iget-object v4, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->u:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/tencent/bugly/msdk/crashreport/crash/e;-><init>(Landroid/content/Context;Lcom/tencent/bugly/msdk/crashreport/crash/b;Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;Lcom/tencent/bugly/msdk/crashreport/common/info/a;)V

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->s:Lcom/tencent/bugly/msdk/crashreport/crash/e;

    .line 108
    iget-object v4, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->p:Lcom/tencent/bugly/msdk/crashreport/crash/b;

    iget-object v5, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->u:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/msdk/crashreport/common/info/a;Lcom/tencent/bugly/msdk/crashreport/crash/b;Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;Lcom/tencent/bugly/msdk/proguard/w;ZLjava/lang/String;)Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    .line 110
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    iput-object v0, v3, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->D:Lcom/tencent/bugly/msdk/crashreport/a;

    .line 111
    new-instance v4, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    iget-object v6, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->u:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    iget-object v9, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->p:Lcom/tencent/bugly/msdk/crashreport/crash/b;

    move-object v5, v2

    move-object v7, v3

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;-><init>(Landroid/content/Context;Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;Lcom/tencent/bugly/msdk/crashreport/common/info/a;Lcom/tencent/bugly/msdk/proguard/w;Lcom/tencent/bugly/msdk/crashreport/crash/b;)V

    iput-object v4, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    .line 113
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/msdk/crashreport/crash/c;
    .locals 2

    .prologue
    .line 149
    const-class v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/msdk/crashreport/crash/c;->r:Lcom/tencent/bugly/msdk/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(ILandroid/content/Context;ZLcom/tencent/bugly/msdk/BuglyStrategy$a;Lcom/tencent/bugly/msdk/proguard/o;Ljava/lang/String;)Lcom/tencent/bugly/msdk/crashreport/crash/c;
    .locals 9

    .prologue
    .line 129
    const-class v8, Lcom/tencent/bugly/msdk/crashreport/crash/c;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->r:Lcom/tencent/bugly/msdk/crashreport/crash/c;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;

    const/16 v1, 0x3ec

    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/w;->a()Lcom/tencent/bugly/msdk/proguard/w;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/msdk/crashreport/crash/c;-><init>(ILandroid/content/Context;Lcom/tencent/bugly/msdk/proguard/w;ZLcom/tencent/bugly/msdk/BuglyStrategy$a;Lcom/tencent/bugly/msdk/proguard/o;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->r:Lcom/tencent/bugly/msdk/crashreport/crash/c;

    .line 133
    :cond_0
    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->r:Lcom/tencent/bugly/msdk/crashreport/crash/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/msdk/crashreport/crash/c;)Lcom/tencent/bugly/msdk/crashreport/crash/e;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->s:Lcom/tencent/bugly/msdk/crashreport/crash/e;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/bugly/msdk/crashreport/crash/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->q:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/w;->a()Lcom/tencent/bugly/msdk/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/msdk/crashreport/crash/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/msdk/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/msdk/crashreport/crash/c;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/msdk/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 356
    return-void
.end method

.method public final a(Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->s:Lcom/tencent/bugly/msdk/crashreport/crash/e;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/crash/e;->a(Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;)V

    .line 162
    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/w;->a()Lcom/tencent/bugly/msdk/proguard/w;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/msdk/crashreport/crash/c$2;

    invoke-direct {v3, p0}, Lcom/tencent/bugly/msdk/crashreport/crash/c$2;-><init>(Lcom/tencent/bugly/msdk/crashreport/crash/c;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/msdk/proguard/w;->a(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method

.method public final a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->p:Lcom/tencent/bugly/msdk/crashreport/crash/b;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->d(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V

    .line 319
    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 295
    iget-object v8, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->v:Lcom/tencent/bugly/msdk/proguard/w;

    new-instance v0, Lcom/tencent/bugly/msdk/crashreport/crash/c$1;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/msdk/crashreport/crash/c$1;-><init>(Lcom/tencent/bugly/msdk/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V

    invoke-virtual {v8, v0}, Lcom/tencent/bugly/msdk/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public final declared-synchronized a(ZZZ)V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->checkUploadRecordCrash(J)V

    .line 388
    return-void
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 169
    iget-object v2, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->x:Ljava/lang/Boolean;

    .line 170
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->b()Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/msdk/proguard/p;->a(I)Ljava/util/List;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/proguard/r;

    .line 180
    iget-object v5, v0, Lcom/tencent/bugly/msdk/proguard/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->x:Ljava/lang/Boolean;

    .line 182
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 187
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/util/List;)V

    :cond_3
    move v0, v1

    .line 189
    goto :goto_0

    .line 192
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->x:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->s:Lcom/tencent/bugly/msdk/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/e;->a()V

    .line 201
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 202
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->s:Lcom/tencent/bugly/msdk/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/e;->b()V

    .line 212
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 213
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->s:Lcom/tencent/bugly/msdk/crashreport/crash/e;

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/e;->a()V

    .line 230
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 237
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->t:Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    .line 244
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;->a(Z)V

    .line 252
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;->a(Z)V

    .line 259
    return-void
.end method

.method public final declared-synchronized j()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    :try_start_1
    const-string/jumbo v0, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Lcom/tencent/bugly/msdk/proguard/z;->b(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->w:Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/anr/b;->a()Z

    move-result v0

    return v0
.end method
