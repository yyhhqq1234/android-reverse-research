.class public Lcom/tencent/android/tpush/stat/b/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static h:Lcom/tencent/android/tpush/stat/b/i;


# instance fields
.field a:Ljava/util/Map;

.field b:Lcom/tencent/android/tpush/stat/b/d;

.field c:Ljava/util/Map;

.field d:Z

.field private e:Ljava/util/Map;

.field private f:Landroid/content/Context;

.field private g:Lcom/tencent/android/tpush/stat/a/f;

.field private i:Lcom/tencent/android/tpush/stat/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/stat/b/i;->h:Lcom/tencent/android/tpush/stat/b/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    .line 34
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    .line 35
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->b()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->g:Lcom/tencent/android/tpush/stat/a/f;

    .line 63
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->a:Ljava/util/Map;

    .line 79
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->b:Lcom/tencent/android/tpush/stat/b/d;

    .line 175
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->c:Ljava/util/Map;

    .line 204
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    .line 214
    iput-boolean v2, p0, Lcom/tencent/android/tpush/stat/b/i;->d:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    .line 41
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/g;

    invoke-direct {v2, p1, v3}, Lcom/tencent/android/tpush/stat/b/g;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/b;

    invoke-direct {v2, p1, v3}, Lcom/tencent/android/tpush/stat/b/b;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/f;

    invoke-direct {v2, p1, v3}, Lcom/tencent/android/tpush/stat/b/f;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private a(ILjava/util/Map;)Lcom/tencent/android/tpush/stat/b/d;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/stat/b/h;

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/h;->g()Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/b/i;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/tencent/android/tpush/stat/b/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/b/i;->h:Lcom/tencent/android/tpush/stat/b/i;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/tencent/android/tpush/stat/b/i;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/stat/b/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/stat/b/i;->h:Lcom/tencent/android/tpush/stat/b/i;

    .line 55
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/stat/b/i;->h:Lcom/tencent/android/tpush/stat/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Ljava/util/Map;
    .locals 5

    .prologue
    const v4, 0xf4241

    .line 66
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->a:Ljava/util/Map;

    .line 68
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/g;

    iget-object v3, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/android/tpush/stat/b/g;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/b;

    iget-object v3, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/android/tpush/stat/b/b;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->a:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/f;

    iget-object v3, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/android/tpush/stat/b/f;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->a:Ljava/util/Map;

    return-object v0
.end method

.method private f()Ljava/util/Map;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->c:Ljava/util/Map;

    .line 180
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/g;

    iget-object v3, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/android/tpush/stat/b/g;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/b;

    iget-object v3, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/android/tpush/stat/b/b;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->c:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/stat/b/f;

    iget-object v3, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/android/tpush/stat/b/f;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tencent/android/tpush/stat/b/d;
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/b/i;->e()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/stat/b/i;->a(ILjava/util/Map;)Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/tencent/android/tpush/stat/b/d;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/stat/b/i;->a(Lcom/tencent/android/tpush/stat/b/d;Z)V

    .line 101
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/stat/b/d;Z)V
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/b/d;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/android/tpush/stat/b/d;->a(J)V

    .line 108
    :cond_0
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeNewVersionMidEntity midEntity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/b/i;->e()Ljava/util/Map;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeMidEntity new ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/stat/b/h;

    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/stat/b/h;->a(Lcom/tencent/android/tpush/stat/b/d;)V

    goto :goto_0

    .line 114
    :cond_1
    if-eqz p2, :cond_2

    .line 115
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_2
    return-void
.end method

.method public b()Lcom/tencent/android/tpush/stat/b/d;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->a(Lcom/tencent/android/tpush/stat/b/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/i;->a()Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    .line 230
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/i;->d()Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->a(Lcom/tencent/android/tpush/stat/b/d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    new-instance v1, Lcom/tencent/android/tpush/stat/b/d;

    invoke-direct {v1}, Lcom/tencent/android/tpush/stat/b/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    .line 252
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/b/d;->b(Ljava/lang/String;)V

    .line 255
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/android/tpush/stat/b/i;->d:Z

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->g:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "firstRead"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/i;->d()Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/stat/b/i;->c(Lcom/tencent/android/tpush/stat/b/d;)V

    .line 261
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/stat/b/i;->d:Z

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->i:Lcom/tencent/android/tpush/stat/b/d;

    :goto_0
    return-object v0

    :cond_6
    new-instance v0, Lcom/tencent/android/tpush/stat/b/d;

    invoke-direct {v0}, Lcom/tencent/android/tpush/stat/b/d;-><init>()V

    goto :goto_0
.end method

.method public b(Lcom/tencent/android/tpush/stat/b/d;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/stat/b/i;->b(Lcom/tencent/android/tpush/stat/b/d;Z)V

    .line 122
    return-void
.end method

.method public b(Lcom/tencent/android/tpush/stat/b/d;Z)V
    .locals 5

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/b/d;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/android/tpush/stat/b/d;->a(J)V

    .line 129
    :cond_0
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeOldVersionMidEntity midEntity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/b/i;->f()Ljava/util/Map;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeMidEntity old ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/stat/b/h;

    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/stat/b/h;->a(Lcom/tencent/android/tpush/stat/b/d;)V

    goto :goto_0

    .line 136
    :cond_1
    if-eqz p2, :cond_2

    .line 137
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/i;->a()Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/d;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/i;->d()Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    .line 293
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/d;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 294
    :cond_2
    const-string v0, ""

    .line 296
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/b/d;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/tencent/android/tpush/stat/b/d;)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/stat/b/h;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/stat/b/h;->a(Lcom/tencent/android/tpush/stat/b/d;)V

    .line 275
    :cond_0
    return-void
.end method

.method public d()Lcom/tencent/android/tpush/stat/b/d;
    .locals 2

    .prologue
    .line 300
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/b/i;->e:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/stat/b/i;->a(ILjava/util/Map;)Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/tencent/android/tpush/stat/b/d;)V
    .locals 3

    .prologue
    .line 370
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeMidEntity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/b/i;->a(Lcom/tencent/android/tpush/stat/b/d;)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/b/i;->b(Lcom/tencent/android/tpush/stat/b/d;)V

    .line 373
    return-void
.end method
